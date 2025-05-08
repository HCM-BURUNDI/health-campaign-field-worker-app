import 'dart:async';

import 'package:digit_data_model/data_model.dart';
import 'package:digit_data_model/utils/utils.dart';
import 'package:inventory_management/data/repositories/local/stock.dart';
import 'package:inventory_management/models/entities/stock.dart';

class CustomStockLocalRepository extends StockLocalRepository {
  CustomStockLocalRepository(super.sql, super.opLogManager);

  FutureOr<List<StockModel>> customSearch(
    StockSearchModel query, [
    String? userId,
  ]) async {
    return retryLocalCallOperation<List<StockModel>>(() async {
      var results = [];
      final selectQuery = sql.select(sql.stock).join([]);
      results = await (selectQuery
            ..where(
              buildAnd(
                [
                  if (query.id != null) sql.stock.id.equals(query.id!),
                  if (query.receiverId != null)
                    sql.stock.receiverId.equals(query.receiverId!),
                  if (query.senderId != null)
                    sql.stock.senderId.equals(query.senderId!),
                  if (query.productVariantId != null)
                    sql.stock.productVariantId.equals(
                      query.productVariantId!,
                    ),
                  if (query.clientReferenceId != null)
                    sql.stock.clientReferenceId.isIn(
                      query.clientReferenceId!,
                    ),
                  if (userId != null)
                    sql.stock.auditCreatedBy.equals(
                      userId,
                    ),
                  if (query.transactionType != null)
                    sql.stock.transactionType.isIn(
                      query.transactionType!,
                    ),
                  if (query.transactionReason != null &&
                      query.transactionReason!.isNotEmpty)
                    sql.stock.transactionReason.isIn(
                      query.transactionReason!,
                    ),
                ],
              ),
            ))
          .get();
      return results.map((e) {
        final data = e.readTable(sql.stock);

        final createdBy = data.auditCreatedBy;
        final createdTime = data.auditCreatedTime;

        return StockModel(
          id: data.id,
          tenantId: data.tenantId,
          facilityId: data.facilityId,
          productVariantId: data.productVariantId,
          receiverId: data.receiverId,
          senderId: data.senderId,
          receiverType: data.receiverType,
          senderType: data.senderType,
          referenceId: data.referenceId,
          referenceIdType: data.referenceIdType,
          transactionType: data.transactionType,
          transactionReason: data.transactionReason,
          transactingPartyId: data.transactingPartyId,
          transactingPartyType: data.transactingPartyType,
          quantity: data.quantity,
          wayBillNumber: data.waybillNumber,
          clientReferenceId: data.clientReferenceId,
          isDeleted: data.isDeleted,
          rowVersion: data.rowVersion,
          auditDetails: createdTime == null || createdBy == null
              ? null
              : AuditDetails(createdTime: createdTime, createdBy: createdBy),
          clientAuditDetails: createdTime == null || createdBy == null
              ? null
              : ClientAuditDetails(
                  createdTime: data.clientCreatedTime!,
                  createdBy: data.clientCreatedBy!,
                  lastModifiedBy: data.clientModifiedBy,
                  lastModifiedTime: data.clientModifiedTime,
                ),
          additionalFields:
              StockAdditionalFieldsMapper.fromJson(data.additionalFields),
        );
      }).toList();
    });
  }
}
