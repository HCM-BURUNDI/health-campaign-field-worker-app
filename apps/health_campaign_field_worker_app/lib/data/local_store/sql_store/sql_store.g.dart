// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sql_store.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Addres extends DataClass implements Insertable<Addres> {
  final String? id;
  final String? relatedClientReferenceId;
  final String? doorNo;
  final double? latitude;
  final double? longitude;
  final double? locationAccuracy;
  final String? addressLine1;
  final String? addressLine2;
  final String? landmark;
  final String? city;
  final String? pincode;
  final String? buildingName;
  final String? street;
  final String? boundaryType;
  final String? boundary;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? localityBoundaryCode;
  final String? localityBoundaryName;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final AddressType? type;
  final String? additionalFields;
  Addres(
      {this.id,
      this.relatedClientReferenceId,
      this.doorNo,
      this.latitude,
      this.longitude,
      this.locationAccuracy,
      this.addressLine1,
      this.addressLine2,
      this.landmark,
      this.city,
      this.pincode,
      this.buildingName,
      this.street,
      this.boundaryType,
      this.boundary,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.localityBoundaryCode,
      this.localityBoundaryName,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.type,
      this.additionalFields});
  factory Addres.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Addres(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      relatedClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}related_client_reference_id']),
      doorNo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}door_no']),
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      locationAccuracy: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location_accuracy']),
      addressLine1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address_line1']),
      addressLine2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address_line2']),
      landmark: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}landmark']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city']),
      pincode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pincode']),
      buildingName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}building_name']),
      street: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}street']),
      boundaryType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}boundary_type']),
      boundary: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}boundary']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      localityBoundaryCode: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}locality_boundary_code']),
      localityBoundaryName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}locality_boundary_name']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      type: $AddressTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || relatedClientReferenceId != null) {
      map['related_client_reference_id'] =
          Variable<String?>(relatedClientReferenceId);
    }
    if (!nullToAbsent || doorNo != null) {
      map['door_no'] = Variable<String?>(doorNo);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double?>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double?>(longitude);
    }
    if (!nullToAbsent || locationAccuracy != null) {
      map['location_accuracy'] = Variable<double?>(locationAccuracy);
    }
    if (!nullToAbsent || addressLine1 != null) {
      map['address_line1'] = Variable<String?>(addressLine1);
    }
    if (!nullToAbsent || addressLine2 != null) {
      map['address_line2'] = Variable<String?>(addressLine2);
    }
    if (!nullToAbsent || landmark != null) {
      map['landmark'] = Variable<String?>(landmark);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String?>(city);
    }
    if (!nullToAbsent || pincode != null) {
      map['pincode'] = Variable<String?>(pincode);
    }
    if (!nullToAbsent || buildingName != null) {
      map['building_name'] = Variable<String?>(buildingName);
    }
    if (!nullToAbsent || street != null) {
      map['street'] = Variable<String?>(street);
    }
    if (!nullToAbsent || boundaryType != null) {
      map['boundary_type'] = Variable<String?>(boundaryType);
    }
    if (!nullToAbsent || boundary != null) {
      map['boundary'] = Variable<String?>(boundary);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || localityBoundaryCode != null) {
      map['locality_boundary_code'] = Variable<String?>(localityBoundaryCode);
    }
    if (!nullToAbsent || localityBoundaryName != null) {
      map['locality_boundary_name'] = Variable<String?>(localityBoundaryName);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || type != null) {
      final converter = $AddressTable.$converter0;
      map['type'] = Variable<int?>(converter.mapToSql(type));
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  AddressCompanion toCompanion(bool nullToAbsent) {
    return AddressCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      relatedClientReferenceId: relatedClientReferenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(relatedClientReferenceId),
      doorNo:
          doorNo == null && nullToAbsent ? const Value.absent() : Value(doorNo),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      locationAccuracy: locationAccuracy == null && nullToAbsent
          ? const Value.absent()
          : Value(locationAccuracy),
      addressLine1: addressLine1 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine1),
      addressLine2: addressLine2 == null && nullToAbsent
          ? const Value.absent()
          : Value(addressLine2),
      landmark: landmark == null && nullToAbsent
          ? const Value.absent()
          : Value(landmark),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      pincode: pincode == null && nullToAbsent
          ? const Value.absent()
          : Value(pincode),
      buildingName: buildingName == null && nullToAbsent
          ? const Value.absent()
          : Value(buildingName),
      street:
          street == null && nullToAbsent ? const Value.absent() : Value(street),
      boundaryType: boundaryType == null && nullToAbsent
          ? const Value.absent()
          : Value(boundaryType),
      boundary: boundary == null && nullToAbsent
          ? const Value.absent()
          : Value(boundary),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      localityBoundaryCode: localityBoundaryCode == null && nullToAbsent
          ? const Value.absent()
          : Value(localityBoundaryCode),
      localityBoundaryName: localityBoundaryName == null && nullToAbsent
          ? const Value.absent()
          : Value(localityBoundaryName),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory Addres.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Addres(
      id: serializer.fromJson<String?>(json['id']),
      relatedClientReferenceId:
          serializer.fromJson<String?>(json['relatedClientReferenceId']),
      doorNo: serializer.fromJson<String?>(json['doorNo']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      locationAccuracy: serializer.fromJson<double?>(json['locationAccuracy']),
      addressLine1: serializer.fromJson<String?>(json['addressLine1']),
      addressLine2: serializer.fromJson<String?>(json['addressLine2']),
      landmark: serializer.fromJson<String?>(json['landmark']),
      city: serializer.fromJson<String?>(json['city']),
      pincode: serializer.fromJson<String?>(json['pincode']),
      buildingName: serializer.fromJson<String?>(json['buildingName']),
      street: serializer.fromJson<String?>(json['street']),
      boundaryType: serializer.fromJson<String?>(json['boundaryType']),
      boundary: serializer.fromJson<String?>(json['boundary']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      localityBoundaryCode:
          serializer.fromJson<String?>(json['localityBoundaryCode']),
      localityBoundaryName:
          serializer.fromJson<String?>(json['localityBoundaryName']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      type: serializer.fromJson<AddressType?>(json['type']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'relatedClientReferenceId':
          serializer.toJson<String?>(relatedClientReferenceId),
      'doorNo': serializer.toJson<String?>(doorNo),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'locationAccuracy': serializer.toJson<double?>(locationAccuracy),
      'addressLine1': serializer.toJson<String?>(addressLine1),
      'addressLine2': serializer.toJson<String?>(addressLine2),
      'landmark': serializer.toJson<String?>(landmark),
      'city': serializer.toJson<String?>(city),
      'pincode': serializer.toJson<String?>(pincode),
      'buildingName': serializer.toJson<String?>(buildingName),
      'street': serializer.toJson<String?>(street),
      'boundaryType': serializer.toJson<String?>(boundaryType),
      'boundary': serializer.toJson<String?>(boundary),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'localityBoundaryCode': serializer.toJson<String?>(localityBoundaryCode),
      'localityBoundaryName': serializer.toJson<String?>(localityBoundaryName),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'type': serializer.toJson<AddressType?>(type),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  Addres copyWith(
          {String? id,
          String? relatedClientReferenceId,
          String? doorNo,
          double? latitude,
          double? longitude,
          double? locationAccuracy,
          String? addressLine1,
          String? addressLine2,
          String? landmark,
          String? city,
          String? pincode,
          String? buildingName,
          String? street,
          String? boundaryType,
          String? boundary,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? localityBoundaryCode,
          String? localityBoundaryName,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          AddressType? type,
          String? additionalFields}) =>
      Addres(
        id: id ?? this.id,
        relatedClientReferenceId:
            relatedClientReferenceId ?? this.relatedClientReferenceId,
        doorNo: doorNo ?? this.doorNo,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        locationAccuracy: locationAccuracy ?? this.locationAccuracy,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        landmark: landmark ?? this.landmark,
        city: city ?? this.city,
        pincode: pincode ?? this.pincode,
        buildingName: buildingName ?? this.buildingName,
        street: street ?? this.street,
        boundaryType: boundaryType ?? this.boundaryType,
        boundary: boundary ?? this.boundary,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        localityBoundaryCode: localityBoundaryCode ?? this.localityBoundaryCode,
        localityBoundaryName: localityBoundaryName ?? this.localityBoundaryName,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        type: type ?? this.type,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('Addres(')
          ..write('id: $id, ')
          ..write('relatedClientReferenceId: $relatedClientReferenceId, ')
          ..write('doorNo: $doorNo, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('landmark: $landmark, ')
          ..write('city: $city, ')
          ..write('pincode: $pincode, ')
          ..write('buildingName: $buildingName, ')
          ..write('street: $street, ')
          ..write('boundaryType: $boundaryType, ')
          ..write('boundary: $boundary, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('localityBoundaryCode: $localityBoundaryCode, ')
          ..write('localityBoundaryName: $localityBoundaryName, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('type: $type, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        relatedClientReferenceId,
        doorNo,
        latitude,
        longitude,
        locationAccuracy,
        addressLine1,
        addressLine2,
        landmark,
        city,
        pincode,
        buildingName,
        street,
        boundaryType,
        boundary,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        localityBoundaryCode,
        localityBoundaryName,
        tenantId,
        isDeleted,
        rowVersion,
        type,
        additionalFields
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Addres &&
          other.id == this.id &&
          other.relatedClientReferenceId == this.relatedClientReferenceId &&
          other.doorNo == this.doorNo &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.locationAccuracy == this.locationAccuracy &&
          other.addressLine1 == this.addressLine1 &&
          other.addressLine2 == this.addressLine2 &&
          other.landmark == this.landmark &&
          other.city == this.city &&
          other.pincode == this.pincode &&
          other.buildingName == this.buildingName &&
          other.street == this.street &&
          other.boundaryType == this.boundaryType &&
          other.boundary == this.boundary &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.localityBoundaryCode == this.localityBoundaryCode &&
          other.localityBoundaryName == this.localityBoundaryName &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.type == this.type &&
          other.additionalFields == this.additionalFields);
}

class AddressCompanion extends UpdateCompanion<Addres> {
  final Value<String?> id;
  final Value<String?> relatedClientReferenceId;
  final Value<String?> doorNo;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<double?> locationAccuracy;
  final Value<String?> addressLine1;
  final Value<String?> addressLine2;
  final Value<String?> landmark;
  final Value<String?> city;
  final Value<String?> pincode;
  final Value<String?> buildingName;
  final Value<String?> street;
  final Value<String?> boundaryType;
  final Value<String?> boundary;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> localityBoundaryCode;
  final Value<String?> localityBoundaryName;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<AddressType?> type;
  final Value<String?> additionalFields;
  const AddressCompanion({
    this.id = const Value.absent(),
    this.relatedClientReferenceId = const Value.absent(),
    this.doorNo = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.landmark = const Value.absent(),
    this.city = const Value.absent(),
    this.pincode = const Value.absent(),
    this.buildingName = const Value.absent(),
    this.street = const Value.absent(),
    this.boundaryType = const Value.absent(),
    this.boundary = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.localityBoundaryCode = const Value.absent(),
    this.localityBoundaryName = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.type = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  AddressCompanion.insert({
    this.id = const Value.absent(),
    this.relatedClientReferenceId = const Value.absent(),
    this.doorNo = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.addressLine1 = const Value.absent(),
    this.addressLine2 = const Value.absent(),
    this.landmark = const Value.absent(),
    this.city = const Value.absent(),
    this.pincode = const Value.absent(),
    this.buildingName = const Value.absent(),
    this.street = const Value.absent(),
    this.boundaryType = const Value.absent(),
    this.boundary = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.localityBoundaryCode = const Value.absent(),
    this.localityBoundaryName = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.type = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  static Insertable<Addres> custom({
    Expression<String?>? id,
    Expression<String?>? relatedClientReferenceId,
    Expression<String?>? doorNo,
    Expression<double?>? latitude,
    Expression<double?>? longitude,
    Expression<double?>? locationAccuracy,
    Expression<String?>? addressLine1,
    Expression<String?>? addressLine2,
    Expression<String?>? landmark,
    Expression<String?>? city,
    Expression<String?>? pincode,
    Expression<String?>? buildingName,
    Expression<String?>? street,
    Expression<String?>? boundaryType,
    Expression<String?>? boundary,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? localityBoundaryCode,
    Expression<String?>? localityBoundaryName,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<AddressType?>? type,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (relatedClientReferenceId != null)
        'related_client_reference_id': relatedClientReferenceId,
      if (doorNo != null) 'door_no': doorNo,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (locationAccuracy != null) 'location_accuracy': locationAccuracy,
      if (addressLine1 != null) 'address_line1': addressLine1,
      if (addressLine2 != null) 'address_line2': addressLine2,
      if (landmark != null) 'landmark': landmark,
      if (city != null) 'city': city,
      if (pincode != null) 'pincode': pincode,
      if (buildingName != null) 'building_name': buildingName,
      if (street != null) 'street': street,
      if (boundaryType != null) 'boundary_type': boundaryType,
      if (boundary != null) 'boundary': boundary,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (localityBoundaryCode != null)
        'locality_boundary_code': localityBoundaryCode,
      if (localityBoundaryName != null)
        'locality_boundary_name': localityBoundaryName,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (type != null) 'type': type,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  AddressCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? relatedClientReferenceId,
      Value<String?>? doorNo,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<double?>? locationAccuracy,
      Value<String?>? addressLine1,
      Value<String?>? addressLine2,
      Value<String?>? landmark,
      Value<String?>? city,
      Value<String?>? pincode,
      Value<String?>? buildingName,
      Value<String?>? street,
      Value<String?>? boundaryType,
      Value<String?>? boundary,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? localityBoundaryCode,
      Value<String?>? localityBoundaryName,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<AddressType?>? type,
      Value<String?>? additionalFields}) {
    return AddressCompanion(
      id: id ?? this.id,
      relatedClientReferenceId:
          relatedClientReferenceId ?? this.relatedClientReferenceId,
      doorNo: doorNo ?? this.doorNo,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      locationAccuracy: locationAccuracy ?? this.locationAccuracy,
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      landmark: landmark ?? this.landmark,
      city: city ?? this.city,
      pincode: pincode ?? this.pincode,
      buildingName: buildingName ?? this.buildingName,
      street: street ?? this.street,
      boundaryType: boundaryType ?? this.boundaryType,
      boundary: boundary ?? this.boundary,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      localityBoundaryCode: localityBoundaryCode ?? this.localityBoundaryCode,
      localityBoundaryName: localityBoundaryName ?? this.localityBoundaryName,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      type: type ?? this.type,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (relatedClientReferenceId.present) {
      map['related_client_reference_id'] =
          Variable<String?>(relatedClientReferenceId.value);
    }
    if (doorNo.present) {
      map['door_no'] = Variable<String?>(doorNo.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double?>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double?>(longitude.value);
    }
    if (locationAccuracy.present) {
      map['location_accuracy'] = Variable<double?>(locationAccuracy.value);
    }
    if (addressLine1.present) {
      map['address_line1'] = Variable<String?>(addressLine1.value);
    }
    if (addressLine2.present) {
      map['address_line2'] = Variable<String?>(addressLine2.value);
    }
    if (landmark.present) {
      map['landmark'] = Variable<String?>(landmark.value);
    }
    if (city.present) {
      map['city'] = Variable<String?>(city.value);
    }
    if (pincode.present) {
      map['pincode'] = Variable<String?>(pincode.value);
    }
    if (buildingName.present) {
      map['building_name'] = Variable<String?>(buildingName.value);
    }
    if (street.present) {
      map['street'] = Variable<String?>(street.value);
    }
    if (boundaryType.present) {
      map['boundary_type'] = Variable<String?>(boundaryType.value);
    }
    if (boundary.present) {
      map['boundary'] = Variable<String?>(boundary.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (localityBoundaryCode.present) {
      map['locality_boundary_code'] =
          Variable<String?>(localityBoundaryCode.value);
    }
    if (localityBoundaryName.present) {
      map['locality_boundary_name'] =
          Variable<String?>(localityBoundaryName.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (type.present) {
      final converter = $AddressTable.$converter0;
      map['type'] = Variable<int?>(converter.mapToSql(type.value));
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressCompanion(')
          ..write('id: $id, ')
          ..write('relatedClientReferenceId: $relatedClientReferenceId, ')
          ..write('doorNo: $doorNo, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('addressLine1: $addressLine1, ')
          ..write('addressLine2: $addressLine2, ')
          ..write('landmark: $landmark, ')
          ..write('city: $city, ')
          ..write('pincode: $pincode, ')
          ..write('buildingName: $buildingName, ')
          ..write('street: $street, ')
          ..write('boundaryType: $boundaryType, ')
          ..write('boundary: $boundary, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('localityBoundaryCode: $localityBoundaryCode, ')
          ..write('localityBoundaryName: $localityBoundaryName, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('type: $type, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $AddressTable extends Address with TableInfo<$AddressTable, Addres> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _relatedClientReferenceIdMeta =
      const VerificationMeta('relatedClientReferenceId');
  @override
  late final GeneratedColumn<String?> relatedClientReferenceId =
      GeneratedColumn<String?>('related_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _doorNoMeta = const VerificationMeta('doorNo');
  @override
  late final GeneratedColumn<String?> doorNo = GeneratedColumn<String?>(
      'door_no', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _locationAccuracyMeta =
      const VerificationMeta('locationAccuracy');
  @override
  late final GeneratedColumn<double?> locationAccuracy =
      GeneratedColumn<double?>('location_accuracy', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _addressLine1Meta =
      const VerificationMeta('addressLine1');
  @override
  late final GeneratedColumn<String?> addressLine1 = GeneratedColumn<String?>(
      'address_line1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _addressLine2Meta =
      const VerificationMeta('addressLine2');
  @override
  late final GeneratedColumn<String?> addressLine2 = GeneratedColumn<String?>(
      'address_line2', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _landmarkMeta = const VerificationMeta('landmark');
  @override
  late final GeneratedColumn<String?> landmark = GeneratedColumn<String?>(
      'landmark', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _pincodeMeta = const VerificationMeta('pincode');
  @override
  late final GeneratedColumn<String?> pincode = GeneratedColumn<String?>(
      'pincode', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _buildingNameMeta =
      const VerificationMeta('buildingName');
  @override
  late final GeneratedColumn<String?> buildingName = GeneratedColumn<String?>(
      'building_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String?> street = GeneratedColumn<String?>(
      'street', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _boundaryTypeMeta =
      const VerificationMeta('boundaryType');
  @override
  late final GeneratedColumn<String?> boundaryType = GeneratedColumn<String?>(
      'boundary_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _boundaryMeta = const VerificationMeta('boundary');
  @override
  late final GeneratedColumn<String?> boundary = GeneratedColumn<String?>(
      'boundary', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _localityBoundaryCodeMeta =
      const VerificationMeta('localityBoundaryCode');
  @override
  late final GeneratedColumn<String?> localityBoundaryCode =
      GeneratedColumn<String?>('locality_boundary_code', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _localityBoundaryNameMeta =
      const VerificationMeta('localityBoundaryName');
  @override
  late final GeneratedColumn<String?> localityBoundaryName =
      GeneratedColumn<String?>('locality_boundary_name', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<AddressType?, int?> type =
      GeneratedColumn<int?>('type', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<AddressType?>($AddressTable.$converter0);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        relatedClientReferenceId,
        doorNo,
        latitude,
        longitude,
        locationAccuracy,
        addressLine1,
        addressLine2,
        landmark,
        city,
        pincode,
        buildingName,
        street,
        boundaryType,
        boundary,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        localityBoundaryCode,
        localityBoundaryName,
        tenantId,
        isDeleted,
        rowVersion,
        type,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'address';
  @override
  String get actualTableName => 'address';
  @override
  VerificationContext validateIntegrity(Insertable<Addres> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('related_client_reference_id')) {
      context.handle(
          _relatedClientReferenceIdMeta,
          relatedClientReferenceId.isAcceptableOrUnknown(
              data['related_client_reference_id']!,
              _relatedClientReferenceIdMeta));
    }
    if (data.containsKey('door_no')) {
      context.handle(_doorNoMeta,
          doorNo.isAcceptableOrUnknown(data['door_no']!, _doorNoMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('location_accuracy')) {
      context.handle(
          _locationAccuracyMeta,
          locationAccuracy.isAcceptableOrUnknown(
              data['location_accuracy']!, _locationAccuracyMeta));
    }
    if (data.containsKey('address_line1')) {
      context.handle(
          _addressLine1Meta,
          addressLine1.isAcceptableOrUnknown(
              data['address_line1']!, _addressLine1Meta));
    }
    if (data.containsKey('address_line2')) {
      context.handle(
          _addressLine2Meta,
          addressLine2.isAcceptableOrUnknown(
              data['address_line2']!, _addressLine2Meta));
    }
    if (data.containsKey('landmark')) {
      context.handle(_landmarkMeta,
          landmark.isAcceptableOrUnknown(data['landmark']!, _landmarkMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('pincode')) {
      context.handle(_pincodeMeta,
          pincode.isAcceptableOrUnknown(data['pincode']!, _pincodeMeta));
    }
    if (data.containsKey('building_name')) {
      context.handle(
          _buildingNameMeta,
          buildingName.isAcceptableOrUnknown(
              data['building_name']!, _buildingNameMeta));
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    }
    if (data.containsKey('boundary_type')) {
      context.handle(
          _boundaryTypeMeta,
          boundaryType.isAcceptableOrUnknown(
              data['boundary_type']!, _boundaryTypeMeta));
    }
    if (data.containsKey('boundary')) {
      context.handle(_boundaryMeta,
          boundary.isAcceptableOrUnknown(data['boundary']!, _boundaryMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('locality_boundary_code')) {
      context.handle(
          _localityBoundaryCodeMeta,
          localityBoundaryCode.isAcceptableOrUnknown(
              data['locality_boundary_code']!, _localityBoundaryCodeMeta));
    }
    if (data.containsKey('locality_boundary_name')) {
      context.handle(
          _localityBoundaryNameMeta,
          localityBoundaryName.isAcceptableOrUnknown(
              data['locality_boundary_name']!, _localityBoundaryNameMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {relatedClientReferenceId, auditCreatedBy};
  @override
  Addres map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Addres.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AddressTable createAlias(String alias) {
    return $AddressTable(attachedDatabase, alias);
  }

  static TypeConverter<AddressType?, int> $converter0 =
      const EnumIndexConverter<AddressType>(AddressType.values);
}

class NameData extends DataClass implements Insertable<NameData> {
  final String? id;
  final String? individualClientReferenceId;
  final String? givenName;
  final String? familyName;
  final String? otherNames;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  NameData(
      {this.id,
      this.individualClientReferenceId,
      this.givenName,
      this.familyName,
      this.otherNames,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory NameData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return NameData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      individualClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}individual_client_reference_id']),
      givenName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}given_name']),
      familyName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}family_name']),
      otherNames: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}other_names']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || individualClientReferenceId != null) {
      map['individual_client_reference_id'] =
          Variable<String?>(individualClientReferenceId);
    }
    if (!nullToAbsent || givenName != null) {
      map['given_name'] = Variable<String?>(givenName);
    }
    if (!nullToAbsent || familyName != null) {
      map['family_name'] = Variable<String?>(familyName);
    }
    if (!nullToAbsent || otherNames != null) {
      map['other_names'] = Variable<String?>(otherNames);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  NameCompanion toCompanion(bool nullToAbsent) {
    return NameCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      individualClientReferenceId:
          individualClientReferenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(individualClientReferenceId),
      givenName: givenName == null && nullToAbsent
          ? const Value.absent()
          : Value(givenName),
      familyName: familyName == null && nullToAbsent
          ? const Value.absent()
          : Value(familyName),
      otherNames: otherNames == null && nullToAbsent
          ? const Value.absent()
          : Value(otherNames),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory NameData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NameData(
      id: serializer.fromJson<String?>(json['id']),
      individualClientReferenceId:
          serializer.fromJson<String?>(json['individualClientReferenceId']),
      givenName: serializer.fromJson<String?>(json['givenName']),
      familyName: serializer.fromJson<String?>(json['familyName']),
      otherNames: serializer.fromJson<String?>(json['otherNames']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'individualClientReferenceId':
          serializer.toJson<String?>(individualClientReferenceId),
      'givenName': serializer.toJson<String?>(givenName),
      'familyName': serializer.toJson<String?>(familyName),
      'otherNames': serializer.toJson<String?>(otherNames),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  NameData copyWith(
          {String? id,
          String? individualClientReferenceId,
          String? givenName,
          String? familyName,
          String? otherNames,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      NameData(
        id: id ?? this.id,
        individualClientReferenceId:
            individualClientReferenceId ?? this.individualClientReferenceId,
        givenName: givenName ?? this.givenName,
        familyName: familyName ?? this.familyName,
        otherNames: otherNames ?? this.otherNames,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('NameData(')
          ..write('id: $id, ')
          ..write('individualClientReferenceId: $individualClientReferenceId, ')
          ..write('givenName: $givenName, ')
          ..write('familyName: $familyName, ')
          ..write('otherNames: $otherNames, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      individualClientReferenceId,
      givenName,
      familyName,
      otherNames,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NameData &&
          other.id == this.id &&
          other.individualClientReferenceId ==
              this.individualClientReferenceId &&
          other.givenName == this.givenName &&
          other.familyName == this.familyName &&
          other.otherNames == this.otherNames &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class NameCompanion extends UpdateCompanion<NameData> {
  final Value<String?> id;
  final Value<String?> individualClientReferenceId;
  final Value<String?> givenName;
  final Value<String?> familyName;
  final Value<String?> otherNames;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const NameCompanion({
    this.id = const Value.absent(),
    this.individualClientReferenceId = const Value.absent(),
    this.givenName = const Value.absent(),
    this.familyName = const Value.absent(),
    this.otherNames = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  NameCompanion.insert({
    this.id = const Value.absent(),
    this.individualClientReferenceId = const Value.absent(),
    this.givenName = const Value.absent(),
    this.familyName = const Value.absent(),
    this.otherNames = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  static Insertable<NameData> custom({
    Expression<String?>? id,
    Expression<String?>? individualClientReferenceId,
    Expression<String?>? givenName,
    Expression<String?>? familyName,
    Expression<String?>? otherNames,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (individualClientReferenceId != null)
        'individual_client_reference_id': individualClientReferenceId,
      if (givenName != null) 'given_name': givenName,
      if (familyName != null) 'family_name': familyName,
      if (otherNames != null) 'other_names': otherNames,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  NameCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? individualClientReferenceId,
      Value<String?>? givenName,
      Value<String?>? familyName,
      Value<String?>? otherNames,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return NameCompanion(
      id: id ?? this.id,
      individualClientReferenceId:
          individualClientReferenceId ?? this.individualClientReferenceId,
      givenName: givenName ?? this.givenName,
      familyName: familyName ?? this.familyName,
      otherNames: otherNames ?? this.otherNames,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (individualClientReferenceId.present) {
      map['individual_client_reference_id'] =
          Variable<String?>(individualClientReferenceId.value);
    }
    if (givenName.present) {
      map['given_name'] = Variable<String?>(givenName.value);
    }
    if (familyName.present) {
      map['family_name'] = Variable<String?>(familyName.value);
    }
    if (otherNames.present) {
      map['other_names'] = Variable<String?>(otherNames.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NameCompanion(')
          ..write('id: $id, ')
          ..write('individualClientReferenceId: $individualClientReferenceId, ')
          ..write('givenName: $givenName, ')
          ..write('familyName: $familyName, ')
          ..write('otherNames: $otherNames, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $NameTable extends Name with TableInfo<$NameTable, NameData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NameTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _individualClientReferenceIdMeta =
      const VerificationMeta('individualClientReferenceId');
  @override
  late final GeneratedColumn<String?> individualClientReferenceId =
      GeneratedColumn<String?>(
          'individual_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _givenNameMeta = const VerificationMeta('givenName');
  @override
  late final GeneratedColumn<String?> givenName = GeneratedColumn<String?>(
      'given_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _familyNameMeta = const VerificationMeta('familyName');
  @override
  late final GeneratedColumn<String?> familyName = GeneratedColumn<String?>(
      'family_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _otherNamesMeta = const VerificationMeta('otherNames');
  @override
  late final GeneratedColumn<String?> otherNames = GeneratedColumn<String?>(
      'other_names', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        individualClientReferenceId,
        givenName,
        familyName,
        otherNames,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'name';
  @override
  String get actualTableName => 'name';
  @override
  VerificationContext validateIntegrity(Insertable<NameData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('individual_client_reference_id')) {
      context.handle(
          _individualClientReferenceIdMeta,
          individualClientReferenceId.isAcceptableOrUnknown(
              data['individual_client_reference_id']!,
              _individualClientReferenceIdMeta));
    }
    if (data.containsKey('given_name')) {
      context.handle(_givenNameMeta,
          givenName.isAcceptableOrUnknown(data['given_name']!, _givenNameMeta));
    }
    if (data.containsKey('family_name')) {
      context.handle(
          _familyNameMeta,
          familyName.isAcceptableOrUnknown(
              data['family_name']!, _familyNameMeta));
    }
    if (data.containsKey('other_names')) {
      context.handle(
          _otherNamesMeta,
          otherNames.isAcceptableOrUnknown(
              data['other_names']!, _otherNamesMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {individualClientReferenceId, auditCreatedBy};
  @override
  NameData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return NameData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NameTable createAlias(String alias) {
    return $NameTable(attachedDatabase, alias);
  }
}

class BoundaryData extends DataClass implements Insertable<BoundaryData> {
  final String? code;
  final String? name;
  final String? label;
  final String? latitude;
  final String? longitude;
  final String? materializedPath;
  final String? auditCreatedBy;
  final int? boundaryNum;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  BoundaryData(
      {this.code,
      this.name,
      this.label,
      this.latitude,
      this.longitude,
      this.materializedPath,
      this.auditCreatedBy,
      this.boundaryNum,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion});
  factory BoundaryData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return BoundaryData(
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      label: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}label']),
      latitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      materializedPath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}materialized_path']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      boundaryNum: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}boundary_num']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String?>(label);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<String?>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<String?>(longitude);
    }
    if (!nullToAbsent || materializedPath != null) {
      map['materialized_path'] = Variable<String?>(materializedPath);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || boundaryNum != null) {
      map['boundary_num'] = Variable<int?>(boundaryNum);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    return map;
  }

  BoundaryCompanion toCompanion(bool nullToAbsent) {
    return BoundaryCompanion(
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      materializedPath: materializedPath == null && nullToAbsent
          ? const Value.absent()
          : Value(materializedPath),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      boundaryNum: boundaryNum == null && nullToAbsent
          ? const Value.absent()
          : Value(boundaryNum),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
    );
  }

  factory BoundaryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BoundaryData(
      code: serializer.fromJson<String?>(json['code']),
      name: serializer.fromJson<String?>(json['name']),
      label: serializer.fromJson<String?>(json['label']),
      latitude: serializer.fromJson<String?>(json['latitude']),
      longitude: serializer.fromJson<String?>(json['longitude']),
      materializedPath: serializer.fromJson<String?>(json['materializedPath']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      boundaryNum: serializer.fromJson<int?>(json['boundaryNum']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String?>(code),
      'name': serializer.toJson<String?>(name),
      'label': serializer.toJson<String?>(label),
      'latitude': serializer.toJson<String?>(latitude),
      'longitude': serializer.toJson<String?>(longitude),
      'materializedPath': serializer.toJson<String?>(materializedPath),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'boundaryNum': serializer.toJson<int?>(boundaryNum),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
    };
  }

  BoundaryData copyWith(
          {String? code,
          String? name,
          String? label,
          String? latitude,
          String? longitude,
          String? materializedPath,
          String? auditCreatedBy,
          int? boundaryNum,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion}) =>
      BoundaryData(
        code: code ?? this.code,
        name: name ?? this.name,
        label: label ?? this.label,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        materializedPath: materializedPath ?? this.materializedPath,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        boundaryNum: boundaryNum ?? this.boundaryNum,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
      );
  @override
  String toString() {
    return (StringBuffer('BoundaryData(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('label: $label, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('materializedPath: $materializedPath, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('boundaryNum: $boundaryNum, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      code,
      name,
      label,
      latitude,
      longitude,
      materializedPath,
      auditCreatedBy,
      boundaryNum,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BoundaryData &&
          other.code == this.code &&
          other.name == this.name &&
          other.label == this.label &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.materializedPath == this.materializedPath &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.boundaryNum == this.boundaryNum &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion);
}

class BoundaryCompanion extends UpdateCompanion<BoundaryData> {
  final Value<String?> code;
  final Value<String?> name;
  final Value<String?> label;
  final Value<String?> latitude;
  final Value<String?> longitude;
  final Value<String?> materializedPath;
  final Value<String?> auditCreatedBy;
  final Value<int?> boundaryNum;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  const BoundaryCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.label = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.materializedPath = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.boundaryNum = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
  });
  BoundaryCompanion.insert({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.label = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.materializedPath = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.boundaryNum = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
  });
  static Insertable<BoundaryData> custom({
    Expression<String?>? code,
    Expression<String?>? name,
    Expression<String?>? label,
    Expression<String?>? latitude,
    Expression<String?>? longitude,
    Expression<String?>? materializedPath,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? boundaryNum,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (label != null) 'label': label,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (materializedPath != null) 'materialized_path': materializedPath,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (boundaryNum != null) 'boundary_num': boundaryNum,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
    });
  }

  BoundaryCompanion copyWith(
      {Value<String?>? code,
      Value<String?>? name,
      Value<String?>? label,
      Value<String?>? latitude,
      Value<String?>? longitude,
      Value<String?>? materializedPath,
      Value<String?>? auditCreatedBy,
      Value<int?>? boundaryNum,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion}) {
    return BoundaryCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      label: label ?? this.label,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      materializedPath: materializedPath ?? this.materializedPath,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      boundaryNum: boundaryNum ?? this.boundaryNum,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (label.present) {
      map['label'] = Variable<String?>(label.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String?>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String?>(longitude.value);
    }
    if (materializedPath.present) {
      map['materialized_path'] = Variable<String?>(materializedPath.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (boundaryNum.present) {
      map['boundary_num'] = Variable<int?>(boundaryNum.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BoundaryCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('label: $label, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('materializedPath: $materializedPath, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('boundaryNum: $boundaryNum, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion')
          ..write(')'))
        .toString();
  }
}

class $BoundaryTable extends Boundary
    with TableInfo<$BoundaryTable, BoundaryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BoundaryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String?> label = GeneratedColumn<String?>(
      'label', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<String?> latitude = GeneratedColumn<String?>(
      'latitude', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<String?> longitude = GeneratedColumn<String?>(
      'longitude', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _materializedPathMeta =
      const VerificationMeta('materializedPath');
  @override
  late final GeneratedColumn<String?> materializedPath =
      GeneratedColumn<String?>('materialized_path', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _boundaryNumMeta =
      const VerificationMeta('boundaryNum');
  @override
  late final GeneratedColumn<int?> boundaryNum = GeneratedColumn<int?>(
      'boundary_num', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))');
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        code,
        name,
        label,
        latitude,
        longitude,
        materializedPath,
        auditCreatedBy,
        boundaryNum,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion
      ];
  @override
  String get aliasedName => _alias ?? 'boundary';
  @override
  String get actualTableName => 'boundary';
  @override
  VerificationContext validateIntegrity(Insertable<BoundaryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('materialized_path')) {
      context.handle(
          _materializedPathMeta,
          materializedPath.isAcceptableOrUnknown(
              data['materialized_path']!, _materializedPathMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('boundary_num')) {
      context.handle(
          _boundaryNumMeta,
          boundaryNum.isAcceptableOrUnknown(
              data['boundary_num']!, _boundaryNumMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  BoundaryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return BoundaryData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BoundaryTable createAlias(String alias) {
    return $BoundaryTable(attachedDatabase, alias);
  }
}

class DocumentData extends DataClass implements Insertable<DocumentData> {
  final String? id;
  final String? documentType;
  final String? fileStoreId;
  final String? documentUid;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  DocumentData(
      {this.id,
      this.documentType,
      this.fileStoreId,
      this.documentUid,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory DocumentData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DocumentData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      documentType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}document_type']),
      fileStoreId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file_store_id']),
      documentUid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}document_uid']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || documentType != null) {
      map['document_type'] = Variable<String?>(documentType);
    }
    if (!nullToAbsent || fileStoreId != null) {
      map['file_store_id'] = Variable<String?>(fileStoreId);
    }
    if (!nullToAbsent || documentUid != null) {
      map['document_uid'] = Variable<String?>(documentUid);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  DocumentCompanion toCompanion(bool nullToAbsent) {
    return DocumentCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      documentType: documentType == null && nullToAbsent
          ? const Value.absent()
          : Value(documentType),
      fileStoreId: fileStoreId == null && nullToAbsent
          ? const Value.absent()
          : Value(fileStoreId),
      documentUid: documentUid == null && nullToAbsent
          ? const Value.absent()
          : Value(documentUid),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory DocumentData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocumentData(
      id: serializer.fromJson<String?>(json['id']),
      documentType: serializer.fromJson<String?>(json['documentType']),
      fileStoreId: serializer.fromJson<String?>(json['fileStoreId']),
      documentUid: serializer.fromJson<String?>(json['documentUid']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'documentType': serializer.toJson<String?>(documentType),
      'fileStoreId': serializer.toJson<String?>(fileStoreId),
      'documentUid': serializer.toJson<String?>(documentUid),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  DocumentData copyWith(
          {String? id,
          String? documentType,
          String? fileStoreId,
          String? documentUid,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      DocumentData(
        id: id ?? this.id,
        documentType: documentType ?? this.documentType,
        fileStoreId: fileStoreId ?? this.fileStoreId,
        documentUid: documentUid ?? this.documentUid,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('DocumentData(')
          ..write('id: $id, ')
          ..write('documentType: $documentType, ')
          ..write('fileStoreId: $fileStoreId, ')
          ..write('documentUid: $documentUid, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      documentType,
      fileStoreId,
      documentUid,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentData &&
          other.id == this.id &&
          other.documentType == this.documentType &&
          other.fileStoreId == this.fileStoreId &&
          other.documentUid == this.documentUid &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class DocumentCompanion extends UpdateCompanion<DocumentData> {
  final Value<String?> id;
  final Value<String?> documentType;
  final Value<String?> fileStoreId;
  final Value<String?> documentUid;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const DocumentCompanion({
    this.id = const Value.absent(),
    this.documentType = const Value.absent(),
    this.fileStoreId = const Value.absent(),
    this.documentUid = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  DocumentCompanion.insert({
    this.id = const Value.absent(),
    this.documentType = const Value.absent(),
    this.fileStoreId = const Value.absent(),
    this.documentUid = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<DocumentData> custom({
    Expression<String?>? id,
    Expression<String?>? documentType,
    Expression<String?>? fileStoreId,
    Expression<String?>? documentUid,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (documentType != null) 'document_type': documentType,
      if (fileStoreId != null) 'file_store_id': fileStoreId,
      if (documentUid != null) 'document_uid': documentUid,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  DocumentCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? documentType,
      Value<String?>? fileStoreId,
      Value<String?>? documentUid,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return DocumentCompanion(
      id: id ?? this.id,
      documentType: documentType ?? this.documentType,
      fileStoreId: fileStoreId ?? this.fileStoreId,
      documentUid: documentUid ?? this.documentUid,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (documentType.present) {
      map['document_type'] = Variable<String?>(documentType.value);
    }
    if (fileStoreId.present) {
      map['file_store_id'] = Variable<String?>(fileStoreId.value);
    }
    if (documentUid.present) {
      map['document_uid'] = Variable<String?>(documentUid.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentCompanion(')
          ..write('id: $id, ')
          ..write('documentType: $documentType, ')
          ..write('fileStoreId: $fileStoreId, ')
          ..write('documentUid: $documentUid, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $DocumentTable extends Document
    with TableInfo<$DocumentTable, DocumentData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _documentTypeMeta =
      const VerificationMeta('documentType');
  @override
  late final GeneratedColumn<String?> documentType = GeneratedColumn<String?>(
      'document_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fileStoreIdMeta =
      const VerificationMeta('fileStoreId');
  @override
  late final GeneratedColumn<String?> fileStoreId = GeneratedColumn<String?>(
      'file_store_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _documentUidMeta =
      const VerificationMeta('documentUid');
  @override
  late final GeneratedColumn<String?> documentUid = GeneratedColumn<String?>(
      'document_uid', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        documentType,
        fileStoreId,
        documentUid,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'document';
  @override
  String get actualTableName => 'document';
  @override
  VerificationContext validateIntegrity(Insertable<DocumentData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('document_type')) {
      context.handle(
          _documentTypeMeta,
          documentType.isAcceptableOrUnknown(
              data['document_type']!, _documentTypeMeta));
    }
    if (data.containsKey('file_store_id')) {
      context.handle(
          _fileStoreIdMeta,
          fileStoreId.isAcceptableOrUnknown(
              data['file_store_id']!, _fileStoreIdMeta));
    }
    if (data.containsKey('document_uid')) {
      context.handle(
          _documentUidMeta,
          documentUid.isAcceptableOrUnknown(
              data['document_uid']!, _documentUidMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  DocumentData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DocumentData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DocumentTable createAlias(String alias) {
    return $DocumentTable(attachedDatabase, alias);
  }
}

class FacilityData extends DataClass implements Insertable<FacilityData> {
  final String id;
  final bool? isPermanent;
  final String? usage;
  final int? storageCapacity;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  FacilityData(
      {required this.id,
      this.isPermanent,
      this.usage,
      this.storageCapacity,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory FacilityData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FacilityData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      isPermanent: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_permanent']),
      usage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}usage']),
      storageCapacity: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}storage_capacity']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || isPermanent != null) {
      map['is_permanent'] = Variable<bool?>(isPermanent);
    }
    if (!nullToAbsent || usage != null) {
      map['usage'] = Variable<String?>(usage);
    }
    if (!nullToAbsent || storageCapacity != null) {
      map['storage_capacity'] = Variable<int?>(storageCapacity);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  FacilityCompanion toCompanion(bool nullToAbsent) {
    return FacilityCompanion(
      id: Value(id),
      isPermanent: isPermanent == null && nullToAbsent
          ? const Value.absent()
          : Value(isPermanent),
      usage:
          usage == null && nullToAbsent ? const Value.absent() : Value(usage),
      storageCapacity: storageCapacity == null && nullToAbsent
          ? const Value.absent()
          : Value(storageCapacity),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory FacilityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FacilityData(
      id: serializer.fromJson<String>(json['id']),
      isPermanent: serializer.fromJson<bool?>(json['isPermanent']),
      usage: serializer.fromJson<String?>(json['usage']),
      storageCapacity: serializer.fromJson<int?>(json['storageCapacity']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'isPermanent': serializer.toJson<bool?>(isPermanent),
      'usage': serializer.toJson<String?>(usage),
      'storageCapacity': serializer.toJson<int?>(storageCapacity),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  FacilityData copyWith(
          {String? id,
          bool? isPermanent,
          String? usage,
          int? storageCapacity,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      FacilityData(
        id: id ?? this.id,
        isPermanent: isPermanent ?? this.isPermanent,
        usage: usage ?? this.usage,
        storageCapacity: storageCapacity ?? this.storageCapacity,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('FacilityData(')
          ..write('id: $id, ')
          ..write('isPermanent: $isPermanent, ')
          ..write('usage: $usage, ')
          ..write('storageCapacity: $storageCapacity, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      isPermanent,
      usage,
      storageCapacity,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FacilityData &&
          other.id == this.id &&
          other.isPermanent == this.isPermanent &&
          other.usage == this.usage &&
          other.storageCapacity == this.storageCapacity &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class FacilityCompanion extends UpdateCompanion<FacilityData> {
  final Value<String> id;
  final Value<bool?> isPermanent;
  final Value<String?> usage;
  final Value<int?> storageCapacity;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const FacilityCompanion({
    this.id = const Value.absent(),
    this.isPermanent = const Value.absent(),
    this.usage = const Value.absent(),
    this.storageCapacity = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  FacilityCompanion.insert({
    required String id,
    this.isPermanent = const Value.absent(),
    this.usage = const Value.absent(),
    this.storageCapacity = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FacilityData> custom({
    Expression<String>? id,
    Expression<bool?>? isPermanent,
    Expression<String?>? usage,
    Expression<int?>? storageCapacity,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isPermanent != null) 'is_permanent': isPermanent,
      if (usage != null) 'usage': usage,
      if (storageCapacity != null) 'storage_capacity': storageCapacity,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  FacilityCompanion copyWith(
      {Value<String>? id,
      Value<bool?>? isPermanent,
      Value<String?>? usage,
      Value<int?>? storageCapacity,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return FacilityCompanion(
      id: id ?? this.id,
      isPermanent: isPermanent ?? this.isPermanent,
      usage: usage ?? this.usage,
      storageCapacity: storageCapacity ?? this.storageCapacity,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (isPermanent.present) {
      map['is_permanent'] = Variable<bool?>(isPermanent.value);
    }
    if (usage.present) {
      map['usage'] = Variable<String?>(usage.value);
    }
    if (storageCapacity.present) {
      map['storage_capacity'] = Variable<int?>(storageCapacity.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FacilityCompanion(')
          ..write('id: $id, ')
          ..write('isPermanent: $isPermanent, ')
          ..write('usage: $usage, ')
          ..write('storageCapacity: $storageCapacity, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $FacilityTable extends Facility
    with TableInfo<$FacilityTable, FacilityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FacilityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isPermanentMeta =
      const VerificationMeta('isPermanent');
  @override
  late final GeneratedColumn<bool?> isPermanent = GeneratedColumn<bool?>(
      'is_permanent', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_permanent IN (0, 1))');
  final VerificationMeta _usageMeta = const VerificationMeta('usage');
  @override
  late final GeneratedColumn<String?> usage = GeneratedColumn<String?>(
      'usage', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _storageCapacityMeta =
      const VerificationMeta('storageCapacity');
  @override
  late final GeneratedColumn<int?> storageCapacity = GeneratedColumn<int?>(
      'storage_capacity', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isPermanent,
        usage,
        storageCapacity,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'facility';
  @override
  String get actualTableName => 'facility';
  @override
  VerificationContext validateIntegrity(Insertable<FacilityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('is_permanent')) {
      context.handle(
          _isPermanentMeta,
          isPermanent.isAcceptableOrUnknown(
              data['is_permanent']!, _isPermanentMeta));
    }
    if (data.containsKey('usage')) {
      context.handle(
          _usageMeta, usage.isAcceptableOrUnknown(data['usage']!, _usageMeta));
    }
    if (data.containsKey('storage_capacity')) {
      context.handle(
          _storageCapacityMeta,
          storageCapacity.isAcceptableOrUnknown(
              data['storage_capacity']!, _storageCapacityMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  FacilityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FacilityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FacilityTable createAlias(String alias) {
    return $FacilityTable(attachedDatabase, alias);
  }
}

class HouseholdData extends DataClass implements Insertable<HouseholdData> {
  final String? id;
  final int? memberCount;
  final double? latitude;
  final double? longitude;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  HouseholdData(
      {this.id,
      this.memberCount,
      this.latitude,
      this.longitude,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory HouseholdData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HouseholdData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      memberCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}member_count']),
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || memberCount != null) {
      map['member_count'] = Variable<int?>(memberCount);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double?>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double?>(longitude);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  HouseholdCompanion toCompanion(bool nullToAbsent) {
    return HouseholdCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      memberCount: memberCount == null && nullToAbsent
          ? const Value.absent()
          : Value(memberCount),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory HouseholdData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HouseholdData(
      id: serializer.fromJson<String?>(json['id']),
      memberCount: serializer.fromJson<int?>(json['memberCount']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'memberCount': serializer.toJson<int?>(memberCount),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  HouseholdData copyWith(
          {String? id,
          int? memberCount,
          double? latitude,
          double? longitude,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      HouseholdData(
        id: id ?? this.id,
        memberCount: memberCount ?? this.memberCount,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('HouseholdData(')
          ..write('id: $id, ')
          ..write('memberCount: $memberCount, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      memberCount,
      latitude,
      longitude,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HouseholdData &&
          other.id == this.id &&
          other.memberCount == this.memberCount &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class HouseholdCompanion extends UpdateCompanion<HouseholdData> {
  final Value<String?> id;
  final Value<int?> memberCount;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const HouseholdCompanion({
    this.id = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  HouseholdCompanion.insert({
    this.id = const Value.absent(),
    this.memberCount = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<HouseholdData> custom({
    Expression<String?>? id,
    Expression<int?>? memberCount,
    Expression<double?>? latitude,
    Expression<double?>? longitude,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (memberCount != null) 'member_count': memberCount,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  HouseholdCompanion copyWith(
      {Value<String?>? id,
      Value<int?>? memberCount,
      Value<double?>? latitude,
      Value<double?>? longitude,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return HouseholdCompanion(
      id: id ?? this.id,
      memberCount: memberCount ?? this.memberCount,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (memberCount.present) {
      map['member_count'] = Variable<int?>(memberCount.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double?>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double?>(longitude.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HouseholdCompanion(')
          ..write('id: $id, ')
          ..write('memberCount: $memberCount, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $HouseholdTable extends Household
    with TableInfo<$HouseholdTable, HouseholdData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HouseholdTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _memberCountMeta =
      const VerificationMeta('memberCount');
  @override
  late final GeneratedColumn<int?> memberCount = GeneratedColumn<int?>(
      'member_count', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        memberCount,
        latitude,
        longitude,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'household';
  @override
  String get actualTableName => 'household';
  @override
  VerificationContext validateIntegrity(Insertable<HouseholdData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('member_count')) {
      context.handle(
          _memberCountMeta,
          memberCount.isAcceptableOrUnknown(
              data['member_count']!, _memberCountMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  HouseholdData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return HouseholdData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HouseholdTable createAlias(String alias) {
    return $HouseholdTable(attachedDatabase, alias);
  }
}

class HouseholdMemberData extends DataClass
    implements Insertable<HouseholdMemberData> {
  final String? id;
  final String? householdId;
  final String? householdClientReferenceId;
  final String? individualId;
  final String? individualClientReferenceId;
  final bool isHeadOfHousehold;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  HouseholdMemberData(
      {this.id,
      this.householdId,
      this.householdClientReferenceId,
      this.individualId,
      this.individualClientReferenceId,
      required this.isHeadOfHousehold,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory HouseholdMemberData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return HouseholdMemberData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      householdId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}household_id']),
      householdClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}household_client_reference_id']),
      individualId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}individual_id']),
      individualClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}individual_client_reference_id']),
      isHeadOfHousehold: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_head_of_household'])!,
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || householdId != null) {
      map['household_id'] = Variable<String?>(householdId);
    }
    if (!nullToAbsent || householdClientReferenceId != null) {
      map['household_client_reference_id'] =
          Variable<String?>(householdClientReferenceId);
    }
    if (!nullToAbsent || individualId != null) {
      map['individual_id'] = Variable<String?>(individualId);
    }
    if (!nullToAbsent || individualClientReferenceId != null) {
      map['individual_client_reference_id'] =
          Variable<String?>(individualClientReferenceId);
    }
    map['is_head_of_household'] = Variable<bool>(isHeadOfHousehold);
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  HouseholdMemberCompanion toCompanion(bool nullToAbsent) {
    return HouseholdMemberCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      householdId: householdId == null && nullToAbsent
          ? const Value.absent()
          : Value(householdId),
      householdClientReferenceId:
          householdClientReferenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(householdClientReferenceId),
      individualId: individualId == null && nullToAbsent
          ? const Value.absent()
          : Value(individualId),
      individualClientReferenceId:
          individualClientReferenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(individualClientReferenceId),
      isHeadOfHousehold: Value(isHeadOfHousehold),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory HouseholdMemberData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HouseholdMemberData(
      id: serializer.fromJson<String?>(json['id']),
      householdId: serializer.fromJson<String?>(json['householdId']),
      householdClientReferenceId:
          serializer.fromJson<String?>(json['householdClientReferenceId']),
      individualId: serializer.fromJson<String?>(json['individualId']),
      individualClientReferenceId:
          serializer.fromJson<String?>(json['individualClientReferenceId']),
      isHeadOfHousehold: serializer.fromJson<bool>(json['isHeadOfHousehold']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'householdId': serializer.toJson<String?>(householdId),
      'householdClientReferenceId':
          serializer.toJson<String?>(householdClientReferenceId),
      'individualId': serializer.toJson<String?>(individualId),
      'individualClientReferenceId':
          serializer.toJson<String?>(individualClientReferenceId),
      'isHeadOfHousehold': serializer.toJson<bool>(isHeadOfHousehold),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  HouseholdMemberData copyWith(
          {String? id,
          String? householdId,
          String? householdClientReferenceId,
          String? individualId,
          String? individualClientReferenceId,
          bool? isHeadOfHousehold,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      HouseholdMemberData(
        id: id ?? this.id,
        householdId: householdId ?? this.householdId,
        householdClientReferenceId:
            householdClientReferenceId ?? this.householdClientReferenceId,
        individualId: individualId ?? this.individualId,
        individualClientReferenceId:
            individualClientReferenceId ?? this.individualClientReferenceId,
        isHeadOfHousehold: isHeadOfHousehold ?? this.isHeadOfHousehold,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('HouseholdMemberData(')
          ..write('id: $id, ')
          ..write('householdId: $householdId, ')
          ..write('householdClientReferenceId: $householdClientReferenceId, ')
          ..write('individualId: $individualId, ')
          ..write('individualClientReferenceId: $individualClientReferenceId, ')
          ..write('isHeadOfHousehold: $isHeadOfHousehold, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      householdId,
      householdClientReferenceId,
      individualId,
      individualClientReferenceId,
      isHeadOfHousehold,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HouseholdMemberData &&
          other.id == this.id &&
          other.householdId == this.householdId &&
          other.householdClientReferenceId == this.householdClientReferenceId &&
          other.individualId == this.individualId &&
          other.individualClientReferenceId ==
              this.individualClientReferenceId &&
          other.isHeadOfHousehold == this.isHeadOfHousehold &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class HouseholdMemberCompanion extends UpdateCompanion<HouseholdMemberData> {
  final Value<String?> id;
  final Value<String?> householdId;
  final Value<String?> householdClientReferenceId;
  final Value<String?> individualId;
  final Value<String?> individualClientReferenceId;
  final Value<bool> isHeadOfHousehold;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const HouseholdMemberCompanion({
    this.id = const Value.absent(),
    this.householdId = const Value.absent(),
    this.householdClientReferenceId = const Value.absent(),
    this.individualId = const Value.absent(),
    this.individualClientReferenceId = const Value.absent(),
    this.isHeadOfHousehold = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  HouseholdMemberCompanion.insert({
    this.id = const Value.absent(),
    this.householdId = const Value.absent(),
    this.householdClientReferenceId = const Value.absent(),
    this.individualId = const Value.absent(),
    this.individualClientReferenceId = const Value.absent(),
    required bool isHeadOfHousehold,
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  })  : isHeadOfHousehold = Value(isHeadOfHousehold),
        clientReferenceId = Value(clientReferenceId);
  static Insertable<HouseholdMemberData> custom({
    Expression<String?>? id,
    Expression<String?>? householdId,
    Expression<String?>? householdClientReferenceId,
    Expression<String?>? individualId,
    Expression<String?>? individualClientReferenceId,
    Expression<bool>? isHeadOfHousehold,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (householdId != null) 'household_id': householdId,
      if (householdClientReferenceId != null)
        'household_client_reference_id': householdClientReferenceId,
      if (individualId != null) 'individual_id': individualId,
      if (individualClientReferenceId != null)
        'individual_client_reference_id': individualClientReferenceId,
      if (isHeadOfHousehold != null) 'is_head_of_household': isHeadOfHousehold,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  HouseholdMemberCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? householdId,
      Value<String?>? householdClientReferenceId,
      Value<String?>? individualId,
      Value<String?>? individualClientReferenceId,
      Value<bool>? isHeadOfHousehold,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return HouseholdMemberCompanion(
      id: id ?? this.id,
      householdId: householdId ?? this.householdId,
      householdClientReferenceId:
          householdClientReferenceId ?? this.householdClientReferenceId,
      individualId: individualId ?? this.individualId,
      individualClientReferenceId:
          individualClientReferenceId ?? this.individualClientReferenceId,
      isHeadOfHousehold: isHeadOfHousehold ?? this.isHeadOfHousehold,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (householdId.present) {
      map['household_id'] = Variable<String?>(householdId.value);
    }
    if (householdClientReferenceId.present) {
      map['household_client_reference_id'] =
          Variable<String?>(householdClientReferenceId.value);
    }
    if (individualId.present) {
      map['individual_id'] = Variable<String?>(individualId.value);
    }
    if (individualClientReferenceId.present) {
      map['individual_client_reference_id'] =
          Variable<String?>(individualClientReferenceId.value);
    }
    if (isHeadOfHousehold.present) {
      map['is_head_of_household'] = Variable<bool>(isHeadOfHousehold.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HouseholdMemberCompanion(')
          ..write('id: $id, ')
          ..write('householdId: $householdId, ')
          ..write('householdClientReferenceId: $householdClientReferenceId, ')
          ..write('individualId: $individualId, ')
          ..write('individualClientReferenceId: $individualClientReferenceId, ')
          ..write('isHeadOfHousehold: $isHeadOfHousehold, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $HouseholdMemberTable extends HouseholdMember
    with TableInfo<$HouseholdMemberTable, HouseholdMemberData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HouseholdMemberTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _householdIdMeta =
      const VerificationMeta('householdId');
  @override
  late final GeneratedColumn<String?> householdId = GeneratedColumn<String?>(
      'household_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _householdClientReferenceIdMeta =
      const VerificationMeta('householdClientReferenceId');
  @override
  late final GeneratedColumn<String?> householdClientReferenceId =
      GeneratedColumn<String?>(
          'household_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _individualIdMeta =
      const VerificationMeta('individualId');
  @override
  late final GeneratedColumn<String?> individualId = GeneratedColumn<String?>(
      'individual_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _individualClientReferenceIdMeta =
      const VerificationMeta('individualClientReferenceId');
  @override
  late final GeneratedColumn<String?> individualClientReferenceId =
      GeneratedColumn<String?>(
          'individual_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isHeadOfHouseholdMeta =
      const VerificationMeta('isHeadOfHousehold');
  @override
  late final GeneratedColumn<bool?> isHeadOfHousehold = GeneratedColumn<bool?>(
      'is_head_of_household', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_head_of_household IN (0, 1))');
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        householdId,
        householdClientReferenceId,
        individualId,
        individualClientReferenceId,
        isHeadOfHousehold,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'household_member';
  @override
  String get actualTableName => 'household_member';
  @override
  VerificationContext validateIntegrity(
      Insertable<HouseholdMemberData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('household_id')) {
      context.handle(
          _householdIdMeta,
          householdId.isAcceptableOrUnknown(
              data['household_id']!, _householdIdMeta));
    }
    if (data.containsKey('household_client_reference_id')) {
      context.handle(
          _householdClientReferenceIdMeta,
          householdClientReferenceId.isAcceptableOrUnknown(
              data['household_client_reference_id']!,
              _householdClientReferenceIdMeta));
    }
    if (data.containsKey('individual_id')) {
      context.handle(
          _individualIdMeta,
          individualId.isAcceptableOrUnknown(
              data['individual_id']!, _individualIdMeta));
    }
    if (data.containsKey('individual_client_reference_id')) {
      context.handle(
          _individualClientReferenceIdMeta,
          individualClientReferenceId.isAcceptableOrUnknown(
              data['individual_client_reference_id']!,
              _individualClientReferenceIdMeta));
    }
    if (data.containsKey('is_head_of_household')) {
      context.handle(
          _isHeadOfHouseholdMeta,
          isHeadOfHousehold.isAcceptableOrUnknown(
              data['is_head_of_household']!, _isHeadOfHouseholdMeta));
    } else if (isInserting) {
      context.missing(_isHeadOfHouseholdMeta);
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  HouseholdMemberData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return HouseholdMemberData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $HouseholdMemberTable createAlias(String alias) {
    return $HouseholdMemberTable(attachedDatabase, alias);
  }
}

class IdentifierData extends DataClass implements Insertable<IdentifierData> {
  final String? id;
  final String? identifierType;
  final String? identifierId;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  IdentifierData(
      {this.id,
      this.identifierType,
      this.identifierId,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory IdentifierData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return IdentifierData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      identifierType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}identifier_type']),
      identifierId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}identifier_id']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || identifierType != null) {
      map['identifier_type'] = Variable<String?>(identifierType);
    }
    if (!nullToAbsent || identifierId != null) {
      map['identifier_id'] = Variable<String?>(identifierId);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  IdentifierCompanion toCompanion(bool nullToAbsent) {
    return IdentifierCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      identifierType: identifierType == null && nullToAbsent
          ? const Value.absent()
          : Value(identifierType),
      identifierId: identifierId == null && nullToAbsent
          ? const Value.absent()
          : Value(identifierId),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory IdentifierData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IdentifierData(
      id: serializer.fromJson<String?>(json['id']),
      identifierType: serializer.fromJson<String?>(json['identifierType']),
      identifierId: serializer.fromJson<String?>(json['identifierId']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'identifierType': serializer.toJson<String?>(identifierType),
      'identifierId': serializer.toJson<String?>(identifierId),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  IdentifierData copyWith(
          {String? id,
          String? identifierType,
          String? identifierId,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      IdentifierData(
        id: id ?? this.id,
        identifierType: identifierType ?? this.identifierType,
        identifierId: identifierId ?? this.identifierId,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('IdentifierData(')
          ..write('id: $id, ')
          ..write('identifierType: $identifierType, ')
          ..write('identifierId: $identifierId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      identifierType,
      identifierId,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IdentifierData &&
          other.id == this.id &&
          other.identifierType == this.identifierType &&
          other.identifierId == this.identifierId &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class IdentifierCompanion extends UpdateCompanion<IdentifierData> {
  final Value<String?> id;
  final Value<String?> identifierType;
  final Value<String?> identifierId;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const IdentifierCompanion({
    this.id = const Value.absent(),
    this.identifierType = const Value.absent(),
    this.identifierId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  IdentifierCompanion.insert({
    this.id = const Value.absent(),
    this.identifierType = const Value.absent(),
    this.identifierId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<IdentifierData> custom({
    Expression<String?>? id,
    Expression<String?>? identifierType,
    Expression<String?>? identifierId,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (identifierType != null) 'identifier_type': identifierType,
      if (identifierId != null) 'identifier_id': identifierId,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  IdentifierCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? identifierType,
      Value<String?>? identifierId,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return IdentifierCompanion(
      id: id ?? this.id,
      identifierType: identifierType ?? this.identifierType,
      identifierId: identifierId ?? this.identifierId,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (identifierType.present) {
      map['identifier_type'] = Variable<String?>(identifierType.value);
    }
    if (identifierId.present) {
      map['identifier_id'] = Variable<String?>(identifierId.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IdentifierCompanion(')
          ..write('id: $id, ')
          ..write('identifierType: $identifierType, ')
          ..write('identifierId: $identifierId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $IdentifierTable extends Identifier
    with TableInfo<$IdentifierTable, IdentifierData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IdentifierTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _identifierTypeMeta =
      const VerificationMeta('identifierType');
  @override
  late final GeneratedColumn<String?> identifierType = GeneratedColumn<String?>(
      'identifier_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _identifierIdMeta =
      const VerificationMeta('identifierId');
  @override
  late final GeneratedColumn<String?> identifierId = GeneratedColumn<String?>(
      'identifier_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        identifierType,
        identifierId,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'identifier';
  @override
  String get actualTableName => 'identifier';
  @override
  VerificationContext validateIntegrity(Insertable<IdentifierData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('identifier_type')) {
      context.handle(
          _identifierTypeMeta,
          identifierType.isAcceptableOrUnknown(
              data['identifier_type']!, _identifierTypeMeta));
    }
    if (data.containsKey('identifier_id')) {
      context.handle(
          _identifierIdMeta,
          identifierId.isAcceptableOrUnknown(
              data['identifier_id']!, _identifierIdMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  IdentifierData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return IdentifierData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $IdentifierTable createAlias(String alias) {
    return $IdentifierTable(attachedDatabase, alias);
  }
}

class IndividualData extends DataClass implements Insertable<IndividualData> {
  final String? id;
  final String? userId;
  final String? dateOfBirth;
  final String? mobileNumber;
  final String? altContactNumber;
  final String? email;
  final String? fatherName;
  final String? husbandName;
  final String? photo;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final BloodGroup? bloodGroup;
  final Gender? gender;
  final String? additionalFields;
  IndividualData(
      {this.id,
      this.userId,
      this.dateOfBirth,
      this.mobileNumber,
      this.altContactNumber,
      this.email,
      this.fatherName,
      this.husbandName,
      this.photo,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.bloodGroup,
      this.gender,
      this.additionalFields});
  factory IndividualData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return IndividualData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      dateOfBirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth']),
      mobileNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number']),
      altContactNumber: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}alt_contact_number']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      fatherName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}father_name']),
      husbandName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}husband_name']),
      photo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}photo']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      bloodGroup: $IndividualTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}blood_group'])),
      gender: $IndividualTable.$converter1.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender'])),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String?>(userId);
    }
    if (!nullToAbsent || dateOfBirth != null) {
      map['date_of_birth'] = Variable<String?>(dateOfBirth);
    }
    if (!nullToAbsent || mobileNumber != null) {
      map['mobile_number'] = Variable<String?>(mobileNumber);
    }
    if (!nullToAbsent || altContactNumber != null) {
      map['alt_contact_number'] = Variable<String?>(altContactNumber);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || fatherName != null) {
      map['father_name'] = Variable<String?>(fatherName);
    }
    if (!nullToAbsent || husbandName != null) {
      map['husband_name'] = Variable<String?>(husbandName);
    }
    if (!nullToAbsent || photo != null) {
      map['photo'] = Variable<String?>(photo);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || bloodGroup != null) {
      final converter = $IndividualTable.$converter0;
      map['blood_group'] = Variable<int?>(converter.mapToSql(bloodGroup));
    }
    if (!nullToAbsent || gender != null) {
      final converter = $IndividualTable.$converter1;
      map['gender'] = Variable<int?>(converter.mapToSql(gender));
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  IndividualCompanion toCompanion(bool nullToAbsent) {
    return IndividualCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      dateOfBirth: dateOfBirth == null && nullToAbsent
          ? const Value.absent()
          : Value(dateOfBirth),
      mobileNumber: mobileNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber),
      altContactNumber: altContactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(altContactNumber),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      fatherName: fatherName == null && nullToAbsent
          ? const Value.absent()
          : Value(fatherName),
      husbandName: husbandName == null && nullToAbsent
          ? const Value.absent()
          : Value(husbandName),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      bloodGroup: bloodGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(bloodGroup),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory IndividualData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IndividualData(
      id: serializer.fromJson<String?>(json['id']),
      userId: serializer.fromJson<String?>(json['userId']),
      dateOfBirth: serializer.fromJson<String?>(json['dateOfBirth']),
      mobileNumber: serializer.fromJson<String?>(json['mobileNumber']),
      altContactNumber: serializer.fromJson<String?>(json['altContactNumber']),
      email: serializer.fromJson<String?>(json['email']),
      fatherName: serializer.fromJson<String?>(json['fatherName']),
      husbandName: serializer.fromJson<String?>(json['husbandName']),
      photo: serializer.fromJson<String?>(json['photo']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      bloodGroup: serializer.fromJson<BloodGroup?>(json['bloodGroup']),
      gender: serializer.fromJson<Gender?>(json['gender']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'userId': serializer.toJson<String?>(userId),
      'dateOfBirth': serializer.toJson<String?>(dateOfBirth),
      'mobileNumber': serializer.toJson<String?>(mobileNumber),
      'altContactNumber': serializer.toJson<String?>(altContactNumber),
      'email': serializer.toJson<String?>(email),
      'fatherName': serializer.toJson<String?>(fatherName),
      'husbandName': serializer.toJson<String?>(husbandName),
      'photo': serializer.toJson<String?>(photo),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'bloodGroup': serializer.toJson<BloodGroup?>(bloodGroup),
      'gender': serializer.toJson<Gender?>(gender),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  IndividualData copyWith(
          {String? id,
          String? userId,
          String? dateOfBirth,
          String? mobileNumber,
          String? altContactNumber,
          String? email,
          String? fatherName,
          String? husbandName,
          String? photo,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          BloodGroup? bloodGroup,
          Gender? gender,
          String? additionalFields}) =>
      IndividualData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        altContactNumber: altContactNumber ?? this.altContactNumber,
        email: email ?? this.email,
        fatherName: fatherName ?? this.fatherName,
        husbandName: husbandName ?? this.husbandName,
        photo: photo ?? this.photo,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        gender: gender ?? this.gender,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('IndividualData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('altContactNumber: $altContactNumber, ')
          ..write('email: $email, ')
          ..write('fatherName: $fatherName, ')
          ..write('husbandName: $husbandName, ')
          ..write('photo: $photo, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('gender: $gender, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      dateOfBirth,
      mobileNumber,
      altContactNumber,
      email,
      fatherName,
      husbandName,
      photo,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      bloodGroup,
      gender,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IndividualData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.dateOfBirth == this.dateOfBirth &&
          other.mobileNumber == this.mobileNumber &&
          other.altContactNumber == this.altContactNumber &&
          other.email == this.email &&
          other.fatherName == this.fatherName &&
          other.husbandName == this.husbandName &&
          other.photo == this.photo &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.bloodGroup == this.bloodGroup &&
          other.gender == this.gender &&
          other.additionalFields == this.additionalFields);
}

class IndividualCompanion extends UpdateCompanion<IndividualData> {
  final Value<String?> id;
  final Value<String?> userId;
  final Value<String?> dateOfBirth;
  final Value<String?> mobileNumber;
  final Value<String?> altContactNumber;
  final Value<String?> email;
  final Value<String?> fatherName;
  final Value<String?> husbandName;
  final Value<String?> photo;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<BloodGroup?> bloodGroup;
  final Value<Gender?> gender;
  final Value<String?> additionalFields;
  const IndividualCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.altContactNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.husbandName = const Value.absent(),
    this.photo = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.bloodGroup = const Value.absent(),
    this.gender = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  IndividualCompanion.insert({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.altContactNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.husbandName = const Value.absent(),
    this.photo = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.bloodGroup = const Value.absent(),
    this.gender = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<IndividualData> custom({
    Expression<String?>? id,
    Expression<String?>? userId,
    Expression<String?>? dateOfBirth,
    Expression<String?>? mobileNumber,
    Expression<String?>? altContactNumber,
    Expression<String?>? email,
    Expression<String?>? fatherName,
    Expression<String?>? husbandName,
    Expression<String?>? photo,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<BloodGroup?>? bloodGroup,
    Expression<Gender?>? gender,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (altContactNumber != null) 'alt_contact_number': altContactNumber,
      if (email != null) 'email': email,
      if (fatherName != null) 'father_name': fatherName,
      if (husbandName != null) 'husband_name': husbandName,
      if (photo != null) 'photo': photo,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (bloodGroup != null) 'blood_group': bloodGroup,
      if (gender != null) 'gender': gender,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  IndividualCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? userId,
      Value<String?>? dateOfBirth,
      Value<String?>? mobileNumber,
      Value<String?>? altContactNumber,
      Value<String?>? email,
      Value<String?>? fatherName,
      Value<String?>? husbandName,
      Value<String?>? photo,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<BloodGroup?>? bloodGroup,
      Value<Gender?>? gender,
      Value<String?>? additionalFields}) {
    return IndividualCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      altContactNumber: altContactNumber ?? this.altContactNumber,
      email: email ?? this.email,
      fatherName: fatherName ?? this.fatherName,
      husbandName: husbandName ?? this.husbandName,
      photo: photo ?? this.photo,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      gender: gender ?? this.gender,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String?>(userId.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<String?>(dateOfBirth.value);
    }
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String?>(mobileNumber.value);
    }
    if (altContactNumber.present) {
      map['alt_contact_number'] = Variable<String?>(altContactNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String?>(fatherName.value);
    }
    if (husbandName.present) {
      map['husband_name'] = Variable<String?>(husbandName.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String?>(photo.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (bloodGroup.present) {
      final converter = $IndividualTable.$converter0;
      map['blood_group'] = Variable<int?>(converter.mapToSql(bloodGroup.value));
    }
    if (gender.present) {
      final converter = $IndividualTable.$converter1;
      map['gender'] = Variable<int?>(converter.mapToSql(gender.value));
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IndividualCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('altContactNumber: $altContactNumber, ')
          ..write('email: $email, ')
          ..write('fatherName: $fatherName, ')
          ..write('husbandName: $husbandName, ')
          ..write('photo: $photo, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('gender: $gender, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $IndividualTable extends Individual
    with TableInfo<$IndividualTable, IndividualData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IndividualTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'user_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<String?> dateOfBirth = GeneratedColumn<String?>(
      'date_of_birth', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String?> mobileNumber = GeneratedColumn<String?>(
      'mobile_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _altContactNumberMeta =
      const VerificationMeta('altContactNumber');
  @override
  late final GeneratedColumn<String?> altContactNumber =
      GeneratedColumn<String?>('alt_contact_number', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fatherNameMeta = const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String?> fatherName = GeneratedColumn<String?>(
      'father_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _husbandNameMeta =
      const VerificationMeta('husbandName');
  @override
  late final GeneratedColumn<String?> husbandName = GeneratedColumn<String?>(
      'husband_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<String?> photo = GeneratedColumn<String?>(
      'photo', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _bloodGroupMeta = const VerificationMeta('bloodGroup');
  @override
  late final GeneratedColumnWithTypeConverter<BloodGroup?, int?> bloodGroup =
      GeneratedColumn<int?>('blood_group', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<BloodGroup?>($IndividualTable.$converter0);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumnWithTypeConverter<Gender?, int?> gender =
      GeneratedColumn<int?>('gender', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<Gender?>($IndividualTable.$converter1);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        dateOfBirth,
        mobileNumber,
        altContactNumber,
        email,
        fatherName,
        husbandName,
        photo,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        bloodGroup,
        gender,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'individual';
  @override
  String get actualTableName => 'individual';
  @override
  VerificationContext validateIntegrity(Insertable<IndividualData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    }
    if (data.containsKey('alt_contact_number')) {
      context.handle(
          _altContactNumberMeta,
          altContactNumber.isAcceptableOrUnknown(
              data['alt_contact_number']!, _altContactNumberMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    }
    if (data.containsKey('husband_name')) {
      context.handle(
          _husbandNameMeta,
          husbandName.isAcceptableOrUnknown(
              data['husband_name']!, _husbandNameMeta));
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    context.handle(_bloodGroupMeta, const VerificationResult.success());
    context.handle(_genderMeta, const VerificationResult.success());
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  IndividualData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return IndividualData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $IndividualTable createAlias(String alias) {
    return $IndividualTable(attachedDatabase, alias);
  }

  static TypeConverter<BloodGroup?, int> $converter0 =
      const EnumIndexConverter<BloodGroup>(BloodGroup.values);
  static TypeConverter<Gender?, int> $converter1 =
      const EnumIndexConverter<Gender>(Gender.values);
}

class ProductData extends DataClass implements Insertable<ProductData> {
  final String? id;
  final String? type;
  final String? name;
  final String? manufacturer;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ProductData(
      {this.id,
      this.type,
      this.name,
      this.manufacturer,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ProductData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      manufacturer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}manufacturer']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || manufacturer != null) {
      map['manufacturer'] = Variable<String?>(manufacturer);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProductCompanion toCompanion(bool nullToAbsent) {
    return ProductCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      manufacturer: manufacturer == null && nullToAbsent
          ? const Value.absent()
          : Value(manufacturer),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProductData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductData(
      id: serializer.fromJson<String?>(json['id']),
      type: serializer.fromJson<String?>(json['type']),
      name: serializer.fromJson<String?>(json['name']),
      manufacturer: serializer.fromJson<String?>(json['manufacturer']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'type': serializer.toJson<String?>(type),
      'name': serializer.toJson<String?>(name),
      'manufacturer': serializer.toJson<String?>(manufacturer),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProductData copyWith(
          {String? id,
          String? type,
          String? name,
          String? manufacturer,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ProductData(
        id: id ?? this.id,
        type: type ?? this.type,
        name: name ?? this.name,
        manufacturer: manufacturer ?? this.manufacturer,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProductData(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      type,
      name,
      manufacturer,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductData &&
          other.id == this.id &&
          other.type == this.type &&
          other.name == this.name &&
          other.manufacturer == this.manufacturer &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ProductCompanion extends UpdateCompanion<ProductData> {
  final Value<String?> id;
  final Value<String?> type;
  final Value<String?> name;
  final Value<String?> manufacturer;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ProductCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProductCompanion.insert({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.name = const Value.absent(),
    this.manufacturer = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<ProductData> custom({
    Expression<String?>? id,
    Expression<String?>? type,
    Expression<String?>? name,
    Expression<String?>? manufacturer,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (name != null) 'name': name,
      if (manufacturer != null) 'manufacturer': manufacturer,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProductCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? type,
      Value<String?>? name,
      Value<String?>? manufacturer,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ProductCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      manufacturer: manufacturer ?? this.manufacturer,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (manufacturer.present) {
      map['manufacturer'] = Variable<String?>(manufacturer.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('name: $name, ')
          ..write('manufacturer: $manufacturer, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProductTable extends Product with TableInfo<$ProductTable, ProductData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _manufacturerMeta =
      const VerificationMeta('manufacturer');
  @override
  late final GeneratedColumn<String?> manufacturer = GeneratedColumn<String?>(
      'manufacturer', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        name,
        manufacturer,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'product';
  @override
  String get actualTableName => 'product';
  @override
  VerificationContext validateIntegrity(Insertable<ProductData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('manufacturer')) {
      context.handle(
          _manufacturerMeta,
          manufacturer.isAcceptableOrUnknown(
              data['manufacturer']!, _manufacturerMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  ProductData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductTable createAlias(String alias) {
    return $ProductTable(attachedDatabase, alias);
  }
}

class ProductVariantData extends DataClass
    implements Insertable<ProductVariantData> {
  final String id;
  final String? productId;
  final String? sku;
  final String? variation;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ProductVariantData(
      {required this.id,
      this.productId,
      this.sku,
      this.variation,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ProductVariantData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProductVariantData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      productId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_id']),
      sku: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sku']),
      variation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}variation']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<String?>(productId);
    }
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String?>(sku);
    }
    if (!nullToAbsent || variation != null) {
      map['variation'] = Variable<String?>(variation);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProductVariantCompanion toCompanion(bool nullToAbsent) {
    return ProductVariantCompanion(
      id: Value(id),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      variation: variation == null && nullToAbsent
          ? const Value.absent()
          : Value(variation),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProductVariantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductVariantData(
      id: serializer.fromJson<String>(json['id']),
      productId: serializer.fromJson<String?>(json['productId']),
      sku: serializer.fromJson<String?>(json['sku']),
      variation: serializer.fromJson<String?>(json['variation']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'productId': serializer.toJson<String?>(productId),
      'sku': serializer.toJson<String?>(sku),
      'variation': serializer.toJson<String?>(variation),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProductVariantData copyWith(
          {String? id,
          String? productId,
          String? sku,
          String? variation,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ProductVariantData(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        sku: sku ?? this.sku,
        variation: variation ?? this.variation,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProductVariantData(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('sku: $sku, ')
          ..write('variation: $variation, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      productId,
      sku,
      variation,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductVariantData &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.sku == this.sku &&
          other.variation == this.variation &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ProductVariantCompanion extends UpdateCompanion<ProductVariantData> {
  final Value<String> id;
  final Value<String?> productId;
  final Value<String?> sku;
  final Value<String?> variation;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ProductVariantCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.sku = const Value.absent(),
    this.variation = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProductVariantCompanion.insert({
    required String id,
    this.productId = const Value.absent(),
    this.sku = const Value.absent(),
    this.variation = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ProductVariantData> custom({
    Expression<String>? id,
    Expression<String?>? productId,
    Expression<String?>? sku,
    Expression<String?>? variation,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (sku != null) 'sku': sku,
      if (variation != null) 'variation': variation,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProductVariantCompanion copyWith(
      {Value<String>? id,
      Value<String?>? productId,
      Value<String?>? sku,
      Value<String?>? variation,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ProductVariantCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      sku: sku ?? this.sku,
      variation: variation ?? this.variation,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String?>(productId.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String?>(sku.value);
    }
    if (variation.present) {
      map['variation'] = Variable<String?>(variation.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductVariantCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('sku: $sku, ')
          ..write('variation: $variation, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProductVariantTable extends ProductVariant
    with TableInfo<$ProductVariantTable, ProductVariantData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductVariantTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String?> productId = GeneratedColumn<String?>(
      'product_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String?> sku = GeneratedColumn<String?>(
      'sku', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _variationMeta = const VerificationMeta('variation');
  @override
  late final GeneratedColumn<String?> variation = GeneratedColumn<String?>(
      'variation', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        productId,
        sku,
        variation,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'product_variant';
  @override
  String get actualTableName => 'product_variant';
  @override
  VerificationContext validateIntegrity(Insertable<ProductVariantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('sku')) {
      context.handle(
          _skuMeta, sku.isAcceptableOrUnknown(data['sku']!, _skuMeta));
    }
    if (data.containsKey('variation')) {
      context.handle(_variationMeta,
          variation.isAcceptableOrUnknown(data['variation']!, _variationMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ProductVariantData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProductVariantData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductVariantTable createAlias(String alias) {
    return $ProductVariantTable(attachedDatabase, alias);
  }
}

class ProjectData extends DataClass implements Insertable<ProjectData> {
  final String id;
  final String? projectTypeId;
  final String? projectNumber;
  final String? subProjectTypeId;
  final bool? isTaskEnabled;
  final String? parent;
  final String name;
  final String? department;
  final String? description;
  final String? referenceId;
  final String? projectHierarchy;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final int? startDate;
  final int? endDate;
  final String? additionalFields;
  ProjectData(
      {required this.id,
      this.projectTypeId,
      this.projectNumber,
      this.subProjectTypeId,
      this.isTaskEnabled,
      this.parent,
      required this.name,
      this.department,
      this.description,
      this.referenceId,
      this.projectHierarchy,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.startDate,
      this.endDate,
      this.additionalFields});
  factory ProjectData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      projectTypeId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_type_id']),
      projectNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_number']),
      subProjectTypeId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}sub_project_type_id']),
      isTaskEnabled: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_task_enabled']),
      parent: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      department: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}department']),
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      referenceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id']),
      projectHierarchy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_hierarchy']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      startDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      endDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || projectTypeId != null) {
      map['project_type_id'] = Variable<String?>(projectTypeId);
    }
    if (!nullToAbsent || projectNumber != null) {
      map['project_number'] = Variable<String?>(projectNumber);
    }
    if (!nullToAbsent || subProjectTypeId != null) {
      map['sub_project_type_id'] = Variable<String?>(subProjectTypeId);
    }
    if (!nullToAbsent || isTaskEnabled != null) {
      map['is_task_enabled'] = Variable<bool?>(isTaskEnabled);
    }
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String?>(parent);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || department != null) {
      map['department'] = Variable<String?>(department);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String?>(referenceId);
    }
    if (!nullToAbsent || projectHierarchy != null) {
      map['project_hierarchy'] = Variable<String?>(projectHierarchy);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<int?>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<int?>(endDate);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectCompanion toCompanion(bool nullToAbsent) {
    return ProjectCompanion(
      id: Value(id),
      projectTypeId: projectTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectTypeId),
      projectNumber: projectNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(projectNumber),
      subProjectTypeId: subProjectTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(subProjectTypeId),
      isTaskEnabled: isTaskEnabled == null && nullToAbsent
          ? const Value.absent()
          : Value(isTaskEnabled),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      name: Value(name),
      department: department == null && nullToAbsent
          ? const Value.absent()
          : Value(department),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      referenceId: referenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceId),
      projectHierarchy: projectHierarchy == null && nullToAbsent
          ? const Value.absent()
          : Value(projectHierarchy),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectData(
      id: serializer.fromJson<String>(json['id']),
      projectTypeId: serializer.fromJson<String?>(json['projectTypeId']),
      projectNumber: serializer.fromJson<String?>(json['projectNumber']),
      subProjectTypeId: serializer.fromJson<String?>(json['subProjectTypeId']),
      isTaskEnabled: serializer.fromJson<bool?>(json['isTaskEnabled']),
      parent: serializer.fromJson<String?>(json['parent']),
      name: serializer.fromJson<String>(json['name']),
      department: serializer.fromJson<String?>(json['department']),
      description: serializer.fromJson<String?>(json['description']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      projectHierarchy: serializer.fromJson<String?>(json['projectHierarchy']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      startDate: serializer.fromJson<int?>(json['startDate']),
      endDate: serializer.fromJson<int?>(json['endDate']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'projectTypeId': serializer.toJson<String?>(projectTypeId),
      'projectNumber': serializer.toJson<String?>(projectNumber),
      'subProjectTypeId': serializer.toJson<String?>(subProjectTypeId),
      'isTaskEnabled': serializer.toJson<bool?>(isTaskEnabled),
      'parent': serializer.toJson<String?>(parent),
      'name': serializer.toJson<String>(name),
      'department': serializer.toJson<String?>(department),
      'description': serializer.toJson<String?>(description),
      'referenceId': serializer.toJson<String?>(referenceId),
      'projectHierarchy': serializer.toJson<String?>(projectHierarchy),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'startDate': serializer.toJson<int?>(startDate),
      'endDate': serializer.toJson<int?>(endDate),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectData copyWith(
          {String? id,
          String? projectTypeId,
          String? projectNumber,
          String? subProjectTypeId,
          bool? isTaskEnabled,
          String? parent,
          String? name,
          String? department,
          String? description,
          String? referenceId,
          String? projectHierarchy,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          int? startDate,
          int? endDate,
          String? additionalFields}) =>
      ProjectData(
        id: id ?? this.id,
        projectTypeId: projectTypeId ?? this.projectTypeId,
        projectNumber: projectNumber ?? this.projectNumber,
        subProjectTypeId: subProjectTypeId ?? this.subProjectTypeId,
        isTaskEnabled: isTaskEnabled ?? this.isTaskEnabled,
        parent: parent ?? this.parent,
        name: name ?? this.name,
        department: department ?? this.department,
        description: description ?? this.description,
        referenceId: referenceId ?? this.referenceId,
        projectHierarchy: projectHierarchy ?? this.projectHierarchy,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectData(')
          ..write('id: $id, ')
          ..write('projectTypeId: $projectTypeId, ')
          ..write('projectNumber: $projectNumber, ')
          ..write('subProjectTypeId: $subProjectTypeId, ')
          ..write('isTaskEnabled: $isTaskEnabled, ')
          ..write('parent: $parent, ')
          ..write('name: $name, ')
          ..write('department: $department, ')
          ..write('description: $description, ')
          ..write('referenceId: $referenceId, ')
          ..write('projectHierarchy: $projectHierarchy, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        projectTypeId,
        projectNumber,
        subProjectTypeId,
        isTaskEnabled,
        parent,
        name,
        department,
        description,
        referenceId,
        projectHierarchy,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        startDate,
        endDate,
        additionalFields
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectData &&
          other.id == this.id &&
          other.projectTypeId == this.projectTypeId &&
          other.projectNumber == this.projectNumber &&
          other.subProjectTypeId == this.subProjectTypeId &&
          other.isTaskEnabled == this.isTaskEnabled &&
          other.parent == this.parent &&
          other.name == this.name &&
          other.department == this.department &&
          other.description == this.description &&
          other.referenceId == this.referenceId &&
          other.projectHierarchy == this.projectHierarchy &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.additionalFields == this.additionalFields);
}

class ProjectCompanion extends UpdateCompanion<ProjectData> {
  final Value<String> id;
  final Value<String?> projectTypeId;
  final Value<String?> projectNumber;
  final Value<String?> subProjectTypeId;
  final Value<bool?> isTaskEnabled;
  final Value<String?> parent;
  final Value<String> name;
  final Value<String?> department;
  final Value<String?> description;
  final Value<String?> referenceId;
  final Value<String?> projectHierarchy;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<int?> startDate;
  final Value<int?> endDate;
  final Value<String?> additionalFields;
  const ProjectCompanion({
    this.id = const Value.absent(),
    this.projectTypeId = const Value.absent(),
    this.projectNumber = const Value.absent(),
    this.subProjectTypeId = const Value.absent(),
    this.isTaskEnabled = const Value.absent(),
    this.parent = const Value.absent(),
    this.name = const Value.absent(),
    this.department = const Value.absent(),
    this.description = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.projectHierarchy = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectCompanion.insert({
    required String id,
    this.projectTypeId = const Value.absent(),
    this.projectNumber = const Value.absent(),
    this.subProjectTypeId = const Value.absent(),
    this.isTaskEnabled = const Value.absent(),
    this.parent = const Value.absent(),
    required String name,
    this.department = const Value.absent(),
    this.description = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.projectHierarchy = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<ProjectData> custom({
    Expression<String>? id,
    Expression<String?>? projectTypeId,
    Expression<String?>? projectNumber,
    Expression<String?>? subProjectTypeId,
    Expression<bool?>? isTaskEnabled,
    Expression<String?>? parent,
    Expression<String>? name,
    Expression<String?>? department,
    Expression<String?>? description,
    Expression<String?>? referenceId,
    Expression<String?>? projectHierarchy,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<int?>? startDate,
    Expression<int?>? endDate,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectTypeId != null) 'project_type_id': projectTypeId,
      if (projectNumber != null) 'project_number': projectNumber,
      if (subProjectTypeId != null) 'sub_project_type_id': subProjectTypeId,
      if (isTaskEnabled != null) 'is_task_enabled': isTaskEnabled,
      if (parent != null) 'parent': parent,
      if (name != null) 'name': name,
      if (department != null) 'department': department,
      if (description != null) 'description': description,
      if (referenceId != null) 'reference_id': referenceId,
      if (projectHierarchy != null) 'project_hierarchy': projectHierarchy,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectCompanion copyWith(
      {Value<String>? id,
      Value<String?>? projectTypeId,
      Value<String?>? projectNumber,
      Value<String?>? subProjectTypeId,
      Value<bool?>? isTaskEnabled,
      Value<String?>? parent,
      Value<String>? name,
      Value<String?>? department,
      Value<String?>? description,
      Value<String?>? referenceId,
      Value<String?>? projectHierarchy,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<int?>? startDate,
      Value<int?>? endDate,
      Value<String?>? additionalFields}) {
    return ProjectCompanion(
      id: id ?? this.id,
      projectTypeId: projectTypeId ?? this.projectTypeId,
      projectNumber: projectNumber ?? this.projectNumber,
      subProjectTypeId: subProjectTypeId ?? this.subProjectTypeId,
      isTaskEnabled: isTaskEnabled ?? this.isTaskEnabled,
      parent: parent ?? this.parent,
      name: name ?? this.name,
      department: department ?? this.department,
      description: description ?? this.description,
      referenceId: referenceId ?? this.referenceId,
      projectHierarchy: projectHierarchy ?? this.projectHierarchy,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (projectTypeId.present) {
      map['project_type_id'] = Variable<String?>(projectTypeId.value);
    }
    if (projectNumber.present) {
      map['project_number'] = Variable<String?>(projectNumber.value);
    }
    if (subProjectTypeId.present) {
      map['sub_project_type_id'] = Variable<String?>(subProjectTypeId.value);
    }
    if (isTaskEnabled.present) {
      map['is_task_enabled'] = Variable<bool?>(isTaskEnabled.value);
    }
    if (parent.present) {
      map['parent'] = Variable<String?>(parent.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (department.present) {
      map['department'] = Variable<String?>(department.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String?>(referenceId.value);
    }
    if (projectHierarchy.present) {
      map['project_hierarchy'] = Variable<String?>(projectHierarchy.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<int?>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<int?>(endDate.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectCompanion(')
          ..write('id: $id, ')
          ..write('projectTypeId: $projectTypeId, ')
          ..write('projectNumber: $projectNumber, ')
          ..write('subProjectTypeId: $subProjectTypeId, ')
          ..write('isTaskEnabled: $isTaskEnabled, ')
          ..write('parent: $parent, ')
          ..write('name: $name, ')
          ..write('department: $department, ')
          ..write('description: $description, ')
          ..write('referenceId: $referenceId, ')
          ..write('projectHierarchy: $projectHierarchy, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectTable extends Project with TableInfo<$ProjectTable, ProjectData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _projectTypeIdMeta =
      const VerificationMeta('projectTypeId');
  @override
  late final GeneratedColumn<String?> projectTypeId = GeneratedColumn<String?>(
      'project_type_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectNumberMeta =
      const VerificationMeta('projectNumber');
  @override
  late final GeneratedColumn<String?> projectNumber = GeneratedColumn<String?>(
      'project_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _subProjectTypeIdMeta =
      const VerificationMeta('subProjectTypeId');
  @override
  late final GeneratedColumn<String?> subProjectTypeId =
      GeneratedColumn<String?>('sub_project_type_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isTaskEnabledMeta =
      const VerificationMeta('isTaskEnabled');
  @override
  late final GeneratedColumn<bool?> isTaskEnabled = GeneratedColumn<bool?>(
      'is_task_enabled', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_task_enabled IN (0, 1))');
  final VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String?> parent = GeneratedColumn<String?>(
      'parent', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _departmentMeta = const VerificationMeta('department');
  @override
  late final GeneratedColumn<String?> department = GeneratedColumn<String?>(
      'department', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdMeta =
      const VerificationMeta('referenceId');
  @override
  late final GeneratedColumn<String?> referenceId = GeneratedColumn<String?>(
      'reference_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectHierarchyMeta =
      const VerificationMeta('projectHierarchy');
  @override
  late final GeneratedColumn<String?> projectHierarchy =
      GeneratedColumn<String?>('project_hierarchy', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<int?> startDate = GeneratedColumn<int?>(
      'start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<int?> endDate = GeneratedColumn<int?>(
      'end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        projectTypeId,
        projectNumber,
        subProjectTypeId,
        isTaskEnabled,
        parent,
        name,
        department,
        description,
        referenceId,
        projectHierarchy,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        startDate,
        endDate,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project';
  @override
  String get actualTableName => 'project';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('project_type_id')) {
      context.handle(
          _projectTypeIdMeta,
          projectTypeId.isAcceptableOrUnknown(
              data['project_type_id']!, _projectTypeIdMeta));
    }
    if (data.containsKey('project_number')) {
      context.handle(
          _projectNumberMeta,
          projectNumber.isAcceptableOrUnknown(
              data['project_number']!, _projectNumberMeta));
    }
    if (data.containsKey('sub_project_type_id')) {
      context.handle(
          _subProjectTypeIdMeta,
          subProjectTypeId.isAcceptableOrUnknown(
              data['sub_project_type_id']!, _subProjectTypeIdMeta));
    }
    if (data.containsKey('is_task_enabled')) {
      context.handle(
          _isTaskEnabledMeta,
          isTaskEnabled.isAcceptableOrUnknown(
              data['is_task_enabled']!, _isTaskEnabledMeta));
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('department')) {
      context.handle(
          _departmentMeta,
          department.isAcceptableOrUnknown(
              data['department']!, _departmentMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('reference_id')) {
      context.handle(
          _referenceIdMeta,
          referenceId.isAcceptableOrUnknown(
              data['reference_id']!, _referenceIdMeta));
    }
    if (data.containsKey('project_hierarchy')) {
      context.handle(
          _projectHierarchyMeta,
          projectHierarchy.isAcceptableOrUnknown(
              data['project_hierarchy']!, _projectHierarchyMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ProjectData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectTable createAlias(String alias) {
    return $ProjectTable(attachedDatabase, alias);
  }
}

class ProjectBeneficiaryData extends DataClass
    implements Insertable<ProjectBeneficiaryData> {
  final String? id;
  final String? projectId;
  final String? beneficiaryId;
  final String? beneficiaryClientReferenceId;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final int dateOfRegistration;
  final String? additionalFields;
  ProjectBeneficiaryData(
      {this.id,
      this.projectId,
      this.beneficiaryId,
      this.beneficiaryClientReferenceId,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      required this.dateOfRegistration,
      this.additionalFields});
  factory ProjectBeneficiaryData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectBeneficiaryData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      projectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id']),
      beneficiaryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}beneficiary_id']),
      beneficiaryClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}beneficiary_client_reference_id']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      dateOfRegistration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}date_of_registration'])!,
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String?>(projectId);
    }
    if (!nullToAbsent || beneficiaryId != null) {
      map['beneficiary_id'] = Variable<String?>(beneficiaryId);
    }
    if (!nullToAbsent || beneficiaryClientReferenceId != null) {
      map['beneficiary_client_reference_id'] =
          Variable<String?>(beneficiaryClientReferenceId);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    map['date_of_registration'] = Variable<int>(dateOfRegistration);
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectBeneficiaryCompanion toCompanion(bool nullToAbsent) {
    return ProjectBeneficiaryCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      beneficiaryId: beneficiaryId == null && nullToAbsent
          ? const Value.absent()
          : Value(beneficiaryId),
      beneficiaryClientReferenceId:
          beneficiaryClientReferenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(beneficiaryClientReferenceId),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      dateOfRegistration: Value(dateOfRegistration),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectBeneficiaryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectBeneficiaryData(
      id: serializer.fromJson<String?>(json['id']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      beneficiaryId: serializer.fromJson<String?>(json['beneficiaryId']),
      beneficiaryClientReferenceId:
          serializer.fromJson<String?>(json['beneficiaryClientReferenceId']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      dateOfRegistration: serializer.fromJson<int>(json['dateOfRegistration']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'projectId': serializer.toJson<String?>(projectId),
      'beneficiaryId': serializer.toJson<String?>(beneficiaryId),
      'beneficiaryClientReferenceId':
          serializer.toJson<String?>(beneficiaryClientReferenceId),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'dateOfRegistration': serializer.toJson<int>(dateOfRegistration),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectBeneficiaryData copyWith(
          {String? id,
          String? projectId,
          String? beneficiaryId,
          String? beneficiaryClientReferenceId,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          int? dateOfRegistration,
          String? additionalFields}) =>
      ProjectBeneficiaryData(
        id: id ?? this.id,
        projectId: projectId ?? this.projectId,
        beneficiaryId: beneficiaryId ?? this.beneficiaryId,
        beneficiaryClientReferenceId:
            beneficiaryClientReferenceId ?? this.beneficiaryClientReferenceId,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        dateOfRegistration: dateOfRegistration ?? this.dateOfRegistration,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectBeneficiaryData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('beneficiaryId: $beneficiaryId, ')
          ..write(
              'beneficiaryClientReferenceId: $beneficiaryClientReferenceId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('dateOfRegistration: $dateOfRegistration, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      projectId,
      beneficiaryId,
      beneficiaryClientReferenceId,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      dateOfRegistration,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectBeneficiaryData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.beneficiaryId == this.beneficiaryId &&
          other.beneficiaryClientReferenceId ==
              this.beneficiaryClientReferenceId &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.dateOfRegistration == this.dateOfRegistration &&
          other.additionalFields == this.additionalFields);
}

class ProjectBeneficiaryCompanion
    extends UpdateCompanion<ProjectBeneficiaryData> {
  final Value<String?> id;
  final Value<String?> projectId;
  final Value<String?> beneficiaryId;
  final Value<String?> beneficiaryClientReferenceId;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<int> dateOfRegistration;
  final Value<String?> additionalFields;
  const ProjectBeneficiaryCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.beneficiaryId = const Value.absent(),
    this.beneficiaryClientReferenceId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.dateOfRegistration = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectBeneficiaryCompanion.insert({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.beneficiaryId = const Value.absent(),
    this.beneficiaryClientReferenceId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    required int dateOfRegistration,
    this.additionalFields = const Value.absent(),
  })  : clientReferenceId = Value(clientReferenceId),
        dateOfRegistration = Value(dateOfRegistration);
  static Insertable<ProjectBeneficiaryData> custom({
    Expression<String?>? id,
    Expression<String?>? projectId,
    Expression<String?>? beneficiaryId,
    Expression<String?>? beneficiaryClientReferenceId,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<int>? dateOfRegistration,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (beneficiaryId != null) 'beneficiary_id': beneficiaryId,
      if (beneficiaryClientReferenceId != null)
        'beneficiary_client_reference_id': beneficiaryClientReferenceId,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (dateOfRegistration != null)
        'date_of_registration': dateOfRegistration,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectBeneficiaryCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? projectId,
      Value<String?>? beneficiaryId,
      Value<String?>? beneficiaryClientReferenceId,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<int>? dateOfRegistration,
      Value<String?>? additionalFields}) {
    return ProjectBeneficiaryCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      beneficiaryId: beneficiaryId ?? this.beneficiaryId,
      beneficiaryClientReferenceId:
          beneficiaryClientReferenceId ?? this.beneficiaryClientReferenceId,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      dateOfRegistration: dateOfRegistration ?? this.dateOfRegistration,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String?>(projectId.value);
    }
    if (beneficiaryId.present) {
      map['beneficiary_id'] = Variable<String?>(beneficiaryId.value);
    }
    if (beneficiaryClientReferenceId.present) {
      map['beneficiary_client_reference_id'] =
          Variable<String?>(beneficiaryClientReferenceId.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (dateOfRegistration.present) {
      map['date_of_registration'] = Variable<int>(dateOfRegistration.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectBeneficiaryCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('beneficiaryId: $beneficiaryId, ')
          ..write(
              'beneficiaryClientReferenceId: $beneficiaryClientReferenceId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('dateOfRegistration: $dateOfRegistration, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectBeneficiaryTable extends ProjectBeneficiary
    with TableInfo<$ProjectBeneficiaryTable, ProjectBeneficiaryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectBeneficiaryTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<String?> projectId = GeneratedColumn<String?>(
      'project_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _beneficiaryIdMeta =
      const VerificationMeta('beneficiaryId');
  @override
  late final GeneratedColumn<String?> beneficiaryId = GeneratedColumn<String?>(
      'beneficiary_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _beneficiaryClientReferenceIdMeta =
      const VerificationMeta('beneficiaryClientReferenceId');
  @override
  late final GeneratedColumn<String?> beneficiaryClientReferenceId =
      GeneratedColumn<String?>(
          'beneficiary_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _dateOfRegistrationMeta =
      const VerificationMeta('dateOfRegistration');
  @override
  late final GeneratedColumn<int?> dateOfRegistration = GeneratedColumn<int?>(
      'date_of_registration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        projectId,
        beneficiaryId,
        beneficiaryClientReferenceId,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        dateOfRegistration,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_beneficiary';
  @override
  String get actualTableName => 'project_beneficiary';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProjectBeneficiaryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    }
    if (data.containsKey('beneficiary_id')) {
      context.handle(
          _beneficiaryIdMeta,
          beneficiaryId.isAcceptableOrUnknown(
              data['beneficiary_id']!, _beneficiaryIdMeta));
    }
    if (data.containsKey('beneficiary_client_reference_id')) {
      context.handle(
          _beneficiaryClientReferenceIdMeta,
          beneficiaryClientReferenceId.isAcceptableOrUnknown(
              data['beneficiary_client_reference_id']!,
              _beneficiaryClientReferenceIdMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('date_of_registration')) {
      context.handle(
          _dateOfRegistrationMeta,
          dateOfRegistration.isAcceptableOrUnknown(
              data['date_of_registration']!, _dateOfRegistrationMeta));
    } else if (isInserting) {
      context.missing(_dateOfRegistrationMeta);
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  ProjectBeneficiaryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectBeneficiaryData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectBeneficiaryTable createAlias(String alias) {
    return $ProjectBeneficiaryTable(attachedDatabase, alias);
  }
}

class ProjectFacilityData extends DataClass
    implements Insertable<ProjectFacilityData> {
  final String id;
  final String facilityId;
  final String projectId;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ProjectFacilityData(
      {required this.id,
      required this.facilityId,
      required this.projectId,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ProjectFacilityData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectFacilityData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      facilityId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}facility_id'])!,
      projectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id'])!,
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['facility_id'] = Variable<String>(facilityId);
    map['project_id'] = Variable<String>(projectId);
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectFacilityCompanion toCompanion(bool nullToAbsent) {
    return ProjectFacilityCompanion(
      id: Value(id),
      facilityId: Value(facilityId),
      projectId: Value(projectId),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectFacilityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectFacilityData(
      id: serializer.fromJson<String>(json['id']),
      facilityId: serializer.fromJson<String>(json['facilityId']),
      projectId: serializer.fromJson<String>(json['projectId']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'facilityId': serializer.toJson<String>(facilityId),
      'projectId': serializer.toJson<String>(projectId),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectFacilityData copyWith(
          {String? id,
          String? facilityId,
          String? projectId,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ProjectFacilityData(
        id: id ?? this.id,
        facilityId: facilityId ?? this.facilityId,
        projectId: projectId ?? this.projectId,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectFacilityData(')
          ..write('id: $id, ')
          ..write('facilityId: $facilityId, ')
          ..write('projectId: $projectId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      facilityId,
      projectId,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectFacilityData &&
          other.id == this.id &&
          other.facilityId == this.facilityId &&
          other.projectId == this.projectId &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ProjectFacilityCompanion extends UpdateCompanion<ProjectFacilityData> {
  final Value<String> id;
  final Value<String> facilityId;
  final Value<String> projectId;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ProjectFacilityCompanion({
    this.id = const Value.absent(),
    this.facilityId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectFacilityCompanion.insert({
    required String id,
    required String facilityId,
    required String projectId,
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  })  : id = Value(id),
        facilityId = Value(facilityId),
        projectId = Value(projectId);
  static Insertable<ProjectFacilityData> custom({
    Expression<String>? id,
    Expression<String>? facilityId,
    Expression<String>? projectId,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (facilityId != null) 'facility_id': facilityId,
      if (projectId != null) 'project_id': projectId,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectFacilityCompanion copyWith(
      {Value<String>? id,
      Value<String>? facilityId,
      Value<String>? projectId,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ProjectFacilityCompanion(
      id: id ?? this.id,
      facilityId: facilityId ?? this.facilityId,
      projectId: projectId ?? this.projectId,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (facilityId.present) {
      map['facility_id'] = Variable<String>(facilityId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String>(projectId.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectFacilityCompanion(')
          ..write('id: $id, ')
          ..write('facilityId: $facilityId, ')
          ..write('projectId: $projectId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectFacilityTable extends ProjectFacility
    with TableInfo<$ProjectFacilityTable, ProjectFacilityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectFacilityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _facilityIdMeta = const VerificationMeta('facilityId');
  @override
  late final GeneratedColumn<String?> facilityId = GeneratedColumn<String?>(
      'facility_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<String?> projectId = GeneratedColumn<String?>(
      'project_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        facilityId,
        projectId,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_facility';
  @override
  String get actualTableName => 'project_facility';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProjectFacilityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('facility_id')) {
      context.handle(
          _facilityIdMeta,
          facilityId.isAcceptableOrUnknown(
              data['facility_id']!, _facilityIdMeta));
    } else if (isInserting) {
      context.missing(_facilityIdMeta);
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ProjectFacilityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectFacilityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectFacilityTable createAlias(String alias) {
    return $ProjectFacilityTable(attachedDatabase, alias);
  }
}

class ProjectProductVariantData extends DataClass
    implements Insertable<ProjectProductVariantData> {
  final String productVariantId;
  final String? type;
  final bool? isBaseUnitVariant;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ProjectProductVariantData(
      {required this.productVariantId,
      this.type,
      this.isBaseUnitVariant,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ProjectProductVariantData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectProductVariantData(
      productVariantId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}product_variant_id'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      isBaseUnitVariant: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}is_base_unit_variant']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_variant_id'] = Variable<String>(productVariantId);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || isBaseUnitVariant != null) {
      map['is_base_unit_variant'] = Variable<bool?>(isBaseUnitVariant);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectProductVariantCompanion toCompanion(bool nullToAbsent) {
    return ProjectProductVariantCompanion(
      productVariantId: Value(productVariantId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      isBaseUnitVariant: isBaseUnitVariant == null && nullToAbsent
          ? const Value.absent()
          : Value(isBaseUnitVariant),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectProductVariantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectProductVariantData(
      productVariantId: serializer.fromJson<String>(json['productVariantId']),
      type: serializer.fromJson<String?>(json['type']),
      isBaseUnitVariant: serializer.fromJson<bool?>(json['isBaseUnitVariant']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productVariantId': serializer.toJson<String>(productVariantId),
      'type': serializer.toJson<String?>(type),
      'isBaseUnitVariant': serializer.toJson<bool?>(isBaseUnitVariant),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectProductVariantData copyWith(
          {String? productVariantId,
          String? type,
          bool? isBaseUnitVariant,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ProjectProductVariantData(
        productVariantId: productVariantId ?? this.productVariantId,
        type: type ?? this.type,
        isBaseUnitVariant: isBaseUnitVariant ?? this.isBaseUnitVariant,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectProductVariantData(')
          ..write('productVariantId: $productVariantId, ')
          ..write('type: $type, ')
          ..write('isBaseUnitVariant: $isBaseUnitVariant, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      productVariantId,
      type,
      isBaseUnitVariant,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectProductVariantData &&
          other.productVariantId == this.productVariantId &&
          other.type == this.type &&
          other.isBaseUnitVariant == this.isBaseUnitVariant &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ProjectProductVariantCompanion
    extends UpdateCompanion<ProjectProductVariantData> {
  final Value<String> productVariantId;
  final Value<String?> type;
  final Value<bool?> isBaseUnitVariant;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ProjectProductVariantCompanion({
    this.productVariantId = const Value.absent(),
    this.type = const Value.absent(),
    this.isBaseUnitVariant = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectProductVariantCompanion.insert({
    required String productVariantId,
    this.type = const Value.absent(),
    this.isBaseUnitVariant = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : productVariantId = Value(productVariantId);
  static Insertable<ProjectProductVariantData> custom({
    Expression<String>? productVariantId,
    Expression<String?>? type,
    Expression<bool?>? isBaseUnitVariant,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (productVariantId != null) 'product_variant_id': productVariantId,
      if (type != null) 'type': type,
      if (isBaseUnitVariant != null) 'is_base_unit_variant': isBaseUnitVariant,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectProductVariantCompanion copyWith(
      {Value<String>? productVariantId,
      Value<String?>? type,
      Value<bool?>? isBaseUnitVariant,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ProjectProductVariantCompanion(
      productVariantId: productVariantId ?? this.productVariantId,
      type: type ?? this.type,
      isBaseUnitVariant: isBaseUnitVariant ?? this.isBaseUnitVariant,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productVariantId.present) {
      map['product_variant_id'] = Variable<String>(productVariantId.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (isBaseUnitVariant.present) {
      map['is_base_unit_variant'] = Variable<bool?>(isBaseUnitVariant.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectProductVariantCompanion(')
          ..write('productVariantId: $productVariantId, ')
          ..write('type: $type, ')
          ..write('isBaseUnitVariant: $isBaseUnitVariant, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectProductVariantTable extends ProjectProductVariant
    with TableInfo<$ProjectProductVariantTable, ProjectProductVariantData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectProductVariantTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _productVariantIdMeta =
      const VerificationMeta('productVariantId');
  @override
  late final GeneratedColumn<String?> productVariantId =
      GeneratedColumn<String?>('product_variant_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isBaseUnitVariantMeta =
      const VerificationMeta('isBaseUnitVariant');
  @override
  late final GeneratedColumn<bool?> isBaseUnitVariant = GeneratedColumn<bool?>(
      'is_base_unit_variant', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_base_unit_variant IN (0, 1))');
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        productVariantId,
        type,
        isBaseUnitVariant,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_product_variant';
  @override
  String get actualTableName => 'project_product_variant';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProjectProductVariantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_variant_id')) {
      context.handle(
          _productVariantIdMeta,
          productVariantId.isAcceptableOrUnknown(
              data['product_variant_id']!, _productVariantIdMeta));
    } else if (isInserting) {
      context.missing(_productVariantIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('is_base_unit_variant')) {
      context.handle(
          _isBaseUnitVariantMeta,
          isBaseUnitVariant.isAcceptableOrUnknown(
              data['is_base_unit_variant']!, _isBaseUnitVariantMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productVariantId, auditCreatedBy};
  @override
  ProjectProductVariantData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ProjectProductVariantData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectProductVariantTable createAlias(String alias) {
    return $ProjectProductVariantTable(attachedDatabase, alias);
  }
}

class ProjectResourceData extends DataClass
    implements Insertable<ProjectResourceData> {
  final String? id;
  final String? projectId;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String resource;
  final String? additionalFields;
  ProjectResourceData(
      {this.id,
      this.projectId,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      required this.resource,
      this.additionalFields});
  factory ProjectResourceData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectResourceData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      projectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      resource: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resource'])!,
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String?>(projectId);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    map['resource'] = Variable<String>(resource);
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectResourceCompanion toCompanion(bool nullToAbsent) {
    return ProjectResourceCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      resource: Value(resource),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectResourceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectResourceData(
      id: serializer.fromJson<String?>(json['id']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      resource: serializer.fromJson<String>(json['resource']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'projectId': serializer.toJson<String?>(projectId),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'resource': serializer.toJson<String>(resource),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectResourceData copyWith(
          {String? id,
          String? projectId,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? resource,
          String? additionalFields}) =>
      ProjectResourceData(
        id: id ?? this.id,
        projectId: projectId ?? this.projectId,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        resource: resource ?? this.resource,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectResourceData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('resource: $resource, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      projectId,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      resource,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectResourceData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.resource == this.resource &&
          other.additionalFields == this.additionalFields);
}

class ProjectResourceCompanion extends UpdateCompanion<ProjectResourceData> {
  final Value<String?> id;
  final Value<String?> projectId;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String> resource;
  final Value<String?> additionalFields;
  const ProjectResourceCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.resource = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectResourceCompanion.insert({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    required String resource,
    this.additionalFields = const Value.absent(),
  }) : resource = Value(resource);
  static Insertable<ProjectResourceData> custom({
    Expression<String?>? id,
    Expression<String?>? projectId,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String>? resource,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (resource != null) 'resource': resource,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectResourceCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? projectId,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String>? resource,
      Value<String?>? additionalFields}) {
    return ProjectResourceCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      resource: resource ?? this.resource,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String?>(projectId.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (resource.present) {
      map['resource'] = Variable<String>(resource.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectResourceCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('resource: $resource, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectResourceTable extends ProjectResource
    with TableInfo<$ProjectResourceTable, ProjectResourceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectResourceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<String?> projectId = GeneratedColumn<String?>(
      'project_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _resourceMeta = const VerificationMeta('resource');
  @override
  late final GeneratedColumn<String?> resource = GeneratedColumn<String?>(
      'resource', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints:
          'REFERENCES project_product_variant (product_variant_id)');
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        projectId,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        resource,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_resource';
  @override
  String get actualTableName => 'project_resource';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProjectResourceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('resource')) {
      context.handle(_resourceMeta,
          resource.isAcceptableOrUnknown(data['resource']!, _resourceMeta));
    } else if (isInserting) {
      context.missing(_resourceMeta);
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ProjectResourceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectResourceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectResourceTable createAlias(String alias) {
    return $ProjectResourceTable(attachedDatabase, alias);
  }
}

class ProjectStaffData extends DataClass
    implements Insertable<ProjectStaffData> {
  final String id;
  final String? staffId;
  final String? userId;
  final String? projectId;
  final String? channel;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final int? startDate;
  final int? endDate;
  final String? additionalFields;
  ProjectStaffData(
      {required this.id,
      this.staffId,
      this.userId,
      this.projectId,
      this.channel,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.startDate,
      this.endDate,
      this.additionalFields});
  factory ProjectStaffData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectStaffData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      staffId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}staff_id']),
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      projectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id']),
      channel: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}channel']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      startDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_date']),
      endDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_date']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || staffId != null) {
      map['staff_id'] = Variable<String?>(staffId);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String?>(userId);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String?>(projectId);
    }
    if (!nullToAbsent || channel != null) {
      map['channel'] = Variable<String?>(channel);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || startDate != null) {
      map['start_date'] = Variable<int?>(startDate);
    }
    if (!nullToAbsent || endDate != null) {
      map['end_date'] = Variable<int?>(endDate);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectStaffCompanion toCompanion(bool nullToAbsent) {
    return ProjectStaffCompanion(
      id: Value(id),
      staffId: staffId == null && nullToAbsent
          ? const Value.absent()
          : Value(staffId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      channel: channel == null && nullToAbsent
          ? const Value.absent()
          : Value(channel),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      startDate: startDate == null && nullToAbsent
          ? const Value.absent()
          : Value(startDate),
      endDate: endDate == null && nullToAbsent
          ? const Value.absent()
          : Value(endDate),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectStaffData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectStaffData(
      id: serializer.fromJson<String>(json['id']),
      staffId: serializer.fromJson<String?>(json['staffId']),
      userId: serializer.fromJson<String?>(json['userId']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      channel: serializer.fromJson<String?>(json['channel']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      startDate: serializer.fromJson<int?>(json['startDate']),
      endDate: serializer.fromJson<int?>(json['endDate']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'staffId': serializer.toJson<String?>(staffId),
      'userId': serializer.toJson<String?>(userId),
      'projectId': serializer.toJson<String?>(projectId),
      'channel': serializer.toJson<String?>(channel),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'startDate': serializer.toJson<int?>(startDate),
      'endDate': serializer.toJson<int?>(endDate),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectStaffData copyWith(
          {String? id,
          String? staffId,
          String? userId,
          String? projectId,
          String? channel,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          int? startDate,
          int? endDate,
          String? additionalFields}) =>
      ProjectStaffData(
        id: id ?? this.id,
        staffId: staffId ?? this.staffId,
        userId: userId ?? this.userId,
        projectId: projectId ?? this.projectId,
        channel: channel ?? this.channel,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectStaffData(')
          ..write('id: $id, ')
          ..write('staffId: $staffId, ')
          ..write('userId: $userId, ')
          ..write('projectId: $projectId, ')
          ..write('channel: $channel, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      staffId,
      userId,
      projectId,
      channel,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      startDate,
      endDate,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectStaffData &&
          other.id == this.id &&
          other.staffId == this.staffId &&
          other.userId == this.userId &&
          other.projectId == this.projectId &&
          other.channel == this.channel &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.startDate == this.startDate &&
          other.endDate == this.endDate &&
          other.additionalFields == this.additionalFields);
}

class ProjectStaffCompanion extends UpdateCompanion<ProjectStaffData> {
  final Value<String> id;
  final Value<String?> staffId;
  final Value<String?> userId;
  final Value<String?> projectId;
  final Value<String?> channel;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<int?> startDate;
  final Value<int?> endDate;
  final Value<String?> additionalFields;
  const ProjectStaffCompanion({
    this.id = const Value.absent(),
    this.staffId = const Value.absent(),
    this.userId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.channel = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectStaffCompanion.insert({
    required String id,
    this.staffId = const Value.absent(),
    this.userId = const Value.absent(),
    this.projectId = const Value.absent(),
    this.channel = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.startDate = const Value.absent(),
    this.endDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : id = Value(id);
  static Insertable<ProjectStaffData> custom({
    Expression<String>? id,
    Expression<String?>? staffId,
    Expression<String?>? userId,
    Expression<String?>? projectId,
    Expression<String?>? channel,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<int?>? startDate,
    Expression<int?>? endDate,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (staffId != null) 'staff_id': staffId,
      if (userId != null) 'user_id': userId,
      if (projectId != null) 'project_id': projectId,
      if (channel != null) 'channel': channel,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (startDate != null) 'start_date': startDate,
      if (endDate != null) 'end_date': endDate,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectStaffCompanion copyWith(
      {Value<String>? id,
      Value<String?>? staffId,
      Value<String?>? userId,
      Value<String?>? projectId,
      Value<String?>? channel,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<int?>? startDate,
      Value<int?>? endDate,
      Value<String?>? additionalFields}) {
    return ProjectStaffCompanion(
      id: id ?? this.id,
      staffId: staffId ?? this.staffId,
      userId: userId ?? this.userId,
      projectId: projectId ?? this.projectId,
      channel: channel ?? this.channel,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (staffId.present) {
      map['staff_id'] = Variable<String?>(staffId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String?>(userId.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String?>(projectId.value);
    }
    if (channel.present) {
      map['channel'] = Variable<String?>(channel.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<int?>(startDate.value);
    }
    if (endDate.present) {
      map['end_date'] = Variable<int?>(endDate.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectStaffCompanion(')
          ..write('id: $id, ')
          ..write('staffId: $staffId, ')
          ..write('userId: $userId, ')
          ..write('projectId: $projectId, ')
          ..write('channel: $channel, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('startDate: $startDate, ')
          ..write('endDate: $endDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectStaffTable extends ProjectStaff
    with TableInfo<$ProjectStaffTable, ProjectStaffData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectStaffTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _staffIdMeta = const VerificationMeta('staffId');
  @override
  late final GeneratedColumn<String?> staffId = GeneratedColumn<String?>(
      'staff_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'user_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<String?> projectId = GeneratedColumn<String?>(
      'project_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _channelMeta = const VerificationMeta('channel');
  @override
  late final GeneratedColumn<String?> channel = GeneratedColumn<String?>(
      'channel', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _startDateMeta = const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<int?> startDate = GeneratedColumn<int?>(
      'start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _endDateMeta = const VerificationMeta('endDate');
  @override
  late final GeneratedColumn<int?> endDate = GeneratedColumn<int?>(
      'end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        staffId,
        userId,
        projectId,
        channel,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        startDate,
        endDate,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_staff';
  @override
  String get actualTableName => 'project_staff';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectStaffData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('staff_id')) {
      context.handle(_staffIdMeta,
          staffId.isAcceptableOrUnknown(data['staff_id']!, _staffIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    }
    if (data.containsKey('channel')) {
      context.handle(_channelMeta,
          channel.isAcceptableOrUnknown(data['channel']!, _channelMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    }
    if (data.containsKey('end_date')) {
      context.handle(_endDateMeta,
          endDate.isAcceptableOrUnknown(data['end_date']!, _endDateMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ProjectStaffData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectStaffData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectStaffTable createAlias(String alias) {
    return $ProjectStaffTable(attachedDatabase, alias);
  }
}

class ProjectTypeData extends DataClass implements Insertable<ProjectTypeData> {
  final String? id;
  final String? name;
  final String? code;
  final String? group;
  final String? beneficiaryType;
  final String? eligibilityCriteria;
  final String? taskProcedure;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ProjectTypeData(
      {this.id,
      this.name,
      this.code,
      this.group,
      this.beneficiaryType,
      this.eligibilityCriteria,
      this.taskProcedure,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ProjectTypeData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectTypeData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      group: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}group']),
      beneficiaryType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}beneficiary_type']),
      eligibilityCriteria: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}eligibility_criteria']),
      taskProcedure: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}task_procedure']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || group != null) {
      map['group'] = Variable<String?>(group);
    }
    if (!nullToAbsent || beneficiaryType != null) {
      map['beneficiary_type'] = Variable<String?>(beneficiaryType);
    }
    if (!nullToAbsent || eligibilityCriteria != null) {
      map['eligibility_criteria'] = Variable<String?>(eligibilityCriteria);
    }
    if (!nullToAbsent || taskProcedure != null) {
      map['task_procedure'] = Variable<String?>(taskProcedure);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ProjectTypeCompanion toCompanion(bool nullToAbsent) {
    return ProjectTypeCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      group:
          group == null && nullToAbsent ? const Value.absent() : Value(group),
      beneficiaryType: beneficiaryType == null && nullToAbsent
          ? const Value.absent()
          : Value(beneficiaryType),
      eligibilityCriteria: eligibilityCriteria == null && nullToAbsent
          ? const Value.absent()
          : Value(eligibilityCriteria),
      taskProcedure: taskProcedure == null && nullToAbsent
          ? const Value.absent()
          : Value(taskProcedure),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ProjectTypeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectTypeData(
      id: serializer.fromJson<String?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      code: serializer.fromJson<String?>(json['code']),
      group: serializer.fromJson<String?>(json['group']),
      beneficiaryType: serializer.fromJson<String?>(json['beneficiaryType']),
      eligibilityCriteria:
          serializer.fromJson<String?>(json['eligibilityCriteria']),
      taskProcedure: serializer.fromJson<String?>(json['taskProcedure']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'name': serializer.toJson<String?>(name),
      'code': serializer.toJson<String?>(code),
      'group': serializer.toJson<String?>(group),
      'beneficiaryType': serializer.toJson<String?>(beneficiaryType),
      'eligibilityCriteria': serializer.toJson<String?>(eligibilityCriteria),
      'taskProcedure': serializer.toJson<String?>(taskProcedure),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ProjectTypeData copyWith(
          {String? id,
          String? name,
          String? code,
          String? group,
          String? beneficiaryType,
          String? eligibilityCriteria,
          String? taskProcedure,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ProjectTypeData(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        group: group ?? this.group,
        beneficiaryType: beneficiaryType ?? this.beneficiaryType,
        eligibilityCriteria: eligibilityCriteria ?? this.eligibilityCriteria,
        taskProcedure: taskProcedure ?? this.taskProcedure,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectTypeData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('group: $group, ')
          ..write('beneficiaryType: $beneficiaryType, ')
          ..write('eligibilityCriteria: $eligibilityCriteria, ')
          ..write('taskProcedure: $taskProcedure, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      code,
      group,
      beneficiaryType,
      eligibilityCriteria,
      taskProcedure,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectTypeData &&
          other.id == this.id &&
          other.name == this.name &&
          other.code == this.code &&
          other.group == this.group &&
          other.beneficiaryType == this.beneficiaryType &&
          other.eligibilityCriteria == this.eligibilityCriteria &&
          other.taskProcedure == this.taskProcedure &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ProjectTypeCompanion extends UpdateCompanion<ProjectTypeData> {
  final Value<String?> id;
  final Value<String?> name;
  final Value<String?> code;
  final Value<String?> group;
  final Value<String?> beneficiaryType;
  final Value<String?> eligibilityCriteria;
  final Value<String?> taskProcedure;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ProjectTypeCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.group = const Value.absent(),
    this.beneficiaryType = const Value.absent(),
    this.eligibilityCriteria = const Value.absent(),
    this.taskProcedure = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ProjectTypeCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.group = const Value.absent(),
    this.beneficiaryType = const Value.absent(),
    this.eligibilityCriteria = const Value.absent(),
    this.taskProcedure = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<ProjectTypeData> custom({
    Expression<String?>? id,
    Expression<String?>? name,
    Expression<String?>? code,
    Expression<String?>? group,
    Expression<String?>? beneficiaryType,
    Expression<String?>? eligibilityCriteria,
    Expression<String?>? taskProcedure,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (group != null) 'group': group,
      if (beneficiaryType != null) 'beneficiary_type': beneficiaryType,
      if (eligibilityCriteria != null)
        'eligibility_criteria': eligibilityCriteria,
      if (taskProcedure != null) 'task_procedure': taskProcedure,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ProjectTypeCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? name,
      Value<String?>? code,
      Value<String?>? group,
      Value<String?>? beneficiaryType,
      Value<String?>? eligibilityCriteria,
      Value<String?>? taskProcedure,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ProjectTypeCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      group: group ?? this.group,
      beneficiaryType: beneficiaryType ?? this.beneficiaryType,
      eligibilityCriteria: eligibilityCriteria ?? this.eligibilityCriteria,
      taskProcedure: taskProcedure ?? this.taskProcedure,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (group.present) {
      map['group'] = Variable<String?>(group.value);
    }
    if (beneficiaryType.present) {
      map['beneficiary_type'] = Variable<String?>(beneficiaryType.value);
    }
    if (eligibilityCriteria.present) {
      map['eligibility_criteria'] =
          Variable<String?>(eligibilityCriteria.value);
    }
    if (taskProcedure.present) {
      map['task_procedure'] = Variable<String?>(taskProcedure.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectTypeCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('group: $group, ')
          ..write('beneficiaryType: $beneficiaryType, ')
          ..write('eligibilityCriteria: $eligibilityCriteria, ')
          ..write('taskProcedure: $taskProcedure, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ProjectTypeTable extends ProjectType
    with TableInfo<$ProjectTypeTable, ProjectTypeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectTypeTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _groupMeta = const VerificationMeta('group');
  @override
  late final GeneratedColumn<String?> group = GeneratedColumn<String?>(
      'group', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _beneficiaryTypeMeta =
      const VerificationMeta('beneficiaryType');
  @override
  late final GeneratedColumn<String?> beneficiaryType =
      GeneratedColumn<String?>('beneficiary_type', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _eligibilityCriteriaMeta =
      const VerificationMeta('eligibilityCriteria');
  @override
  late final GeneratedColumn<String?> eligibilityCriteria =
      GeneratedColumn<String?>('eligibility_criteria', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _taskProcedureMeta =
      const VerificationMeta('taskProcedure');
  @override
  late final GeneratedColumn<String?> taskProcedure = GeneratedColumn<String?>(
      'task_procedure', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        code,
        group,
        beneficiaryType,
        eligibilityCriteria,
        taskProcedure,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'project_type';
  @override
  String get actualTableName => 'project_type';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectTypeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('group')) {
      context.handle(
          _groupMeta, group.isAcceptableOrUnknown(data['group']!, _groupMeta));
    }
    if (data.containsKey('beneficiary_type')) {
      context.handle(
          _beneficiaryTypeMeta,
          beneficiaryType.isAcceptableOrUnknown(
              data['beneficiary_type']!, _beneficiaryTypeMeta));
    }
    if (data.containsKey('eligibility_criteria')) {
      context.handle(
          _eligibilityCriteriaMeta,
          eligibilityCriteria.isAcceptableOrUnknown(
              data['eligibility_criteria']!, _eligibilityCriteriaMeta));
    }
    if (data.containsKey('task_procedure')) {
      context.handle(
          _taskProcedureMeta,
          taskProcedure.isAcceptableOrUnknown(
              data['task_procedure']!, _taskProcedureMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  ProjectTypeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectTypeData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectTypeTable createAlias(String alias) {
    return $ProjectTypeTable(attachedDatabase, alias);
  }
}

class StockData extends DataClass implements Insertable<StockData> {
  final String? id;
  final String? tenantId;
  final String? facilityId;
  final String? productVariantId;
  final String? referenceId;
  final String? referenceIdType;
  final String? transactingPartyId;
  final String? transactingPartyType;
  final String? quantity;
  final String? waybillNumber;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final bool? isDeleted;
  final int? rowVersion;
  final TransactionType? transactionType;
  final TransactionReason? transactionReason;
  final String? additionalFields;
  StockData(
      {this.id,
      this.tenantId,
      this.facilityId,
      this.productVariantId,
      this.referenceId,
      this.referenceIdType,
      this.transactingPartyId,
      this.transactingPartyType,
      this.quantity,
      this.waybillNumber,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.isDeleted,
      this.rowVersion,
      this.transactionType,
      this.transactionReason,
      this.additionalFields});
  factory StockData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return StockData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      facilityId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}facility_id']),
      productVariantId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}product_variant_id']),
      referenceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id']),
      referenceIdType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id_type']),
      transactingPartyId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}transacting_party_id']),
      transactingPartyType: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}transacting_party_type']),
      quantity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      waybillNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}waybill_number']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      transactionType: $StockTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}transaction_type'])),
      transactionReason: $StockTable.$converter1.mapToDart(const IntType()
          .mapFromDatabaseResponse(
              data['${effectivePrefix}transaction_reason'])),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || facilityId != null) {
      map['facility_id'] = Variable<String?>(facilityId);
    }
    if (!nullToAbsent || productVariantId != null) {
      map['product_variant_id'] = Variable<String?>(productVariantId);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String?>(referenceId);
    }
    if (!nullToAbsent || referenceIdType != null) {
      map['reference_id_type'] = Variable<String?>(referenceIdType);
    }
    if (!nullToAbsent || transactingPartyId != null) {
      map['transacting_party_id'] = Variable<String?>(transactingPartyId);
    }
    if (!nullToAbsent || transactingPartyType != null) {
      map['transacting_party_type'] = Variable<String?>(transactingPartyType);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<String?>(quantity);
    }
    if (!nullToAbsent || waybillNumber != null) {
      map['waybill_number'] = Variable<String?>(waybillNumber);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || transactionType != null) {
      final converter = $StockTable.$converter0;
      map['transaction_type'] =
          Variable<int?>(converter.mapToSql(transactionType));
    }
    if (!nullToAbsent || transactionReason != null) {
      final converter = $StockTable.$converter1;
      map['transaction_reason'] =
          Variable<int?>(converter.mapToSql(transactionReason));
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  StockCompanion toCompanion(bool nullToAbsent) {
    return StockCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      facilityId: facilityId == null && nullToAbsent
          ? const Value.absent()
          : Value(facilityId),
      productVariantId: productVariantId == null && nullToAbsent
          ? const Value.absent()
          : Value(productVariantId),
      referenceId: referenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceId),
      referenceIdType: referenceIdType == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceIdType),
      transactingPartyId: transactingPartyId == null && nullToAbsent
          ? const Value.absent()
          : Value(transactingPartyId),
      transactingPartyType: transactingPartyType == null && nullToAbsent
          ? const Value.absent()
          : Value(transactingPartyType),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      waybillNumber: waybillNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(waybillNumber),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      transactionType: transactionType == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionType),
      transactionReason: transactionReason == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionReason),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory StockData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockData(
      id: serializer.fromJson<String?>(json['id']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      facilityId: serializer.fromJson<String?>(json['facilityId']),
      productVariantId: serializer.fromJson<String?>(json['productVariantId']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      referenceIdType: serializer.fromJson<String?>(json['referenceIdType']),
      transactingPartyId:
          serializer.fromJson<String?>(json['transactingPartyId']),
      transactingPartyType:
          serializer.fromJson<String?>(json['transactingPartyType']),
      quantity: serializer.fromJson<String?>(json['quantity']),
      waybillNumber: serializer.fromJson<String?>(json['waybillNumber']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      transactionType:
          serializer.fromJson<TransactionType?>(json['transactionType']),
      transactionReason:
          serializer.fromJson<TransactionReason?>(json['transactionReason']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tenantId': serializer.toJson<String?>(tenantId),
      'facilityId': serializer.toJson<String?>(facilityId),
      'productVariantId': serializer.toJson<String?>(productVariantId),
      'referenceId': serializer.toJson<String?>(referenceId),
      'referenceIdType': serializer.toJson<String?>(referenceIdType),
      'transactingPartyId': serializer.toJson<String?>(transactingPartyId),
      'transactingPartyType': serializer.toJson<String?>(transactingPartyType),
      'quantity': serializer.toJson<String?>(quantity),
      'waybillNumber': serializer.toJson<String?>(waybillNumber),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'transactionType': serializer.toJson<TransactionType?>(transactionType),
      'transactionReason':
          serializer.toJson<TransactionReason?>(transactionReason),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  StockData copyWith(
          {String? id,
          String? tenantId,
          String? facilityId,
          String? productVariantId,
          String? referenceId,
          String? referenceIdType,
          String? transactingPartyId,
          String? transactingPartyType,
          String? quantity,
          String? waybillNumber,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          bool? isDeleted,
          int? rowVersion,
          TransactionType? transactionType,
          TransactionReason? transactionReason,
          String? additionalFields}) =>
      StockData(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        facilityId: facilityId ?? this.facilityId,
        productVariantId: productVariantId ?? this.productVariantId,
        referenceId: referenceId ?? this.referenceId,
        referenceIdType: referenceIdType ?? this.referenceIdType,
        transactingPartyId: transactingPartyId ?? this.transactingPartyId,
        transactingPartyType: transactingPartyType ?? this.transactingPartyType,
        quantity: quantity ?? this.quantity,
        waybillNumber: waybillNumber ?? this.waybillNumber,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        transactionType: transactionType ?? this.transactionType,
        transactionReason: transactionReason ?? this.transactionReason,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('StockData(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('facilityId: $facilityId, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('referenceId: $referenceId, ')
          ..write('referenceIdType: $referenceIdType, ')
          ..write('transactingPartyId: $transactingPartyId, ')
          ..write('transactingPartyType: $transactingPartyType, ')
          ..write('quantity: $quantity, ')
          ..write('waybillNumber: $waybillNumber, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('transactionType: $transactionType, ')
          ..write('transactionReason: $transactionReason, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tenantId,
      facilityId,
      productVariantId,
      referenceId,
      referenceIdType,
      transactingPartyId,
      transactingPartyType,
      quantity,
      waybillNumber,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      isDeleted,
      rowVersion,
      transactionType,
      transactionReason,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockData &&
          other.id == this.id &&
          other.tenantId == this.tenantId &&
          other.facilityId == this.facilityId &&
          other.productVariantId == this.productVariantId &&
          other.referenceId == this.referenceId &&
          other.referenceIdType == this.referenceIdType &&
          other.transactingPartyId == this.transactingPartyId &&
          other.transactingPartyType == this.transactingPartyType &&
          other.quantity == this.quantity &&
          other.waybillNumber == this.waybillNumber &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.transactionType == this.transactionType &&
          other.transactionReason == this.transactionReason &&
          other.additionalFields == this.additionalFields);
}

class StockCompanion extends UpdateCompanion<StockData> {
  final Value<String?> id;
  final Value<String?> tenantId;
  final Value<String?> facilityId;
  final Value<String?> productVariantId;
  final Value<String?> referenceId;
  final Value<String?> referenceIdType;
  final Value<String?> transactingPartyId;
  final Value<String?> transactingPartyType;
  final Value<String?> quantity;
  final Value<String?> waybillNumber;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<TransactionType?> transactionType;
  final Value<TransactionReason?> transactionReason;
  final Value<String?> additionalFields;
  const StockCompanion({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.facilityId = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.referenceIdType = const Value.absent(),
    this.transactingPartyId = const Value.absent(),
    this.transactingPartyType = const Value.absent(),
    this.quantity = const Value.absent(),
    this.waybillNumber = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.transactionType = const Value.absent(),
    this.transactionReason = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  StockCompanion.insert({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.facilityId = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.referenceIdType = const Value.absent(),
    this.transactingPartyId = const Value.absent(),
    this.transactingPartyType = const Value.absent(),
    this.quantity = const Value.absent(),
    this.waybillNumber = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.transactionType = const Value.absent(),
    this.transactionReason = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<StockData> custom({
    Expression<String?>? id,
    Expression<String?>? tenantId,
    Expression<String?>? facilityId,
    Expression<String?>? productVariantId,
    Expression<String?>? referenceId,
    Expression<String?>? referenceIdType,
    Expression<String?>? transactingPartyId,
    Expression<String?>? transactingPartyType,
    Expression<String?>? quantity,
    Expression<String?>? waybillNumber,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<TransactionType?>? transactionType,
    Expression<TransactionReason?>? transactionReason,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tenantId != null) 'tenant_id': tenantId,
      if (facilityId != null) 'facility_id': facilityId,
      if (productVariantId != null) 'product_variant_id': productVariantId,
      if (referenceId != null) 'reference_id': referenceId,
      if (referenceIdType != null) 'reference_id_type': referenceIdType,
      if (transactingPartyId != null)
        'transacting_party_id': transactingPartyId,
      if (transactingPartyType != null)
        'transacting_party_type': transactingPartyType,
      if (quantity != null) 'quantity': quantity,
      if (waybillNumber != null) 'waybill_number': waybillNumber,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (transactionType != null) 'transaction_type': transactionType,
      if (transactionReason != null) 'transaction_reason': transactionReason,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  StockCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tenantId,
      Value<String?>? facilityId,
      Value<String?>? productVariantId,
      Value<String?>? referenceId,
      Value<String?>? referenceIdType,
      Value<String?>? transactingPartyId,
      Value<String?>? transactingPartyType,
      Value<String?>? quantity,
      Value<String?>? waybillNumber,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<TransactionType?>? transactionType,
      Value<TransactionReason?>? transactionReason,
      Value<String?>? additionalFields}) {
    return StockCompanion(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      facilityId: facilityId ?? this.facilityId,
      productVariantId: productVariantId ?? this.productVariantId,
      referenceId: referenceId ?? this.referenceId,
      referenceIdType: referenceIdType ?? this.referenceIdType,
      transactingPartyId: transactingPartyId ?? this.transactingPartyId,
      transactingPartyType: transactingPartyType ?? this.transactingPartyType,
      quantity: quantity ?? this.quantity,
      waybillNumber: waybillNumber ?? this.waybillNumber,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      transactionType: transactionType ?? this.transactionType,
      transactionReason: transactionReason ?? this.transactionReason,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (facilityId.present) {
      map['facility_id'] = Variable<String?>(facilityId.value);
    }
    if (productVariantId.present) {
      map['product_variant_id'] = Variable<String?>(productVariantId.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String?>(referenceId.value);
    }
    if (referenceIdType.present) {
      map['reference_id_type'] = Variable<String?>(referenceIdType.value);
    }
    if (transactingPartyId.present) {
      map['transacting_party_id'] = Variable<String?>(transactingPartyId.value);
    }
    if (transactingPartyType.present) {
      map['transacting_party_type'] =
          Variable<String?>(transactingPartyType.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<String?>(quantity.value);
    }
    if (waybillNumber.present) {
      map['waybill_number'] = Variable<String?>(waybillNumber.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (transactionType.present) {
      final converter = $StockTable.$converter0;
      map['transaction_type'] =
          Variable<int?>(converter.mapToSql(transactionType.value));
    }
    if (transactionReason.present) {
      final converter = $StockTable.$converter1;
      map['transaction_reason'] =
          Variable<int?>(converter.mapToSql(transactionReason.value));
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockCompanion(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('facilityId: $facilityId, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('referenceId: $referenceId, ')
          ..write('referenceIdType: $referenceIdType, ')
          ..write('transactingPartyId: $transactingPartyId, ')
          ..write('transactingPartyType: $transactingPartyType, ')
          ..write('quantity: $quantity, ')
          ..write('waybillNumber: $waybillNumber, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('transactionType: $transactionType, ')
          ..write('transactionReason: $transactionReason, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $StockTable extends Stock with TableInfo<$StockTable, StockData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _facilityIdMeta = const VerificationMeta('facilityId');
  @override
  late final GeneratedColumn<String?> facilityId = GeneratedColumn<String?>(
      'facility_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _productVariantIdMeta =
      const VerificationMeta('productVariantId');
  @override
  late final GeneratedColumn<String?> productVariantId =
      GeneratedColumn<String?>('product_variant_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdMeta =
      const VerificationMeta('referenceId');
  @override
  late final GeneratedColumn<String?> referenceId = GeneratedColumn<String?>(
      'reference_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdTypeMeta =
      const VerificationMeta('referenceIdType');
  @override
  late final GeneratedColumn<String?> referenceIdType =
      GeneratedColumn<String?>('reference_id_type', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _transactingPartyIdMeta =
      const VerificationMeta('transactingPartyId');
  @override
  late final GeneratedColumn<String?> transactingPartyId =
      GeneratedColumn<String?>('transacting_party_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _transactingPartyTypeMeta =
      const VerificationMeta('transactingPartyType');
  @override
  late final GeneratedColumn<String?> transactingPartyType =
      GeneratedColumn<String?>('transacting_party_type', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<String?> quantity = GeneratedColumn<String?>(
      'quantity', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _waybillNumberMeta =
      const VerificationMeta('waybillNumber');
  @override
  late final GeneratedColumn<String?> waybillNumber = GeneratedColumn<String?>(
      'waybill_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _transactionTypeMeta =
      const VerificationMeta('transactionType');
  @override
  late final GeneratedColumnWithTypeConverter<TransactionType?, int?>
      transactionType = GeneratedColumn<int?>(
              'transaction_type', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<TransactionType?>($StockTable.$converter0);
  final VerificationMeta _transactionReasonMeta =
      const VerificationMeta('transactionReason');
  @override
  late final GeneratedColumnWithTypeConverter<TransactionReason?, int?>
      transactionReason = GeneratedColumn<int?>(
              'transaction_reason', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<TransactionReason?>($StockTable.$converter1);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tenantId,
        facilityId,
        productVariantId,
        referenceId,
        referenceIdType,
        transactingPartyId,
        transactingPartyType,
        quantity,
        waybillNumber,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        isDeleted,
        rowVersion,
        transactionType,
        transactionReason,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'stock';
  @override
  String get actualTableName => 'stock';
  @override
  VerificationContext validateIntegrity(Insertable<StockData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('facility_id')) {
      context.handle(
          _facilityIdMeta,
          facilityId.isAcceptableOrUnknown(
              data['facility_id']!, _facilityIdMeta));
    }
    if (data.containsKey('product_variant_id')) {
      context.handle(
          _productVariantIdMeta,
          productVariantId.isAcceptableOrUnknown(
              data['product_variant_id']!, _productVariantIdMeta));
    }
    if (data.containsKey('reference_id')) {
      context.handle(
          _referenceIdMeta,
          referenceId.isAcceptableOrUnknown(
              data['reference_id']!, _referenceIdMeta));
    }
    if (data.containsKey('reference_id_type')) {
      context.handle(
          _referenceIdTypeMeta,
          referenceIdType.isAcceptableOrUnknown(
              data['reference_id_type']!, _referenceIdTypeMeta));
    }
    if (data.containsKey('transacting_party_id')) {
      context.handle(
          _transactingPartyIdMeta,
          transactingPartyId.isAcceptableOrUnknown(
              data['transacting_party_id']!, _transactingPartyIdMeta));
    }
    if (data.containsKey('transacting_party_type')) {
      context.handle(
          _transactingPartyTypeMeta,
          transactingPartyType.isAcceptableOrUnknown(
              data['transacting_party_type']!, _transactingPartyTypeMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('waybill_number')) {
      context.handle(
          _waybillNumberMeta,
          waybillNumber.isAcceptableOrUnknown(
              data['waybill_number']!, _waybillNumberMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    context.handle(_transactionTypeMeta, const VerificationResult.success());
    context.handle(_transactionReasonMeta, const VerificationResult.success());
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  StockData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return StockData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $StockTable createAlias(String alias) {
    return $StockTable(attachedDatabase, alias);
  }

  static TypeConverter<TransactionType?, int> $converter0 =
      const EnumIndexConverter<TransactionType>(TransactionType.values);
  static TypeConverter<TransactionReason?, int> $converter1 =
      const EnumIndexConverter<TransactionReason>(TransactionReason.values);
}

class StockReconciliationData extends DataClass
    implements Insertable<StockReconciliationData> {
  final String? id;
  final String? tenantId;
  final String? facilityId;
  final String? productVariantId;
  final String? referenceId;
  final String? referenceIdType;
  final int? physicalCount;
  final int? calculatedCount;
  final String? commentsOnReconciliation;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final bool? isDeleted;
  final int? rowVersion;
  final int dateOfReconciliation;
  final String? additionalFields;
  StockReconciliationData(
      {this.id,
      this.tenantId,
      this.facilityId,
      this.productVariantId,
      this.referenceId,
      this.referenceIdType,
      this.physicalCount,
      this.calculatedCount,
      this.commentsOnReconciliation,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.isDeleted,
      this.rowVersion,
      required this.dateOfReconciliation,
      this.additionalFields});
  factory StockReconciliationData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return StockReconciliationData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      facilityId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}facility_id']),
      productVariantId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}product_variant_id']),
      referenceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id']),
      referenceIdType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id_type']),
      physicalCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}physical_count']),
      calculatedCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}calculated_count']),
      commentsOnReconciliation: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}comments_on_reconciliation']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      dateOfReconciliation: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}date_of_reconciliation'])!,
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || facilityId != null) {
      map['facility_id'] = Variable<String?>(facilityId);
    }
    if (!nullToAbsent || productVariantId != null) {
      map['product_variant_id'] = Variable<String?>(productVariantId);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String?>(referenceId);
    }
    if (!nullToAbsent || referenceIdType != null) {
      map['reference_id_type'] = Variable<String?>(referenceIdType);
    }
    if (!nullToAbsent || physicalCount != null) {
      map['physical_count'] = Variable<int?>(physicalCount);
    }
    if (!nullToAbsent || calculatedCount != null) {
      map['calculated_count'] = Variable<int?>(calculatedCount);
    }
    if (!nullToAbsent || commentsOnReconciliation != null) {
      map['comments_on_reconciliation'] =
          Variable<String?>(commentsOnReconciliation);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    map['date_of_reconciliation'] = Variable<int>(dateOfReconciliation);
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  StockReconciliationCompanion toCompanion(bool nullToAbsent) {
    return StockReconciliationCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      facilityId: facilityId == null && nullToAbsent
          ? const Value.absent()
          : Value(facilityId),
      productVariantId: productVariantId == null && nullToAbsent
          ? const Value.absent()
          : Value(productVariantId),
      referenceId: referenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceId),
      referenceIdType: referenceIdType == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceIdType),
      physicalCount: physicalCount == null && nullToAbsent
          ? const Value.absent()
          : Value(physicalCount),
      calculatedCount: calculatedCount == null && nullToAbsent
          ? const Value.absent()
          : Value(calculatedCount),
      commentsOnReconciliation: commentsOnReconciliation == null && nullToAbsent
          ? const Value.absent()
          : Value(commentsOnReconciliation),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      dateOfReconciliation: Value(dateOfReconciliation),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory StockReconciliationData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StockReconciliationData(
      id: serializer.fromJson<String?>(json['id']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      facilityId: serializer.fromJson<String?>(json['facilityId']),
      productVariantId: serializer.fromJson<String?>(json['productVariantId']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      referenceIdType: serializer.fromJson<String?>(json['referenceIdType']),
      physicalCount: serializer.fromJson<int?>(json['physicalCount']),
      calculatedCount: serializer.fromJson<int?>(json['calculatedCount']),
      commentsOnReconciliation:
          serializer.fromJson<String?>(json['commentsOnReconciliation']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      dateOfReconciliation:
          serializer.fromJson<int>(json['dateOfReconciliation']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tenantId': serializer.toJson<String?>(tenantId),
      'facilityId': serializer.toJson<String?>(facilityId),
      'productVariantId': serializer.toJson<String?>(productVariantId),
      'referenceId': serializer.toJson<String?>(referenceId),
      'referenceIdType': serializer.toJson<String?>(referenceIdType),
      'physicalCount': serializer.toJson<int?>(physicalCount),
      'calculatedCount': serializer.toJson<int?>(calculatedCount),
      'commentsOnReconciliation':
          serializer.toJson<String?>(commentsOnReconciliation),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'dateOfReconciliation': serializer.toJson<int>(dateOfReconciliation),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  StockReconciliationData copyWith(
          {String? id,
          String? tenantId,
          String? facilityId,
          String? productVariantId,
          String? referenceId,
          String? referenceIdType,
          int? physicalCount,
          int? calculatedCount,
          String? commentsOnReconciliation,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          bool? isDeleted,
          int? rowVersion,
          int? dateOfReconciliation,
          String? additionalFields}) =>
      StockReconciliationData(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        facilityId: facilityId ?? this.facilityId,
        productVariantId: productVariantId ?? this.productVariantId,
        referenceId: referenceId ?? this.referenceId,
        referenceIdType: referenceIdType ?? this.referenceIdType,
        physicalCount: physicalCount ?? this.physicalCount,
        calculatedCount: calculatedCount ?? this.calculatedCount,
        commentsOnReconciliation:
            commentsOnReconciliation ?? this.commentsOnReconciliation,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        dateOfReconciliation: dateOfReconciliation ?? this.dateOfReconciliation,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('StockReconciliationData(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('facilityId: $facilityId, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('referenceId: $referenceId, ')
          ..write('referenceIdType: $referenceIdType, ')
          ..write('physicalCount: $physicalCount, ')
          ..write('calculatedCount: $calculatedCount, ')
          ..write('commentsOnReconciliation: $commentsOnReconciliation, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('dateOfReconciliation: $dateOfReconciliation, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tenantId,
      facilityId,
      productVariantId,
      referenceId,
      referenceIdType,
      physicalCount,
      calculatedCount,
      commentsOnReconciliation,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      isDeleted,
      rowVersion,
      dateOfReconciliation,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StockReconciliationData &&
          other.id == this.id &&
          other.tenantId == this.tenantId &&
          other.facilityId == this.facilityId &&
          other.productVariantId == this.productVariantId &&
          other.referenceId == this.referenceId &&
          other.referenceIdType == this.referenceIdType &&
          other.physicalCount == this.physicalCount &&
          other.calculatedCount == this.calculatedCount &&
          other.commentsOnReconciliation == this.commentsOnReconciliation &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.dateOfReconciliation == this.dateOfReconciliation &&
          other.additionalFields == this.additionalFields);
}

class StockReconciliationCompanion
    extends UpdateCompanion<StockReconciliationData> {
  final Value<String?> id;
  final Value<String?> tenantId;
  final Value<String?> facilityId;
  final Value<String?> productVariantId;
  final Value<String?> referenceId;
  final Value<String?> referenceIdType;
  final Value<int?> physicalCount;
  final Value<int?> calculatedCount;
  final Value<String?> commentsOnReconciliation;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<int> dateOfReconciliation;
  final Value<String?> additionalFields;
  const StockReconciliationCompanion({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.facilityId = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.referenceIdType = const Value.absent(),
    this.physicalCount = const Value.absent(),
    this.calculatedCount = const Value.absent(),
    this.commentsOnReconciliation = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.dateOfReconciliation = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  StockReconciliationCompanion.insert({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.facilityId = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.referenceIdType = const Value.absent(),
    this.physicalCount = const Value.absent(),
    this.calculatedCount = const Value.absent(),
    this.commentsOnReconciliation = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    required int dateOfReconciliation,
    this.additionalFields = const Value.absent(),
  })  : clientReferenceId = Value(clientReferenceId),
        dateOfReconciliation = Value(dateOfReconciliation);
  static Insertable<StockReconciliationData> custom({
    Expression<String?>? id,
    Expression<String?>? tenantId,
    Expression<String?>? facilityId,
    Expression<String?>? productVariantId,
    Expression<String?>? referenceId,
    Expression<String?>? referenceIdType,
    Expression<int?>? physicalCount,
    Expression<int?>? calculatedCount,
    Expression<String?>? commentsOnReconciliation,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<int>? dateOfReconciliation,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tenantId != null) 'tenant_id': tenantId,
      if (facilityId != null) 'facility_id': facilityId,
      if (productVariantId != null) 'product_variant_id': productVariantId,
      if (referenceId != null) 'reference_id': referenceId,
      if (referenceIdType != null) 'reference_id_type': referenceIdType,
      if (physicalCount != null) 'physical_count': physicalCount,
      if (calculatedCount != null) 'calculated_count': calculatedCount,
      if (commentsOnReconciliation != null)
        'comments_on_reconciliation': commentsOnReconciliation,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (dateOfReconciliation != null)
        'date_of_reconciliation': dateOfReconciliation,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  StockReconciliationCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tenantId,
      Value<String?>? facilityId,
      Value<String?>? productVariantId,
      Value<String?>? referenceId,
      Value<String?>? referenceIdType,
      Value<int?>? physicalCount,
      Value<int?>? calculatedCount,
      Value<String?>? commentsOnReconciliation,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<int>? dateOfReconciliation,
      Value<String?>? additionalFields}) {
    return StockReconciliationCompanion(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      facilityId: facilityId ?? this.facilityId,
      productVariantId: productVariantId ?? this.productVariantId,
      referenceId: referenceId ?? this.referenceId,
      referenceIdType: referenceIdType ?? this.referenceIdType,
      physicalCount: physicalCount ?? this.physicalCount,
      calculatedCount: calculatedCount ?? this.calculatedCount,
      commentsOnReconciliation:
          commentsOnReconciliation ?? this.commentsOnReconciliation,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      dateOfReconciliation: dateOfReconciliation ?? this.dateOfReconciliation,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (facilityId.present) {
      map['facility_id'] = Variable<String?>(facilityId.value);
    }
    if (productVariantId.present) {
      map['product_variant_id'] = Variable<String?>(productVariantId.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String?>(referenceId.value);
    }
    if (referenceIdType.present) {
      map['reference_id_type'] = Variable<String?>(referenceIdType.value);
    }
    if (physicalCount.present) {
      map['physical_count'] = Variable<int?>(physicalCount.value);
    }
    if (calculatedCount.present) {
      map['calculated_count'] = Variable<int?>(calculatedCount.value);
    }
    if (commentsOnReconciliation.present) {
      map['comments_on_reconciliation'] =
          Variable<String?>(commentsOnReconciliation.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (dateOfReconciliation.present) {
      map['date_of_reconciliation'] = Variable<int>(dateOfReconciliation.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StockReconciliationCompanion(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('facilityId: $facilityId, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('referenceId: $referenceId, ')
          ..write('referenceIdType: $referenceIdType, ')
          ..write('physicalCount: $physicalCount, ')
          ..write('calculatedCount: $calculatedCount, ')
          ..write('commentsOnReconciliation: $commentsOnReconciliation, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('dateOfReconciliation: $dateOfReconciliation, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $StockReconciliationTable extends StockReconciliation
    with TableInfo<$StockReconciliationTable, StockReconciliationData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StockReconciliationTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _facilityIdMeta = const VerificationMeta('facilityId');
  @override
  late final GeneratedColumn<String?> facilityId = GeneratedColumn<String?>(
      'facility_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _productVariantIdMeta =
      const VerificationMeta('productVariantId');
  @override
  late final GeneratedColumn<String?> productVariantId =
      GeneratedColumn<String?>('product_variant_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdMeta =
      const VerificationMeta('referenceId');
  @override
  late final GeneratedColumn<String?> referenceId = GeneratedColumn<String?>(
      'reference_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdTypeMeta =
      const VerificationMeta('referenceIdType');
  @override
  late final GeneratedColumn<String?> referenceIdType =
      GeneratedColumn<String?>('reference_id_type', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _physicalCountMeta =
      const VerificationMeta('physicalCount');
  @override
  late final GeneratedColumn<int?> physicalCount = GeneratedColumn<int?>(
      'physical_count', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _calculatedCountMeta =
      const VerificationMeta('calculatedCount');
  @override
  late final GeneratedColumn<int?> calculatedCount = GeneratedColumn<int?>(
      'calculated_count', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _commentsOnReconciliationMeta =
      const VerificationMeta('commentsOnReconciliation');
  @override
  late final GeneratedColumn<String?> commentsOnReconciliation =
      GeneratedColumn<String?>('comments_on_reconciliation', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _dateOfReconciliationMeta =
      const VerificationMeta('dateOfReconciliation');
  @override
  late final GeneratedColumn<int?> dateOfReconciliation = GeneratedColumn<int?>(
      'date_of_reconciliation', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tenantId,
        facilityId,
        productVariantId,
        referenceId,
        referenceIdType,
        physicalCount,
        calculatedCount,
        commentsOnReconciliation,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        isDeleted,
        rowVersion,
        dateOfReconciliation,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'stock_reconciliation';
  @override
  String get actualTableName => 'stock_reconciliation';
  @override
  VerificationContext validateIntegrity(
      Insertable<StockReconciliationData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('facility_id')) {
      context.handle(
          _facilityIdMeta,
          facilityId.isAcceptableOrUnknown(
              data['facility_id']!, _facilityIdMeta));
    }
    if (data.containsKey('product_variant_id')) {
      context.handle(
          _productVariantIdMeta,
          productVariantId.isAcceptableOrUnknown(
              data['product_variant_id']!, _productVariantIdMeta));
    }
    if (data.containsKey('reference_id')) {
      context.handle(
          _referenceIdMeta,
          referenceId.isAcceptableOrUnknown(
              data['reference_id']!, _referenceIdMeta));
    }
    if (data.containsKey('reference_id_type')) {
      context.handle(
          _referenceIdTypeMeta,
          referenceIdType.isAcceptableOrUnknown(
              data['reference_id_type']!, _referenceIdTypeMeta));
    }
    if (data.containsKey('physical_count')) {
      context.handle(
          _physicalCountMeta,
          physicalCount.isAcceptableOrUnknown(
              data['physical_count']!, _physicalCountMeta));
    }
    if (data.containsKey('calculated_count')) {
      context.handle(
          _calculatedCountMeta,
          calculatedCount.isAcceptableOrUnknown(
              data['calculated_count']!, _calculatedCountMeta));
    }
    if (data.containsKey('comments_on_reconciliation')) {
      context.handle(
          _commentsOnReconciliationMeta,
          commentsOnReconciliation.isAcceptableOrUnknown(
              data['comments_on_reconciliation']!,
              _commentsOnReconciliationMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('date_of_reconciliation')) {
      context.handle(
          _dateOfReconciliationMeta,
          dateOfReconciliation.isAcceptableOrUnknown(
              data['date_of_reconciliation']!, _dateOfReconciliationMeta));
    } else if (isInserting) {
      context.missing(_dateOfReconciliationMeta);
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  StockReconciliationData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return StockReconciliationData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $StockReconciliationTable createAlias(String alias) {
    return $StockReconciliationTable(attachedDatabase, alias);
  }
}

class TargetData extends DataClass implements Insertable<TargetData> {
  final String id;
  final String? clientReferenceId;
  final double? totalNo;
  final double? targetNo;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final BeneficiaryType? beneficiaryType;
  final String? additionalFields;
  TargetData(
      {required this.id,
      this.clientReferenceId,
      this.totalNo,
      this.targetNo,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.beneficiaryType,
      this.additionalFields});
  factory TargetData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TargetData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id']),
      totalNo: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_no']),
      targetNo: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_no']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      beneficiaryType: $TargetTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}beneficiary_type'])),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || clientReferenceId != null) {
      map['client_reference_id'] = Variable<String?>(clientReferenceId);
    }
    if (!nullToAbsent || totalNo != null) {
      map['total_no'] = Variable<double?>(totalNo);
    }
    if (!nullToAbsent || targetNo != null) {
      map['target_no'] = Variable<double?>(targetNo);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || beneficiaryType != null) {
      final converter = $TargetTable.$converter0;
      map['beneficiary_type'] =
          Variable<int?>(converter.mapToSql(beneficiaryType));
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  TargetCompanion toCompanion(bool nullToAbsent) {
    return TargetCompanion(
      id: Value(id),
      clientReferenceId: clientReferenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(clientReferenceId),
      totalNo: totalNo == null && nullToAbsent
          ? const Value.absent()
          : Value(totalNo),
      targetNo: targetNo == null && nullToAbsent
          ? const Value.absent()
          : Value(targetNo),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      beneficiaryType: beneficiaryType == null && nullToAbsent
          ? const Value.absent()
          : Value(beneficiaryType),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory TargetData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TargetData(
      id: serializer.fromJson<String>(json['id']),
      clientReferenceId:
          serializer.fromJson<String?>(json['clientReferenceId']),
      totalNo: serializer.fromJson<double?>(json['totalNo']),
      targetNo: serializer.fromJson<double?>(json['targetNo']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      beneficiaryType:
          serializer.fromJson<BeneficiaryType?>(json['beneficiaryType']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'clientReferenceId': serializer.toJson<String?>(clientReferenceId),
      'totalNo': serializer.toJson<double?>(totalNo),
      'targetNo': serializer.toJson<double?>(targetNo),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'beneficiaryType': serializer.toJson<BeneficiaryType?>(beneficiaryType),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  TargetData copyWith(
          {String? id,
          String? clientReferenceId,
          double? totalNo,
          double? targetNo,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          BeneficiaryType? beneficiaryType,
          String? additionalFields}) =>
      TargetData(
        id: id ?? this.id,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        totalNo: totalNo ?? this.totalNo,
        targetNo: targetNo ?? this.targetNo,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        beneficiaryType: beneficiaryType ?? this.beneficiaryType,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('TargetData(')
          ..write('id: $id, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('totalNo: $totalNo, ')
          ..write('targetNo: $targetNo, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('beneficiaryType: $beneficiaryType, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      clientReferenceId,
      totalNo,
      targetNo,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      beneficiaryType,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TargetData &&
          other.id == this.id &&
          other.clientReferenceId == this.clientReferenceId &&
          other.totalNo == this.totalNo &&
          other.targetNo == this.targetNo &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.beneficiaryType == this.beneficiaryType &&
          other.additionalFields == this.additionalFields);
}

class TargetCompanion extends UpdateCompanion<TargetData> {
  final Value<String> id;
  final Value<String?> clientReferenceId;
  final Value<double?> totalNo;
  final Value<double?> targetNo;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<BeneficiaryType?> beneficiaryType;
  final Value<String?> additionalFields;
  const TargetCompanion({
    this.id = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.totalNo = const Value.absent(),
    this.targetNo = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.beneficiaryType = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  TargetCompanion.insert({
    required String id,
    this.clientReferenceId = const Value.absent(),
    this.totalNo = const Value.absent(),
    this.targetNo = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.beneficiaryType = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : id = Value(id);
  static Insertable<TargetData> custom({
    Expression<String>? id,
    Expression<String?>? clientReferenceId,
    Expression<double?>? totalNo,
    Expression<double?>? targetNo,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<BeneficiaryType?>? beneficiaryType,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (totalNo != null) 'total_no': totalNo,
      if (targetNo != null) 'target_no': targetNo,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (beneficiaryType != null) 'beneficiary_type': beneficiaryType,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  TargetCompanion copyWith(
      {Value<String>? id,
      Value<String?>? clientReferenceId,
      Value<double?>? totalNo,
      Value<double?>? targetNo,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<BeneficiaryType?>? beneficiaryType,
      Value<String?>? additionalFields}) {
    return TargetCompanion(
      id: id ?? this.id,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      totalNo: totalNo ?? this.totalNo,
      targetNo: targetNo ?? this.targetNo,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      beneficiaryType: beneficiaryType ?? this.beneficiaryType,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String?>(clientReferenceId.value);
    }
    if (totalNo.present) {
      map['total_no'] = Variable<double?>(totalNo.value);
    }
    if (targetNo.present) {
      map['target_no'] = Variable<double?>(targetNo.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (beneficiaryType.present) {
      final converter = $TargetTable.$converter0;
      map['beneficiary_type'] =
          Variable<int?>(converter.mapToSql(beneficiaryType.value));
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TargetCompanion(')
          ..write('id: $id, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('totalNo: $totalNo, ')
          ..write('targetNo: $targetNo, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('beneficiaryType: $beneficiaryType, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $TargetTable extends Target with TableInfo<$TargetTable, TargetData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TargetTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _totalNoMeta = const VerificationMeta('totalNo');
  @override
  late final GeneratedColumn<double?> totalNo = GeneratedColumn<double?>(
      'total_no', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _targetNoMeta = const VerificationMeta('targetNo');
  @override
  late final GeneratedColumn<double?> targetNo = GeneratedColumn<double?>(
      'target_no', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _beneficiaryTypeMeta =
      const VerificationMeta('beneficiaryType');
  @override
  late final GeneratedColumnWithTypeConverter<BeneficiaryType?, int?>
      beneficiaryType = GeneratedColumn<int?>(
              'beneficiary_type', aliasedName, true,
              type: const IntType(), requiredDuringInsert: false)
          .withConverter<BeneficiaryType?>($TargetTable.$converter0);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clientReferenceId,
        totalNo,
        targetNo,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        beneficiaryType,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'target';
  @override
  String get actualTableName => 'target';
  @override
  VerificationContext validateIntegrity(Insertable<TargetData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    }
    if (data.containsKey('total_no')) {
      context.handle(_totalNoMeta,
          totalNo.isAcceptableOrUnknown(data['total_no']!, _totalNoMeta));
    }
    if (data.containsKey('target_no')) {
      context.handle(_targetNoMeta,
          targetNo.isAcceptableOrUnknown(data['target_no']!, _targetNoMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    context.handle(_beneficiaryTypeMeta, const VerificationResult.success());
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  TargetData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TargetData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TargetTable createAlias(String alias) {
    return $TargetTable(attachedDatabase, alias);
  }

  static TypeConverter<BeneficiaryType?, int> $converter0 =
      const EnumIndexConverter<BeneficiaryType>(BeneficiaryType.values);
}

class TaskData extends DataClass implements Insertable<TaskData> {
  final String? id;
  final String? projectId;
  final String? projectBeneficiaryId;
  final String? projectBeneficiaryClientReferenceId;
  final String? createdBy;
  final String? status;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final int? plannedStartDate;
  final int? plannedEndDate;
  final int? actualStartDate;
  final int? actualEndDate;
  final int? createdDate;
  final String? additionalFields;
  TaskData(
      {this.id,
      this.projectId,
      this.projectBeneficiaryId,
      this.projectBeneficiaryClientReferenceId,
      this.createdBy,
      this.status,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.plannedStartDate,
      this.plannedEndDate,
      this.actualStartDate,
      this.actualEndDate,
      this.createdDate,
      this.additionalFields});
  factory TaskData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TaskData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      projectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id']),
      projectBeneficiaryId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}project_beneficiary_id']),
      projectBeneficiaryClientReferenceId: const StringType()
          .mapFromDatabaseResponse(data[
              '${effectivePrefix}project_beneficiary_client_reference_id']),
      createdBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_by']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      plannedStartDate: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}planned_start_date']),
      plannedEndDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}planned_end_date']),
      actualStartDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}actual_start_date']),
      actualEndDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}actual_end_date']),
      createdDate: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_date']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || projectId != null) {
      map['project_id'] = Variable<String?>(projectId);
    }
    if (!nullToAbsent || projectBeneficiaryId != null) {
      map['project_beneficiary_id'] = Variable<String?>(projectBeneficiaryId);
    }
    if (!nullToAbsent || projectBeneficiaryClientReferenceId != null) {
      map['project_beneficiary_client_reference_id'] =
          Variable<String?>(projectBeneficiaryClientReferenceId);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String?>(createdBy);
    }
    if (!nullToAbsent || status != null) {
      map['status'] = Variable<String?>(status);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || plannedStartDate != null) {
      map['planned_start_date'] = Variable<int?>(plannedStartDate);
    }
    if (!nullToAbsent || plannedEndDate != null) {
      map['planned_end_date'] = Variable<int?>(plannedEndDate);
    }
    if (!nullToAbsent || actualStartDate != null) {
      map['actual_start_date'] = Variable<int?>(actualStartDate);
    }
    if (!nullToAbsent || actualEndDate != null) {
      map['actual_end_date'] = Variable<int?>(actualEndDate);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<int?>(createdDate);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  TaskCompanion toCompanion(bool nullToAbsent) {
    return TaskCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      projectId: projectId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectId),
      projectBeneficiaryId: projectBeneficiaryId == null && nullToAbsent
          ? const Value.absent()
          : Value(projectBeneficiaryId),
      projectBeneficiaryClientReferenceId:
          projectBeneficiaryClientReferenceId == null && nullToAbsent
              ? const Value.absent()
              : Value(projectBeneficiaryClientReferenceId),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      plannedStartDate: plannedStartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(plannedStartDate),
      plannedEndDate: plannedEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(plannedEndDate),
      actualStartDate: actualStartDate == null && nullToAbsent
          ? const Value.absent()
          : Value(actualStartDate),
      actualEndDate: actualEndDate == null && nullToAbsent
          ? const Value.absent()
          : Value(actualEndDate),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory TaskData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskData(
      id: serializer.fromJson<String?>(json['id']),
      projectId: serializer.fromJson<String?>(json['projectId']),
      projectBeneficiaryId:
          serializer.fromJson<String?>(json['projectBeneficiaryId']),
      projectBeneficiaryClientReferenceId: serializer
          .fromJson<String?>(json['projectBeneficiaryClientReferenceId']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      status: serializer.fromJson<String?>(json['status']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      plannedStartDate: serializer.fromJson<int?>(json['plannedStartDate']),
      plannedEndDate: serializer.fromJson<int?>(json['plannedEndDate']),
      actualStartDate: serializer.fromJson<int?>(json['actualStartDate']),
      actualEndDate: serializer.fromJson<int?>(json['actualEndDate']),
      createdDate: serializer.fromJson<int?>(json['createdDate']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'projectId': serializer.toJson<String?>(projectId),
      'projectBeneficiaryId': serializer.toJson<String?>(projectBeneficiaryId),
      'projectBeneficiaryClientReferenceId':
          serializer.toJson<String?>(projectBeneficiaryClientReferenceId),
      'createdBy': serializer.toJson<String?>(createdBy),
      'status': serializer.toJson<String?>(status),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'plannedStartDate': serializer.toJson<int?>(plannedStartDate),
      'plannedEndDate': serializer.toJson<int?>(plannedEndDate),
      'actualStartDate': serializer.toJson<int?>(actualStartDate),
      'actualEndDate': serializer.toJson<int?>(actualEndDate),
      'createdDate': serializer.toJson<int?>(createdDate),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  TaskData copyWith(
          {String? id,
          String? projectId,
          String? projectBeneficiaryId,
          String? projectBeneficiaryClientReferenceId,
          String? createdBy,
          String? status,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          int? plannedStartDate,
          int? plannedEndDate,
          int? actualStartDate,
          int? actualEndDate,
          int? createdDate,
          String? additionalFields}) =>
      TaskData(
        id: id ?? this.id,
        projectId: projectId ?? this.projectId,
        projectBeneficiaryId: projectBeneficiaryId ?? this.projectBeneficiaryId,
        projectBeneficiaryClientReferenceId:
            projectBeneficiaryClientReferenceId ??
                this.projectBeneficiaryClientReferenceId,
        createdBy: createdBy ?? this.createdBy,
        status: status ?? this.status,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        plannedStartDate: plannedStartDate ?? this.plannedStartDate,
        plannedEndDate: plannedEndDate ?? this.plannedEndDate,
        actualStartDate: actualStartDate ?? this.actualStartDate,
        actualEndDate: actualEndDate ?? this.actualEndDate,
        createdDate: createdDate ?? this.createdDate,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('TaskData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('projectBeneficiaryId: $projectBeneficiaryId, ')
          ..write(
              'projectBeneficiaryClientReferenceId: $projectBeneficiaryClientReferenceId, ')
          ..write('createdBy: $createdBy, ')
          ..write('status: $status, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('plannedStartDate: $plannedStartDate, ')
          ..write('plannedEndDate: $plannedEndDate, ')
          ..write('actualStartDate: $actualStartDate, ')
          ..write('actualEndDate: $actualEndDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      projectId,
      projectBeneficiaryId,
      projectBeneficiaryClientReferenceId,
      createdBy,
      status,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      plannedStartDate,
      plannedEndDate,
      actualStartDate,
      actualEndDate,
      createdDate,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.projectBeneficiaryId == this.projectBeneficiaryId &&
          other.projectBeneficiaryClientReferenceId ==
              this.projectBeneficiaryClientReferenceId &&
          other.createdBy == this.createdBy &&
          other.status == this.status &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.plannedStartDate == this.plannedStartDate &&
          other.plannedEndDate == this.plannedEndDate &&
          other.actualStartDate == this.actualStartDate &&
          other.actualEndDate == this.actualEndDate &&
          other.createdDate == this.createdDate &&
          other.additionalFields == this.additionalFields);
}

class TaskCompanion extends UpdateCompanion<TaskData> {
  final Value<String?> id;
  final Value<String?> projectId;
  final Value<String?> projectBeneficiaryId;
  final Value<String?> projectBeneficiaryClientReferenceId;
  final Value<String?> createdBy;
  final Value<String?> status;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<int?> plannedStartDate;
  final Value<int?> plannedEndDate;
  final Value<int?> actualStartDate;
  final Value<int?> actualEndDate;
  final Value<int?> createdDate;
  final Value<String?> additionalFields;
  const TaskCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.projectBeneficiaryId = const Value.absent(),
    this.projectBeneficiaryClientReferenceId = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.status = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.plannedStartDate = const Value.absent(),
    this.plannedEndDate = const Value.absent(),
    this.actualStartDate = const Value.absent(),
    this.actualEndDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  TaskCompanion.insert({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.projectBeneficiaryId = const Value.absent(),
    this.projectBeneficiaryClientReferenceId = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.status = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.plannedStartDate = const Value.absent(),
    this.plannedEndDate = const Value.absent(),
    this.actualStartDate = const Value.absent(),
    this.actualEndDate = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<TaskData> custom({
    Expression<String?>? id,
    Expression<String?>? projectId,
    Expression<String?>? projectBeneficiaryId,
    Expression<String?>? projectBeneficiaryClientReferenceId,
    Expression<String?>? createdBy,
    Expression<String?>? status,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<int?>? plannedStartDate,
    Expression<int?>? plannedEndDate,
    Expression<int?>? actualStartDate,
    Expression<int?>? actualEndDate,
    Expression<int?>? createdDate,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (projectBeneficiaryId != null)
        'project_beneficiary_id': projectBeneficiaryId,
      if (projectBeneficiaryClientReferenceId != null)
        'project_beneficiary_client_reference_id':
            projectBeneficiaryClientReferenceId,
      if (createdBy != null) 'created_by': createdBy,
      if (status != null) 'status': status,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (plannedStartDate != null) 'planned_start_date': plannedStartDate,
      if (plannedEndDate != null) 'planned_end_date': plannedEndDate,
      if (actualStartDate != null) 'actual_start_date': actualStartDate,
      if (actualEndDate != null) 'actual_end_date': actualEndDate,
      if (createdDate != null) 'created_date': createdDate,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  TaskCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? projectId,
      Value<String?>? projectBeneficiaryId,
      Value<String?>? projectBeneficiaryClientReferenceId,
      Value<String?>? createdBy,
      Value<String?>? status,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<int?>? plannedStartDate,
      Value<int?>? plannedEndDate,
      Value<int?>? actualStartDate,
      Value<int?>? actualEndDate,
      Value<int?>? createdDate,
      Value<String?>? additionalFields}) {
    return TaskCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      projectBeneficiaryId: projectBeneficiaryId ?? this.projectBeneficiaryId,
      projectBeneficiaryClientReferenceId:
          projectBeneficiaryClientReferenceId ??
              this.projectBeneficiaryClientReferenceId,
      createdBy: createdBy ?? this.createdBy,
      status: status ?? this.status,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      plannedStartDate: plannedStartDate ?? this.plannedStartDate,
      plannedEndDate: plannedEndDate ?? this.plannedEndDate,
      actualStartDate: actualStartDate ?? this.actualStartDate,
      actualEndDate: actualEndDate ?? this.actualEndDate,
      createdDate: createdDate ?? this.createdDate,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<String?>(projectId.value);
    }
    if (projectBeneficiaryId.present) {
      map['project_beneficiary_id'] =
          Variable<String?>(projectBeneficiaryId.value);
    }
    if (projectBeneficiaryClientReferenceId.present) {
      map['project_beneficiary_client_reference_id'] =
          Variable<String?>(projectBeneficiaryClientReferenceId.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String?>(createdBy.value);
    }
    if (status.present) {
      map['status'] = Variable<String?>(status.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (plannedStartDate.present) {
      map['planned_start_date'] = Variable<int?>(plannedStartDate.value);
    }
    if (plannedEndDate.present) {
      map['planned_end_date'] = Variable<int?>(plannedEndDate.value);
    }
    if (actualStartDate.present) {
      map['actual_start_date'] = Variable<int?>(actualStartDate.value);
    }
    if (actualEndDate.present) {
      map['actual_end_date'] = Variable<int?>(actualEndDate.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<int?>(createdDate.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('projectBeneficiaryId: $projectBeneficiaryId, ')
          ..write(
              'projectBeneficiaryClientReferenceId: $projectBeneficiaryClientReferenceId, ')
          ..write('createdBy: $createdBy, ')
          ..write('status: $status, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('plannedStartDate: $plannedStartDate, ')
          ..write('plannedEndDate: $plannedEndDate, ')
          ..write('actualStartDate: $actualStartDate, ')
          ..write('actualEndDate: $actualEndDate, ')
          ..write('createdDate: $createdDate, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $TaskTable extends Task with TableInfo<$TaskTable, TaskData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<String?> projectId = GeneratedColumn<String?>(
      'project_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectBeneficiaryIdMeta =
      const VerificationMeta('projectBeneficiaryId');
  @override
  late final GeneratedColumn<String?> projectBeneficiaryId =
      GeneratedColumn<String?>('project_beneficiary_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _projectBeneficiaryClientReferenceIdMeta =
      const VerificationMeta('projectBeneficiaryClientReferenceId');
  @override
  late final GeneratedColumn<String?> projectBeneficiaryClientReferenceId =
      GeneratedColumn<String?>(
          'project_beneficiary_client_reference_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdByMeta = const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String?> createdBy = GeneratedColumn<String?>(
      'created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String?> status = GeneratedColumn<String?>(
      'status', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _plannedStartDateMeta =
      const VerificationMeta('plannedStartDate');
  @override
  late final GeneratedColumn<int?> plannedStartDate = GeneratedColumn<int?>(
      'planned_start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _plannedEndDateMeta =
      const VerificationMeta('plannedEndDate');
  @override
  late final GeneratedColumn<int?> plannedEndDate = GeneratedColumn<int?>(
      'planned_end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _actualStartDateMeta =
      const VerificationMeta('actualStartDate');
  @override
  late final GeneratedColumn<int?> actualStartDate = GeneratedColumn<int?>(
      'actual_start_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _actualEndDateMeta =
      const VerificationMeta('actualEndDate');
  @override
  late final GeneratedColumn<int?> actualEndDate = GeneratedColumn<int?>(
      'actual_end_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<int?> createdDate = GeneratedColumn<int?>(
      'created_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        projectId,
        projectBeneficiaryId,
        projectBeneficiaryClientReferenceId,
        createdBy,
        status,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        plannedStartDate,
        plannedEndDate,
        actualStartDate,
        actualEndDate,
        createdDate,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'task';
  @override
  String get actualTableName => 'task';
  @override
  VerificationContext validateIntegrity(Insertable<TaskData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    }
    if (data.containsKey('project_beneficiary_id')) {
      context.handle(
          _projectBeneficiaryIdMeta,
          projectBeneficiaryId.isAcceptableOrUnknown(
              data['project_beneficiary_id']!, _projectBeneficiaryIdMeta));
    }
    if (data.containsKey('project_beneficiary_client_reference_id')) {
      context.handle(
          _projectBeneficiaryClientReferenceIdMeta,
          projectBeneficiaryClientReferenceId.isAcceptableOrUnknown(
              data['project_beneficiary_client_reference_id']!,
              _projectBeneficiaryClientReferenceIdMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('planned_start_date')) {
      context.handle(
          _plannedStartDateMeta,
          plannedStartDate.isAcceptableOrUnknown(
              data['planned_start_date']!, _plannedStartDateMeta));
    }
    if (data.containsKey('planned_end_date')) {
      context.handle(
          _plannedEndDateMeta,
          plannedEndDate.isAcceptableOrUnknown(
              data['planned_end_date']!, _plannedEndDateMeta));
    }
    if (data.containsKey('actual_start_date')) {
      context.handle(
          _actualStartDateMeta,
          actualStartDate.isAcceptableOrUnknown(
              data['actual_start_date']!, _actualStartDateMeta));
    }
    if (data.containsKey('actual_end_date')) {
      context.handle(
          _actualEndDateMeta,
          actualEndDate.isAcceptableOrUnknown(
              data['actual_end_date']!, _actualEndDateMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  TaskData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TaskData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TaskTable createAlias(String alias) {
    return $TaskTable(attachedDatabase, alias);
  }
}

class TaskResourceData extends DataClass
    implements Insertable<TaskResourceData> {
  final String clientReferenceId;
  final String? taskId;
  final String? id;
  final String? productVariantId;
  final String? quantity;
  final bool? isDelivered;
  final String? deliveryComment;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  TaskResourceData(
      {required this.clientReferenceId,
      this.taskId,
      this.id,
      this.productVariantId,
      this.quantity,
      this.isDelivered,
      this.deliveryComment,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory TaskResourceData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TaskResourceData(
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      taskId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}task_id']),
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      productVariantId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}product_variant_id']),
      quantity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity']),
      isDelivered: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_delivered']),
      deliveryComment: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}delivery_comment']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || taskId != null) {
      map['task_id'] = Variable<String?>(taskId);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || productVariantId != null) {
      map['product_variant_id'] = Variable<String?>(productVariantId);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<String?>(quantity);
    }
    if (!nullToAbsent || isDelivered != null) {
      map['is_delivered'] = Variable<bool?>(isDelivered);
    }
    if (!nullToAbsent || deliveryComment != null) {
      map['delivery_comment'] = Variable<String?>(deliveryComment);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  TaskResourceCompanion toCompanion(bool nullToAbsent) {
    return TaskResourceCompanion(
      clientReferenceId: Value(clientReferenceId),
      taskId:
          taskId == null && nullToAbsent ? const Value.absent() : Value(taskId),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      productVariantId: productVariantId == null && nullToAbsent
          ? const Value.absent()
          : Value(productVariantId),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      isDelivered: isDelivered == null && nullToAbsent
          ? const Value.absent()
          : Value(isDelivered),
      deliveryComment: deliveryComment == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryComment),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory TaskResourceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskResourceData(
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      taskId: serializer.fromJson<String?>(json['taskId']),
      id: serializer.fromJson<String?>(json['id']),
      productVariantId: serializer.fromJson<String?>(json['productVariantId']),
      quantity: serializer.fromJson<String?>(json['quantity']),
      isDelivered: serializer.fromJson<bool?>(json['isDelivered']),
      deliveryComment: serializer.fromJson<String?>(json['deliveryComment']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'taskId': serializer.toJson<String?>(taskId),
      'id': serializer.toJson<String?>(id),
      'productVariantId': serializer.toJson<String?>(productVariantId),
      'quantity': serializer.toJson<String?>(quantity),
      'isDelivered': serializer.toJson<bool?>(isDelivered),
      'deliveryComment': serializer.toJson<String?>(deliveryComment),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  TaskResourceData copyWith(
          {String? clientReferenceId,
          String? taskId,
          String? id,
          String? productVariantId,
          String? quantity,
          bool? isDelivered,
          String? deliveryComment,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      TaskResourceData(
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        taskId: taskId ?? this.taskId,
        id: id ?? this.id,
        productVariantId: productVariantId ?? this.productVariantId,
        quantity: quantity ?? this.quantity,
        isDelivered: isDelivered ?? this.isDelivered,
        deliveryComment: deliveryComment ?? this.deliveryComment,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('TaskResourceData(')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('taskId: $taskId, ')
          ..write('id: $id, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('quantity: $quantity, ')
          ..write('isDelivered: $isDelivered, ')
          ..write('deliveryComment: $deliveryComment, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      clientReferenceId,
      taskId,
      id,
      productVariantId,
      quantity,
      isDelivered,
      deliveryComment,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskResourceData &&
          other.clientReferenceId == this.clientReferenceId &&
          other.taskId == this.taskId &&
          other.id == this.id &&
          other.productVariantId == this.productVariantId &&
          other.quantity == this.quantity &&
          other.isDelivered == this.isDelivered &&
          other.deliveryComment == this.deliveryComment &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class TaskResourceCompanion extends UpdateCompanion<TaskResourceData> {
  final Value<String> clientReferenceId;
  final Value<String?> taskId;
  final Value<String?> id;
  final Value<String?> productVariantId;
  final Value<String?> quantity;
  final Value<bool?> isDelivered;
  final Value<String?> deliveryComment;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const TaskResourceCompanion({
    this.clientReferenceId = const Value.absent(),
    this.taskId = const Value.absent(),
    this.id = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.isDelivered = const Value.absent(),
    this.deliveryComment = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  TaskResourceCompanion.insert({
    required String clientReferenceId,
    this.taskId = const Value.absent(),
    this.id = const Value.absent(),
    this.productVariantId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.isDelivered = const Value.absent(),
    this.deliveryComment = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<TaskResourceData> custom({
    Expression<String>? clientReferenceId,
    Expression<String?>? taskId,
    Expression<String?>? id,
    Expression<String?>? productVariantId,
    Expression<String?>? quantity,
    Expression<bool?>? isDelivered,
    Expression<String?>? deliveryComment,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (taskId != null) 'task_id': taskId,
      if (id != null) 'id': id,
      if (productVariantId != null) 'product_variant_id': productVariantId,
      if (quantity != null) 'quantity': quantity,
      if (isDelivered != null) 'is_delivered': isDelivered,
      if (deliveryComment != null) 'delivery_comment': deliveryComment,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  TaskResourceCompanion copyWith(
      {Value<String>? clientReferenceId,
      Value<String?>? taskId,
      Value<String?>? id,
      Value<String?>? productVariantId,
      Value<String?>? quantity,
      Value<bool?>? isDelivered,
      Value<String?>? deliveryComment,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return TaskResourceCompanion(
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      taskId: taskId ?? this.taskId,
      id: id ?? this.id,
      productVariantId: productVariantId ?? this.productVariantId,
      quantity: quantity ?? this.quantity,
      isDelivered: isDelivered ?? this.isDelivered,
      deliveryComment: deliveryComment ?? this.deliveryComment,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (taskId.present) {
      map['task_id'] = Variable<String?>(taskId.value);
    }
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (productVariantId.present) {
      map['product_variant_id'] = Variable<String?>(productVariantId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<String?>(quantity.value);
    }
    if (isDelivered.present) {
      map['is_delivered'] = Variable<bool?>(isDelivered.value);
    }
    if (deliveryComment.present) {
      map['delivery_comment'] = Variable<String?>(deliveryComment.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskResourceCompanion(')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('taskId: $taskId, ')
          ..write('id: $id, ')
          ..write('productVariantId: $productVariantId, ')
          ..write('quantity: $quantity, ')
          ..write('isDelivered: $isDelivered, ')
          ..write('deliveryComment: $deliveryComment, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $TaskResourceTable extends TaskResource
    with TableInfo<$TaskResourceTable, TaskResourceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskResourceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _taskIdMeta = const VerificationMeta('taskId');
  @override
  late final GeneratedColumn<String?> taskId = GeneratedColumn<String?>(
      'task_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _productVariantIdMeta =
      const VerificationMeta('productVariantId');
  @override
  late final GeneratedColumn<String?> productVariantId =
      GeneratedColumn<String?>('product_variant_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<String?> quantity = GeneratedColumn<String?>(
      'quantity', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeliveredMeta =
      const VerificationMeta('isDelivered');
  @override
  late final GeneratedColumn<bool?> isDelivered = GeneratedColumn<bool?>(
      'is_delivered', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_delivered IN (0, 1))');
  final VerificationMeta _deliveryCommentMeta =
      const VerificationMeta('deliveryComment');
  @override
  late final GeneratedColumn<String?> deliveryComment =
      GeneratedColumn<String?>('delivery_comment', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        clientReferenceId,
        taskId,
        id,
        productVariantId,
        quantity,
        isDelivered,
        deliveryComment,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'task_resource';
  @override
  String get actualTableName => 'task_resource';
  @override
  VerificationContext validateIntegrity(Insertable<TaskResourceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('task_id')) {
      context.handle(_taskIdMeta,
          taskId.isAcceptableOrUnknown(data['task_id']!, _taskIdMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_variant_id')) {
      context.handle(
          _productVariantIdMeta,
          productVariantId.isAcceptableOrUnknown(
              data['product_variant_id']!, _productVariantIdMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('is_delivered')) {
      context.handle(
          _isDeliveredMeta,
          isDelivered.isAcceptableOrUnknown(
              data['is_delivered']!, _isDeliveredMeta));
    }
    if (data.containsKey('delivery_comment')) {
      context.handle(
          _deliveryCommentMeta,
          deliveryComment.isAcceptableOrUnknown(
              data['delivery_comment']!, _deliveryCommentMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientReferenceId, auditCreatedBy};
  @override
  TaskResourceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TaskResourceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TaskResourceTable createAlias(String alias) {
    return $TaskResourceTable(attachedDatabase, alias);
  }
}

class ServiceData extends DataClass implements Insertable<ServiceData> {
  final String? id;
  final String clientId;
  final String? serviceDefId;
  final bool? isActive;
  final String? accountId;
  final String? additionalDetails;
  final String? createdAt;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ServiceData(
      {this.id,
      required this.clientId,
      this.serviceDefId,
      this.isActive,
      this.accountId,
      this.additionalDetails,
      this.createdAt,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ServiceData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      clientId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}client_id'])!,
      serviceDefId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}service_def_id']),
      isActive: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_active']),
      accountId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_id']),
      additionalDetails: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}additional_details']),
      createdAt: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['client_id'] = Variable<String>(clientId);
    if (!nullToAbsent || serviceDefId != null) {
      map['service_def_id'] = Variable<String?>(serviceDefId);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool?>(isActive);
    }
    if (!nullToAbsent || accountId != null) {
      map['account_id'] = Variable<String?>(accountId);
    }
    if (!nullToAbsent || additionalDetails != null) {
      map['additional_details'] = Variable<String?>(additionalDetails);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<String?>(createdAt);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ServiceCompanion toCompanion(bool nullToAbsent) {
    return ServiceCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      clientId: Value(clientId),
      serviceDefId: serviceDefId == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceDefId),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      accountId: accountId == null && nullToAbsent
          ? const Value.absent()
          : Value(accountId),
      additionalDetails: additionalDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalDetails),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ServiceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceData(
      id: serializer.fromJson<String?>(json['id']),
      clientId: serializer.fromJson<String>(json['clientId']),
      serviceDefId: serializer.fromJson<String?>(json['serviceDefId']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      accountId: serializer.fromJson<String?>(json['accountId']),
      additionalDetails:
          serializer.fromJson<String?>(json['additionalDetails']),
      createdAt: serializer.fromJson<String?>(json['createdAt']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'clientId': serializer.toJson<String>(clientId),
      'serviceDefId': serializer.toJson<String?>(serviceDefId),
      'isActive': serializer.toJson<bool?>(isActive),
      'accountId': serializer.toJson<String?>(accountId),
      'additionalDetails': serializer.toJson<String?>(additionalDetails),
      'createdAt': serializer.toJson<String?>(createdAt),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ServiceData copyWith(
          {String? id,
          String? clientId,
          String? serviceDefId,
          bool? isActive,
          String? accountId,
          String? additionalDetails,
          String? createdAt,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ServiceData(
        id: id ?? this.id,
        clientId: clientId ?? this.clientId,
        serviceDefId: serviceDefId ?? this.serviceDefId,
        isActive: isActive ?? this.isActive,
        accountId: accountId ?? this.accountId,
        additionalDetails: additionalDetails ?? this.additionalDetails,
        createdAt: createdAt ?? this.createdAt,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceData(')
          ..write('id: $id, ')
          ..write('clientId: $clientId, ')
          ..write('serviceDefId: $serviceDefId, ')
          ..write('isActive: $isActive, ')
          ..write('accountId: $accountId, ')
          ..write('additionalDetails: $additionalDetails, ')
          ..write('createdAt: $createdAt, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      clientId,
      serviceDefId,
      isActive,
      accountId,
      additionalDetails,
      createdAt,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceData &&
          other.id == this.id &&
          other.clientId == this.clientId &&
          other.serviceDefId == this.serviceDefId &&
          other.isActive == this.isActive &&
          other.accountId == this.accountId &&
          other.additionalDetails == this.additionalDetails &&
          other.createdAt == this.createdAt &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ServiceCompanion extends UpdateCompanion<ServiceData> {
  final Value<String?> id;
  final Value<String> clientId;
  final Value<String?> serviceDefId;
  final Value<bool?> isActive;
  final Value<String?> accountId;
  final Value<String?> additionalDetails;
  final Value<String?> createdAt;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ServiceCompanion({
    this.id = const Value.absent(),
    this.clientId = const Value.absent(),
    this.serviceDefId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.accountId = const Value.absent(),
    this.additionalDetails = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ServiceCompanion.insert({
    this.id = const Value.absent(),
    required String clientId,
    this.serviceDefId = const Value.absent(),
    this.isActive = const Value.absent(),
    this.accountId = const Value.absent(),
    this.additionalDetails = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientId = Value(clientId);
  static Insertable<ServiceData> custom({
    Expression<String?>? id,
    Expression<String>? clientId,
    Expression<String?>? serviceDefId,
    Expression<bool?>? isActive,
    Expression<String?>? accountId,
    Expression<String?>? additionalDetails,
    Expression<String?>? createdAt,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientId != null) 'client_id': clientId,
      if (serviceDefId != null) 'service_def_id': serviceDefId,
      if (isActive != null) 'is_active': isActive,
      if (accountId != null) 'account_id': accountId,
      if (additionalDetails != null) 'additional_details': additionalDetails,
      if (createdAt != null) 'created_at': createdAt,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ServiceCompanion copyWith(
      {Value<String?>? id,
      Value<String>? clientId,
      Value<String?>? serviceDefId,
      Value<bool?>? isActive,
      Value<String?>? accountId,
      Value<String?>? additionalDetails,
      Value<String?>? createdAt,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ServiceCompanion(
      id: id ?? this.id,
      clientId: clientId ?? this.clientId,
      serviceDefId: serviceDefId ?? this.serviceDefId,
      isActive: isActive ?? this.isActive,
      accountId: accountId ?? this.accountId,
      additionalDetails: additionalDetails ?? this.additionalDetails,
      createdAt: createdAt ?? this.createdAt,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (clientId.present) {
      map['client_id'] = Variable<String>(clientId.value);
    }
    if (serviceDefId.present) {
      map['service_def_id'] = Variable<String?>(serviceDefId.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool?>(isActive.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String?>(accountId.value);
    }
    if (additionalDetails.present) {
      map['additional_details'] = Variable<String?>(additionalDetails.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String?>(createdAt.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceCompanion(')
          ..write('id: $id, ')
          ..write('clientId: $clientId, ')
          ..write('serviceDefId: $serviceDefId, ')
          ..write('isActive: $isActive, ')
          ..write('accountId: $accountId, ')
          ..write('additionalDetails: $additionalDetails, ')
          ..write('createdAt: $createdAt, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ServiceTable extends Service with TableInfo<$ServiceTable, ServiceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _clientIdMeta = const VerificationMeta('clientId');
  @override
  late final GeneratedColumn<String?> clientId = GeneratedColumn<String?>(
      'client_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _serviceDefIdMeta =
      const VerificationMeta('serviceDefId');
  @override
  late final GeneratedColumn<String?> serviceDefId = GeneratedColumn<String?>(
      'service_def_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool?> isActive = GeneratedColumn<bool?>(
      'is_active', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_active IN (0, 1))');
  final VerificationMeta _accountIdMeta = const VerificationMeta('accountId');
  @override
  late final GeneratedColumn<String?> accountId = GeneratedColumn<String?>(
      'account_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _additionalDetailsMeta =
      const VerificationMeta('additionalDetails');
  @override
  late final GeneratedColumn<String?> additionalDetails =
      GeneratedColumn<String?>('additional_details', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String?> createdAt = GeneratedColumn<String?>(
      'created_at', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clientId,
        serviceDefId,
        isActive,
        accountId,
        additionalDetails,
        createdAt,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'service';
  @override
  String get actualTableName => 'service';
  @override
  VerificationContext validateIntegrity(Insertable<ServiceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('client_id')) {
      context.handle(_clientIdMeta,
          clientId.isAcceptableOrUnknown(data['client_id']!, _clientIdMeta));
    } else if (isInserting) {
      context.missing(_clientIdMeta);
    }
    if (data.containsKey('service_def_id')) {
      context.handle(
          _serviceDefIdMeta,
          serviceDefId.isAcceptableOrUnknown(
              data['service_def_id']!, _serviceDefIdMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    }
    if (data.containsKey('additional_details')) {
      context.handle(
          _additionalDetailsMeta,
          additionalDetails.isAcceptableOrUnknown(
              data['additional_details']!, _additionalDetailsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientId, auditCreatedBy};
  @override
  ServiceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ServiceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ServiceTable createAlias(String alias) {
    return $ServiceTable(attachedDatabase, alias);
  }
}

class ServiceAttribute extends DataClass
    implements Insertable<ServiceAttribute> {
  final String? attributeCode;
  final String? value;
  final String? dataType;
  final String? referenceId;
  final String? additionalDetails;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String clientReferenceId;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ServiceAttribute(
      {this.attributeCode,
      this.value,
      this.dataType,
      this.referenceId,
      this.additionalDetails,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.clientReferenceId,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ServiceAttribute.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceAttribute(
      attributeCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}attribute_code']),
      value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value']),
      dataType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      referenceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id']),
      additionalDetails: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}additional_details']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || attributeCode != null) {
      map['attribute_code'] = Variable<String?>(attributeCode);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String?>(value);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String?>(dataType);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String?>(referenceId);
    }
    if (!nullToAbsent || additionalDetails != null) {
      map['additional_details'] = Variable<String?>(additionalDetails);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ServiceAttributesCompanion toCompanion(bool nullToAbsent) {
    return ServiceAttributesCompanion(
      attributeCode: attributeCode == null && nullToAbsent
          ? const Value.absent()
          : Value(attributeCode),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      referenceId: referenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceId),
      additionalDetails: additionalDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalDetails),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      clientReferenceId: Value(clientReferenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ServiceAttribute.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceAttribute(
      attributeCode: serializer.fromJson<String?>(json['attributeCode']),
      value: serializer.fromJson<String?>(json['value']),
      dataType: serializer.fromJson<String?>(json['dataType']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      additionalDetails:
          serializer.fromJson<String?>(json['additionalDetails']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'attributeCode': serializer.toJson<String?>(attributeCode),
      'value': serializer.toJson<String?>(value),
      'dataType': serializer.toJson<String?>(dataType),
      'referenceId': serializer.toJson<String?>(referenceId),
      'additionalDetails': serializer.toJson<String?>(additionalDetails),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ServiceAttribute copyWith(
          {String? attributeCode,
          String? value,
          String? dataType,
          String? referenceId,
          String? additionalDetails,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? clientReferenceId,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ServiceAttribute(
        attributeCode: attributeCode ?? this.attributeCode,
        value: value ?? this.value,
        dataType: dataType ?? this.dataType,
        referenceId: referenceId ?? this.referenceId,
        additionalDetails: additionalDetails ?? this.additionalDetails,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceAttribute(')
          ..write('attributeCode: $attributeCode, ')
          ..write('value: $value, ')
          ..write('dataType: $dataType, ')
          ..write('referenceId: $referenceId, ')
          ..write('additionalDetails: $additionalDetails, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      attributeCode,
      value,
      dataType,
      referenceId,
      additionalDetails,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      clientReferenceId,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceAttribute &&
          other.attributeCode == this.attributeCode &&
          other.value == this.value &&
          other.dataType == this.dataType &&
          other.referenceId == this.referenceId &&
          other.additionalDetails == this.additionalDetails &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.clientReferenceId == this.clientReferenceId &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ServiceAttributesCompanion extends UpdateCompanion<ServiceAttribute> {
  final Value<String?> attributeCode;
  final Value<String?> value;
  final Value<String?> dataType;
  final Value<String?> referenceId;
  final Value<String?> additionalDetails;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String> clientReferenceId;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ServiceAttributesCompanion({
    this.attributeCode = const Value.absent(),
    this.value = const Value.absent(),
    this.dataType = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.additionalDetails = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ServiceAttributesCompanion.insert({
    this.attributeCode = const Value.absent(),
    this.value = const Value.absent(),
    this.dataType = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.additionalDetails = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required String clientReferenceId,
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : clientReferenceId = Value(clientReferenceId);
  static Insertable<ServiceAttribute> custom({
    Expression<String?>? attributeCode,
    Expression<String?>? value,
    Expression<String?>? dataType,
    Expression<String?>? referenceId,
    Expression<String?>? additionalDetails,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String>? clientReferenceId,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (attributeCode != null) 'attribute_code': attributeCode,
      if (value != null) 'value': value,
      if (dataType != null) 'data_type': dataType,
      if (referenceId != null) 'reference_id': referenceId,
      if (additionalDetails != null) 'additional_details': additionalDetails,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ServiceAttributesCompanion copyWith(
      {Value<String?>? attributeCode,
      Value<String?>? value,
      Value<String?>? dataType,
      Value<String?>? referenceId,
      Value<String?>? additionalDetails,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String>? clientReferenceId,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ServiceAttributesCompanion(
      attributeCode: attributeCode ?? this.attributeCode,
      value: value ?? this.value,
      dataType: dataType ?? this.dataType,
      referenceId: referenceId ?? this.referenceId,
      additionalDetails: additionalDetails ?? this.additionalDetails,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (attributeCode.present) {
      map['attribute_code'] = Variable<String?>(attributeCode.value);
    }
    if (value.present) {
      map['value'] = Variable<String?>(value.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String?>(dataType.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String?>(referenceId.value);
    }
    if (additionalDetails.present) {
      map['additional_details'] = Variable<String?>(additionalDetails.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceAttributesCompanion(')
          ..write('attributeCode: $attributeCode, ')
          ..write('value: $value, ')
          ..write('dataType: $dataType, ')
          ..write('referenceId: $referenceId, ')
          ..write('additionalDetails: $additionalDetails, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ServiceAttributesTable extends ServiceAttributes
    with TableInfo<$ServiceAttributesTable, ServiceAttribute> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceAttributesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _attributeCodeMeta =
      const VerificationMeta('attributeCode');
  @override
  late final GeneratedColumn<String?> attributeCode = GeneratedColumn<String?>(
      'attribute_code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String?> value = GeneratedColumn<String?>(
      'value', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  @override
  late final GeneratedColumn<String?> dataType = GeneratedColumn<String?>(
      'data_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdMeta =
      const VerificationMeta('referenceId');
  @override
  late final GeneratedColumn<String?> referenceId = GeneratedColumn<String?>(
      'reference_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _additionalDetailsMeta =
      const VerificationMeta('additionalDetails');
  @override
  late final GeneratedColumn<String?> additionalDetails =
      GeneratedColumn<String?>('additional_details', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        attributeCode,
        value,
        dataType,
        referenceId,
        additionalDetails,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        clientReferenceId,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'service_attributes';
  @override
  String get actualTableName => 'service_attributes';
  @override
  VerificationContext validateIntegrity(Insertable<ServiceAttribute> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('attribute_code')) {
      context.handle(
          _attributeCodeMeta,
          attributeCode.isAcceptableOrUnknown(
              data['attribute_code']!, _attributeCodeMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type']!, _dataTypeMeta));
    }
    if (data.containsKey('reference_id')) {
      context.handle(
          _referenceIdMeta,
          referenceId.isAcceptableOrUnknown(
              data['reference_id']!, _referenceIdMeta));
    }
    if (data.containsKey('additional_details')) {
      context.handle(
          _additionalDetailsMeta,
          additionalDetails.isAcceptableOrUnknown(
              data['additional_details']!, _additionalDetailsMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {auditCreatedBy, clientReferenceId};
  @override
  ServiceAttribute map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ServiceAttribute.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ServiceAttributesTable createAlias(String alias) {
    return $ServiceAttributesTable(attachedDatabase, alias);
  }
}

class ServiceDefinitionData extends DataClass
    implements Insertable<ServiceDefinitionData> {
  final String? id;
  final String? tenantId;
  final String? code;
  final bool? isActive;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  ServiceDefinitionData(
      {this.id,
      this.tenantId,
      this.code,
      this.isActive,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory ServiceDefinitionData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ServiceDefinitionData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      isActive: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_active']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<bool?>(isActive);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  ServiceDefinitionCompanion toCompanion(bool nullToAbsent) {
    return ServiceDefinitionCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory ServiceDefinitionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceDefinitionData(
      id: serializer.fromJson<String?>(json['id']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      code: serializer.fromJson<String?>(json['code']),
      isActive: serializer.fromJson<bool?>(json['isActive']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'tenantId': serializer.toJson<String?>(tenantId),
      'code': serializer.toJson<String?>(code),
      'isActive': serializer.toJson<bool?>(isActive),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  ServiceDefinitionData copyWith(
          {String? id,
          String? tenantId,
          String? code,
          bool? isActive,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      ServiceDefinitionData(
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        code: code ?? this.code,
        isActive: isActive ?? this.isActive,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('ServiceDefinitionData(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('isActive: $isActive, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      tenantId,
      code,
      isActive,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceDefinitionData &&
          other.id == this.id &&
          other.tenantId == this.tenantId &&
          other.code == this.code &&
          other.isActive == this.isActive &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class ServiceDefinitionCompanion
    extends UpdateCompanion<ServiceDefinitionData> {
  final Value<String?> id;
  final Value<String?> tenantId;
  final Value<String?> code;
  final Value<bool?> isActive;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const ServiceDefinitionCompanion({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.isActive = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  ServiceDefinitionCompanion.insert({
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.isActive = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  static Insertable<ServiceDefinitionData> custom({
    Expression<String?>? id,
    Expression<String?>? tenantId,
    Expression<String?>? code,
    Expression<bool?>? isActive,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tenantId != null) 'tenant_id': tenantId,
      if (code != null) 'code': code,
      if (isActive != null) 'is_active': isActive,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  ServiceDefinitionCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? tenantId,
      Value<String?>? code,
      Value<bool?>? isActive,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return ServiceDefinitionCompanion(
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      code: code ?? this.code,
      isActive: isActive ?? this.isActive,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool?>(isActive.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceDefinitionCompanion(')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('isActive: $isActive, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $ServiceDefinitionTable extends ServiceDefinition
    with TableInfo<$ServiceDefinitionTable, ServiceDefinitionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceDefinitionTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<bool?> isActive = GeneratedColumn<bool?>(
      'is_active', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_active IN (0, 1))');
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        tenantId,
        code,
        isActive,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'service_definition';
  @override
  String get actualTableName => 'service_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<ServiceDefinitionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  ServiceDefinitionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ServiceDefinitionData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ServiceDefinitionTable createAlias(String alias) {
    return $ServiceDefinitionTable(attachedDatabase, alias);
  }
}

class Attribute extends DataClass implements Insertable<Attribute> {
  final String? id;
  final String? dataType;
  final String? referenceId;
  final String? tenantId;
  final String? code;
  final String? values;
  final String? isActive;
  final bool? required;
  final String? regex;
  final int? order;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  Attribute(
      {this.id,
      this.dataType,
      this.referenceId,
      this.tenantId,
      this.code,
      this.values,
      this.isActive,
      this.required,
      this.regex,
      this.order,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory Attribute.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Attribute(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      dataType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}data_type']),
      referenceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}reference_id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code']),
      values: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}values']),
      isActive: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_active']),
      required: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}required']),
      regex: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}regex']),
      order: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || dataType != null) {
      map['data_type'] = Variable<String?>(dataType);
    }
    if (!nullToAbsent || referenceId != null) {
      map['reference_id'] = Variable<String?>(referenceId);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String?>(code);
    }
    if (!nullToAbsent || values != null) {
      map['values'] = Variable<String?>(values);
    }
    if (!nullToAbsent || isActive != null) {
      map['is_active'] = Variable<String?>(isActive);
    }
    if (!nullToAbsent || required != null) {
      map['required'] = Variable<bool?>(required);
    }
    if (!nullToAbsent || regex != null) {
      map['regex'] = Variable<String?>(regex);
    }
    if (!nullToAbsent || order != null) {
      map['order'] = Variable<int?>(order);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  AttributesCompanion toCompanion(bool nullToAbsent) {
    return AttributesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      dataType: dataType == null && nullToAbsent
          ? const Value.absent()
          : Value(dataType),
      referenceId: referenceId == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceId),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      values:
          values == null && nullToAbsent ? const Value.absent() : Value(values),
      isActive: isActive == null && nullToAbsent
          ? const Value.absent()
          : Value(isActive),
      required: required == null && nullToAbsent
          ? const Value.absent()
          : Value(required),
      regex:
          regex == null && nullToAbsent ? const Value.absent() : Value(regex),
      order:
          order == null && nullToAbsent ? const Value.absent() : Value(order),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory Attribute.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Attribute(
      id: serializer.fromJson<String?>(json['id']),
      dataType: serializer.fromJson<String?>(json['dataType']),
      referenceId: serializer.fromJson<String?>(json['referenceId']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      code: serializer.fromJson<String?>(json['code']),
      values: serializer.fromJson<String?>(json['values']),
      isActive: serializer.fromJson<String?>(json['isActive']),
      required: serializer.fromJson<bool?>(json['required']),
      regex: serializer.fromJson<String?>(json['regex']),
      order: serializer.fromJson<int?>(json['order']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'dataType': serializer.toJson<String?>(dataType),
      'referenceId': serializer.toJson<String?>(referenceId),
      'tenantId': serializer.toJson<String?>(tenantId),
      'code': serializer.toJson<String?>(code),
      'values': serializer.toJson<String?>(values),
      'isActive': serializer.toJson<String?>(isActive),
      'required': serializer.toJson<bool?>(required),
      'regex': serializer.toJson<String?>(regex),
      'order': serializer.toJson<int?>(order),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  Attribute copyWith(
          {String? id,
          String? dataType,
          String? referenceId,
          String? tenantId,
          String? code,
          String? values,
          String? isActive,
          bool? required,
          String? regex,
          int? order,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      Attribute(
        id: id ?? this.id,
        dataType: dataType ?? this.dataType,
        referenceId: referenceId ?? this.referenceId,
        tenantId: tenantId ?? this.tenantId,
        code: code ?? this.code,
        values: values ?? this.values,
        isActive: isActive ?? this.isActive,
        required: required ?? this.required,
        regex: regex ?? this.regex,
        order: order ?? this.order,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('Attribute(')
          ..write('id: $id, ')
          ..write('dataType: $dataType, ')
          ..write('referenceId: $referenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('values: $values, ')
          ..write('isActive: $isActive, ')
          ..write('required: $required, ')
          ..write('regex: $regex, ')
          ..write('order: $order, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      dataType,
      referenceId,
      tenantId,
      code,
      values,
      isActive,
      required,
      regex,
      order,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Attribute &&
          other.id == this.id &&
          other.dataType == this.dataType &&
          other.referenceId == this.referenceId &&
          other.tenantId == this.tenantId &&
          other.code == this.code &&
          other.values == this.values &&
          other.isActive == this.isActive &&
          other.required == this.required &&
          other.regex == this.regex &&
          other.order == this.order &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class AttributesCompanion extends UpdateCompanion<Attribute> {
  final Value<String?> id;
  final Value<String?> dataType;
  final Value<String?> referenceId;
  final Value<String?> tenantId;
  final Value<String?> code;
  final Value<String?> values;
  final Value<String?> isActive;
  final Value<bool?> required;
  final Value<String?> regex;
  final Value<int?> order;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const AttributesCompanion({
    this.id = const Value.absent(),
    this.dataType = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.values = const Value.absent(),
    this.isActive = const Value.absent(),
    this.required = const Value.absent(),
    this.regex = const Value.absent(),
    this.order = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  AttributesCompanion.insert({
    this.id = const Value.absent(),
    this.dataType = const Value.absent(),
    this.referenceId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.code = const Value.absent(),
    this.values = const Value.absent(),
    this.isActive = const Value.absent(),
    this.required = const Value.absent(),
    this.regex = const Value.absent(),
    this.order = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  static Insertable<Attribute> custom({
    Expression<String?>? id,
    Expression<String?>? dataType,
    Expression<String?>? referenceId,
    Expression<String?>? tenantId,
    Expression<String?>? code,
    Expression<String?>? values,
    Expression<String?>? isActive,
    Expression<bool?>? required,
    Expression<String?>? regex,
    Expression<int?>? order,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dataType != null) 'data_type': dataType,
      if (referenceId != null) 'reference_id': referenceId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (code != null) 'code': code,
      if (values != null) 'values': values,
      if (isActive != null) 'is_active': isActive,
      if (required != null) 'required': required,
      if (regex != null) 'regex': regex,
      if (order != null) 'order': order,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  AttributesCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? dataType,
      Value<String?>? referenceId,
      Value<String?>? tenantId,
      Value<String?>? code,
      Value<String?>? values,
      Value<String?>? isActive,
      Value<bool?>? required,
      Value<String?>? regex,
      Value<int?>? order,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return AttributesCompanion(
      id: id ?? this.id,
      dataType: dataType ?? this.dataType,
      referenceId: referenceId ?? this.referenceId,
      tenantId: tenantId ?? this.tenantId,
      code: code ?? this.code,
      values: values ?? this.values,
      isActive: isActive ?? this.isActive,
      required: required ?? this.required,
      regex: regex ?? this.regex,
      order: order ?? this.order,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (dataType.present) {
      map['data_type'] = Variable<String?>(dataType.value);
    }
    if (referenceId.present) {
      map['reference_id'] = Variable<String?>(referenceId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (code.present) {
      map['code'] = Variable<String?>(code.value);
    }
    if (values.present) {
      map['values'] = Variable<String?>(values.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<String?>(isActive.value);
    }
    if (required.present) {
      map['required'] = Variable<bool?>(required.value);
    }
    if (regex.present) {
      map['regex'] = Variable<String?>(regex.value);
    }
    if (order.present) {
      map['order'] = Variable<int?>(order.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttributesCompanion(')
          ..write('id: $id, ')
          ..write('dataType: $dataType, ')
          ..write('referenceId: $referenceId, ')
          ..write('tenantId: $tenantId, ')
          ..write('code: $code, ')
          ..write('values: $values, ')
          ..write('isActive: $isActive, ')
          ..write('required: $required, ')
          ..write('regex: $regex, ')
          ..write('order: $order, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $AttributesTable extends Attributes
    with TableInfo<$AttributesTable, Attribute> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttributesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _dataTypeMeta = const VerificationMeta('dataType');
  @override
  late final GeneratedColumn<String?> dataType = GeneratedColumn<String?>(
      'data_type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _referenceIdMeta =
      const VerificationMeta('referenceId');
  @override
  late final GeneratedColumn<String?> referenceId = GeneratedColumn<String?>(
      'reference_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _valuesMeta = const VerificationMeta('values');
  @override
  late final GeneratedColumn<String?> values = GeneratedColumn<String?>(
      'values', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
  @override
  late final GeneratedColumn<String?> isActive = GeneratedColumn<String?>(
      'is_active', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _requiredMeta = const VerificationMeta('required');
  @override
  late final GeneratedColumn<bool?> required = GeneratedColumn<bool?>(
      'required', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (required IN (0, 1))');
  final VerificationMeta _regexMeta = const VerificationMeta('regex');
  @override
  late final GeneratedColumn<String?> regex = GeneratedColumn<String?>(
      'regex', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  @override
  late final GeneratedColumn<int?> order = GeneratedColumn<int?>(
      'order', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        dataType,
        referenceId,
        tenantId,
        code,
        values,
        isActive,
        required,
        regex,
        order,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'attributes';
  @override
  String get actualTableName => 'attributes';
  @override
  VerificationContext validateIntegrity(Insertable<Attribute> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('data_type')) {
      context.handle(_dataTypeMeta,
          dataType.isAcceptableOrUnknown(data['data_type']!, _dataTypeMeta));
    }
    if (data.containsKey('reference_id')) {
      context.handle(
          _referenceIdMeta,
          referenceId.isAcceptableOrUnknown(
              data['reference_id']!, _referenceIdMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('values')) {
      context.handle(_valuesMeta,
          values.isAcceptableOrUnknown(data['values']!, _valuesMeta));
    }
    if (data.containsKey('is_active')) {
      context.handle(_isActiveMeta,
          isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));
    }
    if (data.containsKey('required')) {
      context.handle(_requiredMeta,
          required.isAcceptableOrUnknown(data['required']!, _requiredMeta));
    }
    if (data.containsKey('regex')) {
      context.handle(
          _regexMeta, regex.isAcceptableOrUnknown(data['regex']!, _regexMeta));
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, auditCreatedBy};
  @override
  Attribute map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Attribute.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AttributesTable createAlias(String alias) {
    return $AttributesTable(attachedDatabase, alias);
  }
}

class LocalityData extends DataClass implements Insertable<LocalityData> {
  final String code;
  final String? name;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final String? tenantId;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  LocalityData(
      {required this.code,
      this.name,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.tenantId,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory LocalityData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocalityData(
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  LocalityCompanion toCompanion(bool nullToAbsent) {
    return LocalityCompanion(
      code: Value(code),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory LocalityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalityData(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String?>(json['name']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String?>(name),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'tenantId': serializer.toJson<String?>(tenantId),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  LocalityData copyWith(
          {String? code,
          String? name,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          String? tenantId,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      LocalityData(
        code: code ?? this.code,
        name: name ?? this.name,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        tenantId: tenantId ?? this.tenantId,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('LocalityData(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      code,
      name,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      tenantId,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalityData &&
          other.code == this.code &&
          other.name == this.name &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.tenantId == this.tenantId &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class LocalityCompanion extends UpdateCompanion<LocalityData> {
  final Value<String> code;
  final Value<String?> name;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<String?> tenantId;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const LocalityCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  LocalityCompanion.insert({
    required String code,
    this.name = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  }) : code = Value(code);
  static Insertable<LocalityData> custom({
    Expression<String>? code,
    Expression<String?>? name,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<String?>? tenantId,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (tenantId != null) 'tenant_id': tenantId,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  LocalityCompanion copyWith(
      {Value<String>? code,
      Value<String?>? name,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<String?>? tenantId,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return LocalityCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      tenantId: tenantId ?? this.tenantId,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalityCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('tenantId: $tenantId, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $LocalityTable extends Locality
    with TableInfo<$LocalityTable, LocalityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocalityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String?> code = GeneratedColumn<String?>(
      'code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        code,
        name,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        tenantId,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'locality';
  @override
  String get actualTableName => 'locality';
  @override
  VerificationContext validateIntegrity(Insertable<LocalityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code, auditCreatedBy};
  @override
  LocalityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LocalityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LocalityTable createAlias(String alias) {
    return $LocalityTable(attachedDatabase, alias);
  }
}

class PgrServiceData extends DataClass implements Insertable<PgrServiceData> {
  final bool active;
  final String clientReferenceId;
  final String? id;
  final String tenantId;
  final String serviceCode;
  final String description;
  final String? serviceRequestId;
  final String? accountId;
  final PgrServiceApplicationStatus applicationStatus;
  final String? source;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final bool isDeleted;
  final int rowVersion;
  final String? additionalFields;
  PgrServiceData(
      {required this.active,
      required this.clientReferenceId,
      this.id,
      required this.tenantId,
      required this.serviceCode,
      required this.description,
      this.serviceRequestId,
      this.accountId,
      required this.applicationStatus,
      this.source,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.isDeleted,
      required this.rowVersion,
      this.additionalFields});
  factory PgrServiceData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PgrServiceData(
      active: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}active'])!,
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id'])!,
      serviceCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}service_code'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      serviceRequestId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}service_request_id']),
      accountId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_id']),
      applicationStatus: $PgrServiceTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(
              data['${effectivePrefix}application_status']))!,
      source: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted'])!,
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version'])!,
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['active'] = Variable<bool>(active);
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['tenant_id'] = Variable<String>(tenantId);
    map['service_code'] = Variable<String>(serviceCode);
    map['description'] = Variable<String>(description);
    if (!nullToAbsent || serviceRequestId != null) {
      map['service_request_id'] = Variable<String?>(serviceRequestId);
    }
    if (!nullToAbsent || accountId != null) {
      map['account_id'] = Variable<String?>(accountId);
    }
    {
      final converter = $PgrServiceTable.$converter0;
      map['application_status'] =
          Variable<int>(converter.mapToSql(applicationStatus)!);
    }
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<String?>(source);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    map['row_version'] = Variable<int>(rowVersion);
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  PgrServiceCompanion toCompanion(bool nullToAbsent) {
    return PgrServiceCompanion(
      active: Value(active),
      clientReferenceId: Value(clientReferenceId),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      tenantId: Value(tenantId),
      serviceCode: Value(serviceCode),
      description: Value(description),
      serviceRequestId: serviceRequestId == null && nullToAbsent
          ? const Value.absent()
          : Value(serviceRequestId),
      accountId: accountId == null && nullToAbsent
          ? const Value.absent()
          : Value(accountId),
      applicationStatus: Value(applicationStatus),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      isDeleted: Value(isDeleted),
      rowVersion: Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory PgrServiceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PgrServiceData(
      active: serializer.fromJson<bool>(json['active']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      id: serializer.fromJson<String?>(json['id']),
      tenantId: serializer.fromJson<String>(json['tenantId']),
      serviceCode: serializer.fromJson<String>(json['serviceCode']),
      description: serializer.fromJson<String>(json['description']),
      serviceRequestId: serializer.fromJson<String?>(json['serviceRequestId']),
      accountId: serializer.fromJson<String?>(json['accountId']),
      applicationStatus: serializer
          .fromJson<PgrServiceApplicationStatus>(json['applicationStatus']),
      source: serializer.fromJson<String?>(json['source']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      rowVersion: serializer.fromJson<int>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'active': serializer.toJson<bool>(active),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'id': serializer.toJson<String?>(id),
      'tenantId': serializer.toJson<String>(tenantId),
      'serviceCode': serializer.toJson<String>(serviceCode),
      'description': serializer.toJson<String>(description),
      'serviceRequestId': serializer.toJson<String?>(serviceRequestId),
      'accountId': serializer.toJson<String?>(accountId),
      'applicationStatus':
          serializer.toJson<PgrServiceApplicationStatus>(applicationStatus),
      'source': serializer.toJson<String?>(source),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'rowVersion': serializer.toJson<int>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  PgrServiceData copyWith(
          {bool? active,
          String? clientReferenceId,
          String? id,
          String? tenantId,
          String? serviceCode,
          String? description,
          String? serviceRequestId,
          String? accountId,
          PgrServiceApplicationStatus? applicationStatus,
          String? source,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      PgrServiceData(
        active: active ?? this.active,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        id: id ?? this.id,
        tenantId: tenantId ?? this.tenantId,
        serviceCode: serviceCode ?? this.serviceCode,
        description: description ?? this.description,
        serviceRequestId: serviceRequestId ?? this.serviceRequestId,
        accountId: accountId ?? this.accountId,
        applicationStatus: applicationStatus ?? this.applicationStatus,
        source: source ?? this.source,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('PgrServiceData(')
          ..write('active: $active, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('serviceCode: $serviceCode, ')
          ..write('description: $description, ')
          ..write('serviceRequestId: $serviceRequestId, ')
          ..write('accountId: $accountId, ')
          ..write('applicationStatus: $applicationStatus, ')
          ..write('source: $source, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      active,
      clientReferenceId,
      id,
      tenantId,
      serviceCode,
      description,
      serviceRequestId,
      accountId,
      applicationStatus,
      source,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      isDeleted,
      rowVersion,
      additionalFields);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PgrServiceData &&
          other.active == this.active &&
          other.clientReferenceId == this.clientReferenceId &&
          other.id == this.id &&
          other.tenantId == this.tenantId &&
          other.serviceCode == this.serviceCode &&
          other.description == this.description &&
          other.serviceRequestId == this.serviceRequestId &&
          other.accountId == this.accountId &&
          other.applicationStatus == this.applicationStatus &&
          other.source == this.source &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class PgrServiceCompanion extends UpdateCompanion<PgrServiceData> {
  final Value<bool> active;
  final Value<String> clientReferenceId;
  final Value<String?> id;
  final Value<String> tenantId;
  final Value<String> serviceCode;
  final Value<String> description;
  final Value<String?> serviceRequestId;
  final Value<String?> accountId;
  final Value<PgrServiceApplicationStatus> applicationStatus;
  final Value<String?> source;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<bool> isDeleted;
  final Value<int> rowVersion;
  final Value<String?> additionalFields;
  const PgrServiceCompanion({
    this.active = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.id = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.serviceCode = const Value.absent(),
    this.description = const Value.absent(),
    this.serviceRequestId = const Value.absent(),
    this.accountId = const Value.absent(),
    this.applicationStatus = const Value.absent(),
    this.source = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  PgrServiceCompanion.insert({
    required bool active,
    required String clientReferenceId,
    this.id = const Value.absent(),
    required String tenantId,
    required String serviceCode,
    required String description,
    this.serviceRequestId = const Value.absent(),
    this.accountId = const Value.absent(),
    required PgrServiceApplicationStatus applicationStatus,
    this.source = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required bool isDeleted,
    required int rowVersion,
    this.additionalFields = const Value.absent(),
  })  : active = Value(active),
        clientReferenceId = Value(clientReferenceId),
        tenantId = Value(tenantId),
        serviceCode = Value(serviceCode),
        description = Value(description),
        applicationStatus = Value(applicationStatus),
        isDeleted = Value(isDeleted),
        rowVersion = Value(rowVersion);
  static Insertable<PgrServiceData> custom({
    Expression<bool>? active,
    Expression<String>? clientReferenceId,
    Expression<String?>? id,
    Expression<String>? tenantId,
    Expression<String>? serviceCode,
    Expression<String>? description,
    Expression<String?>? serviceRequestId,
    Expression<String?>? accountId,
    Expression<PgrServiceApplicationStatus>? applicationStatus,
    Expression<String?>? source,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<bool>? isDeleted,
    Expression<int>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (active != null) 'active': active,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (id != null) 'id': id,
      if (tenantId != null) 'tenant_id': tenantId,
      if (serviceCode != null) 'service_code': serviceCode,
      if (description != null) 'description': description,
      if (serviceRequestId != null) 'service_request_id': serviceRequestId,
      if (accountId != null) 'account_id': accountId,
      if (applicationStatus != null) 'application_status': applicationStatus,
      if (source != null) 'source': source,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  PgrServiceCompanion copyWith(
      {Value<bool>? active,
      Value<String>? clientReferenceId,
      Value<String?>? id,
      Value<String>? tenantId,
      Value<String>? serviceCode,
      Value<String>? description,
      Value<String?>? serviceRequestId,
      Value<String?>? accountId,
      Value<PgrServiceApplicationStatus>? applicationStatus,
      Value<String?>? source,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<bool>? isDeleted,
      Value<int>? rowVersion,
      Value<String?>? additionalFields}) {
    return PgrServiceCompanion(
      active: active ?? this.active,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      id: id ?? this.id,
      tenantId: tenantId ?? this.tenantId,
      serviceCode: serviceCode ?? this.serviceCode,
      description: description ?? this.description,
      serviceRequestId: serviceRequestId ?? this.serviceRequestId,
      accountId: accountId ?? this.accountId,
      applicationStatus: applicationStatus ?? this.applicationStatus,
      source: source ?? this.source,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String>(tenantId.value);
    }
    if (serviceCode.present) {
      map['service_code'] = Variable<String>(serviceCode.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (serviceRequestId.present) {
      map['service_request_id'] = Variable<String?>(serviceRequestId.value);
    }
    if (accountId.present) {
      map['account_id'] = Variable<String?>(accountId.value);
    }
    if (applicationStatus.present) {
      final converter = $PgrServiceTable.$converter0;
      map['application_status'] =
          Variable<int>(converter.mapToSql(applicationStatus.value)!);
    }
    if (source.present) {
      map['source'] = Variable<String?>(source.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PgrServiceCompanion(')
          ..write('active: $active, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('id: $id, ')
          ..write('tenantId: $tenantId, ')
          ..write('serviceCode: $serviceCode, ')
          ..write('description: $description, ')
          ..write('serviceRequestId: $serviceRequestId, ')
          ..write('accountId: $accountId, ')
          ..write('applicationStatus: $applicationStatus, ')
          ..write('source: $source, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $PgrServiceTable extends PgrService
    with TableInfo<$PgrServiceTable, PgrServiceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PgrServiceTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool?> active = GeneratedColumn<bool?>(
      'active', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (active IN (0, 1))');
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _serviceCodeMeta =
      const VerificationMeta('serviceCode');
  @override
  late final GeneratedColumn<String?> serviceCode = GeneratedColumn<String?>(
      'service_code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _serviceRequestIdMeta =
      const VerificationMeta('serviceRequestId');
  @override
  late final GeneratedColumn<String?> serviceRequestId =
      GeneratedColumn<String?>('service_request_id', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _accountIdMeta = const VerificationMeta('accountId');
  @override
  late final GeneratedColumn<String?> accountId = GeneratedColumn<String?>(
      'account_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _applicationStatusMeta =
      const VerificationMeta('applicationStatus');
  @override
  late final GeneratedColumnWithTypeConverter<PgrServiceApplicationStatus, int?>
      applicationStatus = GeneratedColumn<int?>(
              'application_status', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<PgrServiceApplicationStatus>(
              $PgrServiceTable.$converter0);
  final VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String?> source = GeneratedColumn<String?>(
      'source', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))');
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        active,
        clientReferenceId,
        id,
        tenantId,
        serviceCode,
        description,
        serviceRequestId,
        accountId,
        applicationStatus,
        source,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'pgr_service';
  @override
  String get actualTableName => 'pgr_service';
  @override
  VerificationContext validateIntegrity(Insertable<PgrServiceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    } else if (isInserting) {
      context.missing(_activeMeta);
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (data.containsKey('service_code')) {
      context.handle(
          _serviceCodeMeta,
          serviceCode.isAcceptableOrUnknown(
              data['service_code']!, _serviceCodeMeta));
    } else if (isInserting) {
      context.missing(_serviceCodeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('service_request_id')) {
      context.handle(
          _serviceRequestIdMeta,
          serviceRequestId.isAcceptableOrUnknown(
              data['service_request_id']!, _serviceRequestIdMeta));
    }
    if (data.containsKey('account_id')) {
      context.handle(_accountIdMeta,
          accountId.isAcceptableOrUnknown(data['account_id']!, _accountIdMeta));
    }
    context.handle(_applicationStatusMeta, const VerificationResult.success());
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    } else if (isInserting) {
      context.missing(_rowVersionMeta);
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientReferenceId, auditCreatedBy};
  @override
  PgrServiceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PgrServiceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PgrServiceTable createAlias(String alias) {
    return $PgrServiceTable(attachedDatabase, alias);
  }

  static TypeConverter<PgrServiceApplicationStatus, int> $converter0 =
      const EnumIndexConverter<PgrServiceApplicationStatus>(
          PgrServiceApplicationStatus.values);
}

class PgrComplainantData extends DataClass
    implements Insertable<PgrComplainantData> {
  final int? id;
  final String clientReferenceId;
  final String complaintClientReferenceId;
  final String? userName;
  final String? name;
  final String? type;
  final String? mobileNumber;
  final String? emailId;
  final String tenantId;
  final String? uuid;
  final bool active;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final bool isDeleted;
  final int rowVersion;
  PgrComplainantData(
      {this.id,
      required this.clientReferenceId,
      required this.complaintClientReferenceId,
      this.userName,
      this.name,
      this.type,
      this.mobileNumber,
      this.emailId,
      required this.tenantId,
      this.uuid,
      required this.active,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      required this.isDeleted,
      required this.rowVersion});
  factory PgrComplainantData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PgrComplainantData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      clientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}client_reference_id'])!,
      complaintClientReferenceId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}complaint_client_reference_id'])!,
      userName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      mobileNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number']),
      emailId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email_id']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id'])!,
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      active: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}active'])!,
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted'])!,
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['client_reference_id'] = Variable<String>(clientReferenceId);
    map['complaint_client_reference_id'] =
        Variable<String>(complaintClientReferenceId);
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String?>(userName);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || mobileNumber != null) {
      map['mobile_number'] = Variable<String?>(mobileNumber);
    }
    if (!nullToAbsent || emailId != null) {
      map['email_id'] = Variable<String?>(emailId);
    }
    map['tenant_id'] = Variable<String>(tenantId);
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String?>(uuid);
    }
    map['active'] = Variable<bool>(active);
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    map['is_deleted'] = Variable<bool>(isDeleted);
    map['row_version'] = Variable<int>(rowVersion);
    return map;
  }

  PgrComplainantCompanion toCompanion(bool nullToAbsent) {
    return PgrComplainantCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      clientReferenceId: Value(clientReferenceId),
      complaintClientReferenceId: Value(complaintClientReferenceId),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      mobileNumber: mobileNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber),
      emailId: emailId == null && nullToAbsent
          ? const Value.absent()
          : Value(emailId),
      tenantId: Value(tenantId),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      active: Value(active),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      isDeleted: Value(isDeleted),
      rowVersion: Value(rowVersion),
    );
  }

  factory PgrComplainantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PgrComplainantData(
      id: serializer.fromJson<int?>(json['id']),
      clientReferenceId: serializer.fromJson<String>(json['clientReferenceId']),
      complaintClientReferenceId:
          serializer.fromJson<String>(json['complaintClientReferenceId']),
      userName: serializer.fromJson<String?>(json['userName']),
      name: serializer.fromJson<String?>(json['name']),
      type: serializer.fromJson<String?>(json['type']),
      mobileNumber: serializer.fromJson<String?>(json['mobileNumber']),
      emailId: serializer.fromJson<String?>(json['emailId']),
      tenantId: serializer.fromJson<String>(json['tenantId']),
      uuid: serializer.fromJson<String?>(json['uuid']),
      active: serializer.fromJson<bool>(json['active']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      rowVersion: serializer.fromJson<int>(json['rowVersion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'clientReferenceId': serializer.toJson<String>(clientReferenceId),
      'complaintClientReferenceId':
          serializer.toJson<String>(complaintClientReferenceId),
      'userName': serializer.toJson<String?>(userName),
      'name': serializer.toJson<String?>(name),
      'type': serializer.toJson<String?>(type),
      'mobileNumber': serializer.toJson<String?>(mobileNumber),
      'emailId': serializer.toJson<String?>(emailId),
      'tenantId': serializer.toJson<String>(tenantId),
      'uuid': serializer.toJson<String?>(uuid),
      'active': serializer.toJson<bool>(active),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'rowVersion': serializer.toJson<int>(rowVersion),
    };
  }

  PgrComplainantData copyWith(
          {int? id,
          String? clientReferenceId,
          String? complaintClientReferenceId,
          String? userName,
          String? name,
          String? type,
          String? mobileNumber,
          String? emailId,
          String? tenantId,
          String? uuid,
          bool? active,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          bool? isDeleted,
          int? rowVersion}) =>
      PgrComplainantData(
        id: id ?? this.id,
        clientReferenceId: clientReferenceId ?? this.clientReferenceId,
        complaintClientReferenceId:
            complaintClientReferenceId ?? this.complaintClientReferenceId,
        userName: userName ?? this.userName,
        name: name ?? this.name,
        type: type ?? this.type,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        emailId: emailId ?? this.emailId,
        tenantId: tenantId ?? this.tenantId,
        uuid: uuid ?? this.uuid,
        active: active ?? this.active,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
      );
  @override
  String toString() {
    return (StringBuffer('PgrComplainantData(')
          ..write('id: $id, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('complaintClientReferenceId: $complaintClientReferenceId, ')
          ..write('userName: $userName, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('emailId: $emailId, ')
          ..write('tenantId: $tenantId, ')
          ..write('uuid: $uuid, ')
          ..write('active: $active, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      clientReferenceId,
      complaintClientReferenceId,
      userName,
      name,
      type,
      mobileNumber,
      emailId,
      tenantId,
      uuid,
      active,
      auditCreatedBy,
      auditCreatedTime,
      auditModifiedBy,
      auditModifiedTime,
      isDeleted,
      rowVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PgrComplainantData &&
          other.id == this.id &&
          other.clientReferenceId == this.clientReferenceId &&
          other.complaintClientReferenceId == this.complaintClientReferenceId &&
          other.userName == this.userName &&
          other.name == this.name &&
          other.type == this.type &&
          other.mobileNumber == this.mobileNumber &&
          other.emailId == this.emailId &&
          other.tenantId == this.tenantId &&
          other.uuid == this.uuid &&
          other.active == this.active &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion);
}

class PgrComplainantCompanion extends UpdateCompanion<PgrComplainantData> {
  final Value<int?> id;
  final Value<String> clientReferenceId;
  final Value<String> complaintClientReferenceId;
  final Value<String?> userName;
  final Value<String?> name;
  final Value<String?> type;
  final Value<String?> mobileNumber;
  final Value<String?> emailId;
  final Value<String> tenantId;
  final Value<String?> uuid;
  final Value<bool> active;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<bool> isDeleted;
  final Value<int> rowVersion;
  const PgrComplainantCompanion({
    this.id = const Value.absent(),
    this.clientReferenceId = const Value.absent(),
    this.complaintClientReferenceId = const Value.absent(),
    this.userName = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.emailId = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.uuid = const Value.absent(),
    this.active = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
  });
  PgrComplainantCompanion.insert({
    this.id = const Value.absent(),
    required String clientReferenceId,
    required String complaintClientReferenceId,
    this.userName = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.emailId = const Value.absent(),
    required String tenantId,
    this.uuid = const Value.absent(),
    required bool active,
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    required bool isDeleted,
    required int rowVersion,
  })  : clientReferenceId = Value(clientReferenceId),
        complaintClientReferenceId = Value(complaintClientReferenceId),
        tenantId = Value(tenantId),
        active = Value(active),
        isDeleted = Value(isDeleted),
        rowVersion = Value(rowVersion);
  static Insertable<PgrComplainantData> custom({
    Expression<int?>? id,
    Expression<String>? clientReferenceId,
    Expression<String>? complaintClientReferenceId,
    Expression<String?>? userName,
    Expression<String?>? name,
    Expression<String?>? type,
    Expression<String?>? mobileNumber,
    Expression<String?>? emailId,
    Expression<String>? tenantId,
    Expression<String?>? uuid,
    Expression<bool>? active,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<bool>? isDeleted,
    Expression<int>? rowVersion,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clientReferenceId != null) 'client_reference_id': clientReferenceId,
      if (complaintClientReferenceId != null)
        'complaint_client_reference_id': complaintClientReferenceId,
      if (userName != null) 'user_name': userName,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (emailId != null) 'email_id': emailId,
      if (tenantId != null) 'tenant_id': tenantId,
      if (uuid != null) 'uuid': uuid,
      if (active != null) 'active': active,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
    });
  }

  PgrComplainantCompanion copyWith(
      {Value<int?>? id,
      Value<String>? clientReferenceId,
      Value<String>? complaintClientReferenceId,
      Value<String?>? userName,
      Value<String?>? name,
      Value<String?>? type,
      Value<String?>? mobileNumber,
      Value<String?>? emailId,
      Value<String>? tenantId,
      Value<String?>? uuid,
      Value<bool>? active,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<bool>? isDeleted,
      Value<int>? rowVersion}) {
    return PgrComplainantCompanion(
      id: id ?? this.id,
      clientReferenceId: clientReferenceId ?? this.clientReferenceId,
      complaintClientReferenceId:
          complaintClientReferenceId ?? this.complaintClientReferenceId,
      userName: userName ?? this.userName,
      name: name ?? this.name,
      type: type ?? this.type,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      emailId: emailId ?? this.emailId,
      tenantId: tenantId ?? this.tenantId,
      uuid: uuid ?? this.uuid,
      active: active ?? this.active,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (clientReferenceId.present) {
      map['client_reference_id'] = Variable<String>(clientReferenceId.value);
    }
    if (complaintClientReferenceId.present) {
      map['complaint_client_reference_id'] =
          Variable<String>(complaintClientReferenceId.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String?>(userName.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String?>(mobileNumber.value);
    }
    if (emailId.present) {
      map['email_id'] = Variable<String?>(emailId.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String>(tenantId.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String?>(uuid.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int>(rowVersion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PgrComplainantCompanion(')
          ..write('id: $id, ')
          ..write('clientReferenceId: $clientReferenceId, ')
          ..write('complaintClientReferenceId: $complaintClientReferenceId, ')
          ..write('userName: $userName, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('emailId: $emailId, ')
          ..write('tenantId: $tenantId, ')
          ..write('uuid: $uuid, ')
          ..write('active: $active, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion')
          ..write(')'))
        .toString();
  }
}

class $PgrComplainantTable extends PgrComplainant
    with TableInfo<$PgrComplainantTable, PgrComplainantData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PgrComplainantTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _clientReferenceIdMeta =
      const VerificationMeta('clientReferenceId');
  @override
  late final GeneratedColumn<String?> clientReferenceId =
      GeneratedColumn<String?>('client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _complaintClientReferenceIdMeta =
      const VerificationMeta('complaintClientReferenceId');
  @override
  late final GeneratedColumn<String?> complaintClientReferenceId =
      GeneratedColumn<String?>(
          'complaint_client_reference_id', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String?> userName = GeneratedColumn<String?>(
      'user_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String?> mobileNumber = GeneratedColumn<String?>(
      'mobile_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailIdMeta = const VerificationMeta('emailId');
  @override
  late final GeneratedColumn<String?> emailId = GeneratedColumn<String?>(
      'email_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool?> active = GeneratedColumn<bool?>(
      'active', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (active IN (0, 1))');
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))');
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clientReferenceId,
        complaintClientReferenceId,
        userName,
        name,
        type,
        mobileNumber,
        emailId,
        tenantId,
        uuid,
        active,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion
      ];
  @override
  String get aliasedName => _alias ?? 'pgr_complainant';
  @override
  String get actualTableName => 'pgr_complainant';
  @override
  VerificationContext validateIntegrity(Insertable<PgrComplainantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('client_reference_id')) {
      context.handle(
          _clientReferenceIdMeta,
          clientReferenceId.isAcceptableOrUnknown(
              data['client_reference_id']!, _clientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_clientReferenceIdMeta);
    }
    if (data.containsKey('complaint_client_reference_id')) {
      context.handle(
          _complaintClientReferenceIdMeta,
          complaintClientReferenceId.isAcceptableOrUnknown(
              data['complaint_client_reference_id']!,
              _complaintClientReferenceIdMeta));
    } else if (isInserting) {
      context.missing(_complaintClientReferenceIdMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    }
    if (data.containsKey('email_id')) {
      context.handle(_emailIdMeta,
          emailId.isAcceptableOrUnknown(data['email_id']!, _emailIdMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    } else if (isInserting) {
      context.missing(_tenantIdMeta);
    }
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    } else if (isInserting) {
      context.missing(_activeMeta);
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    } else if (isInserting) {
      context.missing(_rowVersionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {clientReferenceId, auditCreatedBy};
  @override
  PgrComplainantData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PgrComplainantData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PgrComplainantTable createAlias(String alias) {
    return $PgrComplainantTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final String? id;
  final String? userName;
  final String? salutation;
  final String? name;
  final String? gender;
  final String? mobileNumber;
  final String? emailId;
  final String? altContactNumber;
  final String? pan;
  final String? aadhaarNumber;
  final String? permanentAddress;
  final String? permanentCity;
  final String? permanentPinCode;
  final String? correspondenceAddress;
  final String? correspondenceCity;
  final String? correspondencePinCode;
  final String? alternatemobilenumber;
  final bool? active;
  final String? locale;
  final String? type;
  final bool? accountLocked;
  final int? accountLockedDate;
  final String? fatherOrHusbandName;
  final String? relationship;
  final String? signature;
  final String? bloodGroup;
  final String? photo;
  final String? identificationMark;
  final int? createdBy;
  final String? lastModifiedBy;
  final String? tenantId;
  final String? uuid;
  final String? createdDate;
  final String? auditCreatedBy;
  final int? auditCreatedTime;
  final String? auditModifiedBy;
  final int? auditModifiedTime;
  final bool? isDeleted;
  final int? rowVersion;
  final String? additionalFields;
  UserData(
      {this.id,
      this.userName,
      this.salutation,
      this.name,
      this.gender,
      this.mobileNumber,
      this.emailId,
      this.altContactNumber,
      this.pan,
      this.aadhaarNumber,
      this.permanentAddress,
      this.permanentCity,
      this.permanentPinCode,
      this.correspondenceAddress,
      this.correspondenceCity,
      this.correspondencePinCode,
      this.alternatemobilenumber,
      this.active,
      this.locale,
      this.type,
      this.accountLocked,
      this.accountLockedDate,
      this.fatherOrHusbandName,
      this.relationship,
      this.signature,
      this.bloodGroup,
      this.photo,
      this.identificationMark,
      this.createdBy,
      this.lastModifiedBy,
      this.tenantId,
      this.uuid,
      this.createdDate,
      this.auditCreatedBy,
      this.auditCreatedTime,
      this.auditModifiedBy,
      this.auditModifiedTime,
      this.isDeleted,
      this.rowVersion,
      this.additionalFields});
  factory UserData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      userName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
      salutation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}salutation']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      gender: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      mobileNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile_number']),
      emailId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email_id']),
      altContactNumber: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}alt_contact_number']),
      pan: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}pan']),
      aadhaarNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}aadhaar_number']),
      permanentAddress: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}permanent_address']),
      permanentCity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}permanent_city']),
      permanentPinCode: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}permanent_pin_code']),
      correspondenceAddress: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}correspondence_address']),
      correspondenceCity: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}correspondence_city']),
      correspondencePinCode: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}correspondence_pin_code']),
      alternatemobilenumber: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}alternatemobilenumber']),
      active: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}active']),
      locale: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}locale']),
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']),
      accountLocked: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_locked']),
      accountLockedDate: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}account_locked_date']),
      fatherOrHusbandName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}father_or_husband_name']),
      relationship: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}relationship']),
      signature: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}signature']),
      bloodGroup: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}blood_group']),
      photo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}photo']),
      identificationMark: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}identification_mark']),
      createdBy: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_by']),
      lastModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_modified_by']),
      tenantId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tenant_id']),
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid']),
      createdDate: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_date']),
      auditCreatedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_created_by']),
      auditCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_created_time']),
      auditModifiedBy: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}audit_modified_by']),
      auditModifiedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}audit_modified_time']),
      isDeleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_deleted']),
      rowVersion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}row_version']),
      additionalFields: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional_fields']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String?>(userName);
    }
    if (!nullToAbsent || salutation != null) {
      map['salutation'] = Variable<String?>(salutation);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String?>(name);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String?>(gender);
    }
    if (!nullToAbsent || mobileNumber != null) {
      map['mobile_number'] = Variable<String?>(mobileNumber);
    }
    if (!nullToAbsent || emailId != null) {
      map['email_id'] = Variable<String?>(emailId);
    }
    if (!nullToAbsent || altContactNumber != null) {
      map['alt_contact_number'] = Variable<String?>(altContactNumber);
    }
    if (!nullToAbsent || pan != null) {
      map['pan'] = Variable<String?>(pan);
    }
    if (!nullToAbsent || aadhaarNumber != null) {
      map['aadhaar_number'] = Variable<String?>(aadhaarNumber);
    }
    if (!nullToAbsent || permanentAddress != null) {
      map['permanent_address'] = Variable<String?>(permanentAddress);
    }
    if (!nullToAbsent || permanentCity != null) {
      map['permanent_city'] = Variable<String?>(permanentCity);
    }
    if (!nullToAbsent || permanentPinCode != null) {
      map['permanent_pin_code'] = Variable<String?>(permanentPinCode);
    }
    if (!nullToAbsent || correspondenceAddress != null) {
      map['correspondence_address'] = Variable<String?>(correspondenceAddress);
    }
    if (!nullToAbsent || correspondenceCity != null) {
      map['correspondence_city'] = Variable<String?>(correspondenceCity);
    }
    if (!nullToAbsent || correspondencePinCode != null) {
      map['correspondence_pin_code'] = Variable<String?>(correspondencePinCode);
    }
    if (!nullToAbsent || alternatemobilenumber != null) {
      map['alternatemobilenumber'] = Variable<String?>(alternatemobilenumber);
    }
    if (!nullToAbsent || active != null) {
      map['active'] = Variable<bool?>(active);
    }
    if (!nullToAbsent || locale != null) {
      map['locale'] = Variable<String?>(locale);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String?>(type);
    }
    if (!nullToAbsent || accountLocked != null) {
      map['account_locked'] = Variable<bool?>(accountLocked);
    }
    if (!nullToAbsent || accountLockedDate != null) {
      map['account_locked_date'] = Variable<int?>(accountLockedDate);
    }
    if (!nullToAbsent || fatherOrHusbandName != null) {
      map['father_or_husband_name'] = Variable<String?>(fatherOrHusbandName);
    }
    if (!nullToAbsent || relationship != null) {
      map['relationship'] = Variable<String?>(relationship);
    }
    if (!nullToAbsent || signature != null) {
      map['signature'] = Variable<String?>(signature);
    }
    if (!nullToAbsent || bloodGroup != null) {
      map['blood_group'] = Variable<String?>(bloodGroup);
    }
    if (!nullToAbsent || photo != null) {
      map['photo'] = Variable<String?>(photo);
    }
    if (!nullToAbsent || identificationMark != null) {
      map['identification_mark'] = Variable<String?>(identificationMark);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<int?>(createdBy);
    }
    if (!nullToAbsent || lastModifiedBy != null) {
      map['last_modified_by'] = Variable<String?>(lastModifiedBy);
    }
    if (!nullToAbsent || tenantId != null) {
      map['tenant_id'] = Variable<String?>(tenantId);
    }
    if (!nullToAbsent || uuid != null) {
      map['uuid'] = Variable<String?>(uuid);
    }
    if (!nullToAbsent || createdDate != null) {
      map['created_date'] = Variable<String?>(createdDate);
    }
    if (!nullToAbsent || auditCreatedBy != null) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy);
    }
    if (!nullToAbsent || auditCreatedTime != null) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime);
    }
    if (!nullToAbsent || auditModifiedBy != null) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy);
    }
    if (!nullToAbsent || auditModifiedTime != null) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime);
    }
    if (!nullToAbsent || isDeleted != null) {
      map['is_deleted'] = Variable<bool?>(isDeleted);
    }
    if (!nullToAbsent || rowVersion != null) {
      map['row_version'] = Variable<int?>(rowVersion);
    }
    if (!nullToAbsent || additionalFields != null) {
      map['additional_fields'] = Variable<String?>(additionalFields);
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      salutation: salutation == null && nullToAbsent
          ? const Value.absent()
          : Value(salutation),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      mobileNumber: mobileNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNumber),
      emailId: emailId == null && nullToAbsent
          ? const Value.absent()
          : Value(emailId),
      altContactNumber: altContactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(altContactNumber),
      pan: pan == null && nullToAbsent ? const Value.absent() : Value(pan),
      aadhaarNumber: aadhaarNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(aadhaarNumber),
      permanentAddress: permanentAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(permanentAddress),
      permanentCity: permanentCity == null && nullToAbsent
          ? const Value.absent()
          : Value(permanentCity),
      permanentPinCode: permanentPinCode == null && nullToAbsent
          ? const Value.absent()
          : Value(permanentPinCode),
      correspondenceAddress: correspondenceAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(correspondenceAddress),
      correspondenceCity: correspondenceCity == null && nullToAbsent
          ? const Value.absent()
          : Value(correspondenceCity),
      correspondencePinCode: correspondencePinCode == null && nullToAbsent
          ? const Value.absent()
          : Value(correspondencePinCode),
      alternatemobilenumber: alternatemobilenumber == null && nullToAbsent
          ? const Value.absent()
          : Value(alternatemobilenumber),
      active:
          active == null && nullToAbsent ? const Value.absent() : Value(active),
      locale:
          locale == null && nullToAbsent ? const Value.absent() : Value(locale),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      accountLocked: accountLocked == null && nullToAbsent
          ? const Value.absent()
          : Value(accountLocked),
      accountLockedDate: accountLockedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(accountLockedDate),
      fatherOrHusbandName: fatherOrHusbandName == null && nullToAbsent
          ? const Value.absent()
          : Value(fatherOrHusbandName),
      relationship: relationship == null && nullToAbsent
          ? const Value.absent()
          : Value(relationship),
      signature: signature == null && nullToAbsent
          ? const Value.absent()
          : Value(signature),
      bloodGroup: bloodGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(bloodGroup),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      identificationMark: identificationMark == null && nullToAbsent
          ? const Value.absent()
          : Value(identificationMark),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      lastModifiedBy: lastModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedBy),
      tenantId: tenantId == null && nullToAbsent
          ? const Value.absent()
          : Value(tenantId),
      uuid: uuid == null && nullToAbsent ? const Value.absent() : Value(uuid),
      createdDate: createdDate == null && nullToAbsent
          ? const Value.absent()
          : Value(createdDate),
      auditCreatedBy: auditCreatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedBy),
      auditCreatedTime: auditCreatedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditCreatedTime),
      auditModifiedBy: auditModifiedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedBy),
      auditModifiedTime: auditModifiedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(auditModifiedTime),
      isDeleted: isDeleted == null && nullToAbsent
          ? const Value.absent()
          : Value(isDeleted),
      rowVersion: rowVersion == null && nullToAbsent
          ? const Value.absent()
          : Value(rowVersion),
      additionalFields: additionalFields == null && nullToAbsent
          ? const Value.absent()
          : Value(additionalFields),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<String?>(json['id']),
      userName: serializer.fromJson<String?>(json['userName']),
      salutation: serializer.fromJson<String?>(json['salutation']),
      name: serializer.fromJson<String?>(json['name']),
      gender: serializer.fromJson<String?>(json['gender']),
      mobileNumber: serializer.fromJson<String?>(json['mobileNumber']),
      emailId: serializer.fromJson<String?>(json['emailId']),
      altContactNumber: serializer.fromJson<String?>(json['altContactNumber']),
      pan: serializer.fromJson<String?>(json['pan']),
      aadhaarNumber: serializer.fromJson<String?>(json['aadhaarNumber']),
      permanentAddress: serializer.fromJson<String?>(json['permanentAddress']),
      permanentCity: serializer.fromJson<String?>(json['permanentCity']),
      permanentPinCode: serializer.fromJson<String?>(json['permanentPinCode']),
      correspondenceAddress:
          serializer.fromJson<String?>(json['correspondenceAddress']),
      correspondenceCity:
          serializer.fromJson<String?>(json['correspondenceCity']),
      correspondencePinCode:
          serializer.fromJson<String?>(json['correspondencePinCode']),
      alternatemobilenumber:
          serializer.fromJson<String?>(json['alternatemobilenumber']),
      active: serializer.fromJson<bool?>(json['active']),
      locale: serializer.fromJson<String?>(json['locale']),
      type: serializer.fromJson<String?>(json['type']),
      accountLocked: serializer.fromJson<bool?>(json['accountLocked']),
      accountLockedDate: serializer.fromJson<int?>(json['accountLockedDate']),
      fatherOrHusbandName:
          serializer.fromJson<String?>(json['fatherOrHusbandName']),
      relationship: serializer.fromJson<String?>(json['relationship']),
      signature: serializer.fromJson<String?>(json['signature']),
      bloodGroup: serializer.fromJson<String?>(json['bloodGroup']),
      photo: serializer.fromJson<String?>(json['photo']),
      identificationMark:
          serializer.fromJson<String?>(json['identificationMark']),
      createdBy: serializer.fromJson<int?>(json['createdBy']),
      lastModifiedBy: serializer.fromJson<String?>(json['lastModifiedBy']),
      tenantId: serializer.fromJson<String?>(json['tenantId']),
      uuid: serializer.fromJson<String?>(json['uuid']),
      createdDate: serializer.fromJson<String?>(json['createdDate']),
      auditCreatedBy: serializer.fromJson<String?>(json['auditCreatedBy']),
      auditCreatedTime: serializer.fromJson<int?>(json['auditCreatedTime']),
      auditModifiedBy: serializer.fromJson<String?>(json['auditModifiedBy']),
      auditModifiedTime: serializer.fromJson<int?>(json['auditModifiedTime']),
      isDeleted: serializer.fromJson<bool?>(json['isDeleted']),
      rowVersion: serializer.fromJson<int?>(json['rowVersion']),
      additionalFields: serializer.fromJson<String?>(json['additionalFields']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'userName': serializer.toJson<String?>(userName),
      'salutation': serializer.toJson<String?>(salutation),
      'name': serializer.toJson<String?>(name),
      'gender': serializer.toJson<String?>(gender),
      'mobileNumber': serializer.toJson<String?>(mobileNumber),
      'emailId': serializer.toJson<String?>(emailId),
      'altContactNumber': serializer.toJson<String?>(altContactNumber),
      'pan': serializer.toJson<String?>(pan),
      'aadhaarNumber': serializer.toJson<String?>(aadhaarNumber),
      'permanentAddress': serializer.toJson<String?>(permanentAddress),
      'permanentCity': serializer.toJson<String?>(permanentCity),
      'permanentPinCode': serializer.toJson<String?>(permanentPinCode),
      'correspondenceAddress':
          serializer.toJson<String?>(correspondenceAddress),
      'correspondenceCity': serializer.toJson<String?>(correspondenceCity),
      'correspondencePinCode':
          serializer.toJson<String?>(correspondencePinCode),
      'alternatemobilenumber':
          serializer.toJson<String?>(alternatemobilenumber),
      'active': serializer.toJson<bool?>(active),
      'locale': serializer.toJson<String?>(locale),
      'type': serializer.toJson<String?>(type),
      'accountLocked': serializer.toJson<bool?>(accountLocked),
      'accountLockedDate': serializer.toJson<int?>(accountLockedDate),
      'fatherOrHusbandName': serializer.toJson<String?>(fatherOrHusbandName),
      'relationship': serializer.toJson<String?>(relationship),
      'signature': serializer.toJson<String?>(signature),
      'bloodGroup': serializer.toJson<String?>(bloodGroup),
      'photo': serializer.toJson<String?>(photo),
      'identificationMark': serializer.toJson<String?>(identificationMark),
      'createdBy': serializer.toJson<int?>(createdBy),
      'lastModifiedBy': serializer.toJson<String?>(lastModifiedBy),
      'tenantId': serializer.toJson<String?>(tenantId),
      'uuid': serializer.toJson<String?>(uuid),
      'createdDate': serializer.toJson<String?>(createdDate),
      'auditCreatedBy': serializer.toJson<String?>(auditCreatedBy),
      'auditCreatedTime': serializer.toJson<int?>(auditCreatedTime),
      'auditModifiedBy': serializer.toJson<String?>(auditModifiedBy),
      'auditModifiedTime': serializer.toJson<int?>(auditModifiedTime),
      'isDeleted': serializer.toJson<bool?>(isDeleted),
      'rowVersion': serializer.toJson<int?>(rowVersion),
      'additionalFields': serializer.toJson<String?>(additionalFields),
    };
  }

  UserData copyWith(
          {String? id,
          String? userName,
          String? salutation,
          String? name,
          String? gender,
          String? mobileNumber,
          String? emailId,
          String? altContactNumber,
          String? pan,
          String? aadhaarNumber,
          String? permanentAddress,
          String? permanentCity,
          String? permanentPinCode,
          String? correspondenceAddress,
          String? correspondenceCity,
          String? correspondencePinCode,
          String? alternatemobilenumber,
          bool? active,
          String? locale,
          String? type,
          bool? accountLocked,
          int? accountLockedDate,
          String? fatherOrHusbandName,
          String? relationship,
          String? signature,
          String? bloodGroup,
          String? photo,
          String? identificationMark,
          int? createdBy,
          String? lastModifiedBy,
          String? tenantId,
          String? uuid,
          String? createdDate,
          String? auditCreatedBy,
          int? auditCreatedTime,
          String? auditModifiedBy,
          int? auditModifiedTime,
          bool? isDeleted,
          int? rowVersion,
          String? additionalFields}) =>
      UserData(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        salutation: salutation ?? this.salutation,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        emailId: emailId ?? this.emailId,
        altContactNumber: altContactNumber ?? this.altContactNumber,
        pan: pan ?? this.pan,
        aadhaarNumber: aadhaarNumber ?? this.aadhaarNumber,
        permanentAddress: permanentAddress ?? this.permanentAddress,
        permanentCity: permanentCity ?? this.permanentCity,
        permanentPinCode: permanentPinCode ?? this.permanentPinCode,
        correspondenceAddress:
            correspondenceAddress ?? this.correspondenceAddress,
        correspondenceCity: correspondenceCity ?? this.correspondenceCity,
        correspondencePinCode:
            correspondencePinCode ?? this.correspondencePinCode,
        alternatemobilenumber:
            alternatemobilenumber ?? this.alternatemobilenumber,
        active: active ?? this.active,
        locale: locale ?? this.locale,
        type: type ?? this.type,
        accountLocked: accountLocked ?? this.accountLocked,
        accountLockedDate: accountLockedDate ?? this.accountLockedDate,
        fatherOrHusbandName: fatherOrHusbandName ?? this.fatherOrHusbandName,
        relationship: relationship ?? this.relationship,
        signature: signature ?? this.signature,
        bloodGroup: bloodGroup ?? this.bloodGroup,
        photo: photo ?? this.photo,
        identificationMark: identificationMark ?? this.identificationMark,
        createdBy: createdBy ?? this.createdBy,
        lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
        tenantId: tenantId ?? this.tenantId,
        uuid: uuid ?? this.uuid,
        createdDate: createdDate ?? this.createdDate,
        auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
        auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
        auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
        auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
        isDeleted: isDeleted ?? this.isDeleted,
        rowVersion: rowVersion ?? this.rowVersion,
        additionalFields: additionalFields ?? this.additionalFields,
      );
  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('salutation: $salutation, ')
          ..write('name: $name, ')
          ..write('gender: $gender, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('emailId: $emailId, ')
          ..write('altContactNumber: $altContactNumber, ')
          ..write('pan: $pan, ')
          ..write('aadhaarNumber: $aadhaarNumber, ')
          ..write('permanentAddress: $permanentAddress, ')
          ..write('permanentCity: $permanentCity, ')
          ..write('permanentPinCode: $permanentPinCode, ')
          ..write('correspondenceAddress: $correspondenceAddress, ')
          ..write('correspondenceCity: $correspondenceCity, ')
          ..write('correspondencePinCode: $correspondencePinCode, ')
          ..write('alternatemobilenumber: $alternatemobilenumber, ')
          ..write('active: $active, ')
          ..write('locale: $locale, ')
          ..write('type: $type, ')
          ..write('accountLocked: $accountLocked, ')
          ..write('accountLockedDate: $accountLockedDate, ')
          ..write('fatherOrHusbandName: $fatherOrHusbandName, ')
          ..write('relationship: $relationship, ')
          ..write('signature: $signature, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('photo: $photo, ')
          ..write('identificationMark: $identificationMark, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('tenantId: $tenantId, ')
          ..write('uuid: $uuid, ')
          ..write('createdDate: $createdDate, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        userName,
        salutation,
        name,
        gender,
        mobileNumber,
        emailId,
        altContactNumber,
        pan,
        aadhaarNumber,
        permanentAddress,
        permanentCity,
        permanentPinCode,
        correspondenceAddress,
        correspondenceCity,
        correspondencePinCode,
        alternatemobilenumber,
        active,
        locale,
        type,
        accountLocked,
        accountLockedDate,
        fatherOrHusbandName,
        relationship,
        signature,
        bloodGroup,
        photo,
        identificationMark,
        createdBy,
        lastModifiedBy,
        tenantId,
        uuid,
        createdDate,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion,
        additionalFields
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.userName == this.userName &&
          other.salutation == this.salutation &&
          other.name == this.name &&
          other.gender == this.gender &&
          other.mobileNumber == this.mobileNumber &&
          other.emailId == this.emailId &&
          other.altContactNumber == this.altContactNumber &&
          other.pan == this.pan &&
          other.aadhaarNumber == this.aadhaarNumber &&
          other.permanentAddress == this.permanentAddress &&
          other.permanentCity == this.permanentCity &&
          other.permanentPinCode == this.permanentPinCode &&
          other.correspondenceAddress == this.correspondenceAddress &&
          other.correspondenceCity == this.correspondenceCity &&
          other.correspondencePinCode == this.correspondencePinCode &&
          other.alternatemobilenumber == this.alternatemobilenumber &&
          other.active == this.active &&
          other.locale == this.locale &&
          other.type == this.type &&
          other.accountLocked == this.accountLocked &&
          other.accountLockedDate == this.accountLockedDate &&
          other.fatherOrHusbandName == this.fatherOrHusbandName &&
          other.relationship == this.relationship &&
          other.signature == this.signature &&
          other.bloodGroup == this.bloodGroup &&
          other.photo == this.photo &&
          other.identificationMark == this.identificationMark &&
          other.createdBy == this.createdBy &&
          other.lastModifiedBy == this.lastModifiedBy &&
          other.tenantId == this.tenantId &&
          other.uuid == this.uuid &&
          other.createdDate == this.createdDate &&
          other.auditCreatedBy == this.auditCreatedBy &&
          other.auditCreatedTime == this.auditCreatedTime &&
          other.auditModifiedBy == this.auditModifiedBy &&
          other.auditModifiedTime == this.auditModifiedTime &&
          other.isDeleted == this.isDeleted &&
          other.rowVersion == this.rowVersion &&
          other.additionalFields == this.additionalFields);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<String?> id;
  final Value<String?> userName;
  final Value<String?> salutation;
  final Value<String?> name;
  final Value<String?> gender;
  final Value<String?> mobileNumber;
  final Value<String?> emailId;
  final Value<String?> altContactNumber;
  final Value<String?> pan;
  final Value<String?> aadhaarNumber;
  final Value<String?> permanentAddress;
  final Value<String?> permanentCity;
  final Value<String?> permanentPinCode;
  final Value<String?> correspondenceAddress;
  final Value<String?> correspondenceCity;
  final Value<String?> correspondencePinCode;
  final Value<String?> alternatemobilenumber;
  final Value<bool?> active;
  final Value<String?> locale;
  final Value<String?> type;
  final Value<bool?> accountLocked;
  final Value<int?> accountLockedDate;
  final Value<String?> fatherOrHusbandName;
  final Value<String?> relationship;
  final Value<String?> signature;
  final Value<String?> bloodGroup;
  final Value<String?> photo;
  final Value<String?> identificationMark;
  final Value<int?> createdBy;
  final Value<String?> lastModifiedBy;
  final Value<String?> tenantId;
  final Value<String?> uuid;
  final Value<String?> createdDate;
  final Value<String?> auditCreatedBy;
  final Value<int?> auditCreatedTime;
  final Value<String?> auditModifiedBy;
  final Value<int?> auditModifiedTime;
  final Value<bool?> isDeleted;
  final Value<int?> rowVersion;
  final Value<String?> additionalFields;
  const UserCompanion({
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.salutation = const Value.absent(),
    this.name = const Value.absent(),
    this.gender = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.emailId = const Value.absent(),
    this.altContactNumber = const Value.absent(),
    this.pan = const Value.absent(),
    this.aadhaarNumber = const Value.absent(),
    this.permanentAddress = const Value.absent(),
    this.permanentCity = const Value.absent(),
    this.permanentPinCode = const Value.absent(),
    this.correspondenceAddress = const Value.absent(),
    this.correspondenceCity = const Value.absent(),
    this.correspondencePinCode = const Value.absent(),
    this.alternatemobilenumber = const Value.absent(),
    this.active = const Value.absent(),
    this.locale = const Value.absent(),
    this.type = const Value.absent(),
    this.accountLocked = const Value.absent(),
    this.accountLockedDate = const Value.absent(),
    this.fatherOrHusbandName = const Value.absent(),
    this.relationship = const Value.absent(),
    this.signature = const Value.absent(),
    this.bloodGroup = const Value.absent(),
    this.photo = const Value.absent(),
    this.identificationMark = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.uuid = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.salutation = const Value.absent(),
    this.name = const Value.absent(),
    this.gender = const Value.absent(),
    this.mobileNumber = const Value.absent(),
    this.emailId = const Value.absent(),
    this.altContactNumber = const Value.absent(),
    this.pan = const Value.absent(),
    this.aadhaarNumber = const Value.absent(),
    this.permanentAddress = const Value.absent(),
    this.permanentCity = const Value.absent(),
    this.permanentPinCode = const Value.absent(),
    this.correspondenceAddress = const Value.absent(),
    this.correspondenceCity = const Value.absent(),
    this.correspondencePinCode = const Value.absent(),
    this.alternatemobilenumber = const Value.absent(),
    this.active = const Value.absent(),
    this.locale = const Value.absent(),
    this.type = const Value.absent(),
    this.accountLocked = const Value.absent(),
    this.accountLockedDate = const Value.absent(),
    this.fatherOrHusbandName = const Value.absent(),
    this.relationship = const Value.absent(),
    this.signature = const Value.absent(),
    this.bloodGroup = const Value.absent(),
    this.photo = const Value.absent(),
    this.identificationMark = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.lastModifiedBy = const Value.absent(),
    this.tenantId = const Value.absent(),
    this.uuid = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.auditCreatedBy = const Value.absent(),
    this.auditCreatedTime = const Value.absent(),
    this.auditModifiedBy = const Value.absent(),
    this.auditModifiedTime = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowVersion = const Value.absent(),
    this.additionalFields = const Value.absent(),
  });
  static Insertable<UserData> custom({
    Expression<String?>? id,
    Expression<String?>? userName,
    Expression<String?>? salutation,
    Expression<String?>? name,
    Expression<String?>? gender,
    Expression<String?>? mobileNumber,
    Expression<String?>? emailId,
    Expression<String?>? altContactNumber,
    Expression<String?>? pan,
    Expression<String?>? aadhaarNumber,
    Expression<String?>? permanentAddress,
    Expression<String?>? permanentCity,
    Expression<String?>? permanentPinCode,
    Expression<String?>? correspondenceAddress,
    Expression<String?>? correspondenceCity,
    Expression<String?>? correspondencePinCode,
    Expression<String?>? alternatemobilenumber,
    Expression<bool?>? active,
    Expression<String?>? locale,
    Expression<String?>? type,
    Expression<bool?>? accountLocked,
    Expression<int?>? accountLockedDate,
    Expression<String?>? fatherOrHusbandName,
    Expression<String?>? relationship,
    Expression<String?>? signature,
    Expression<String?>? bloodGroup,
    Expression<String?>? photo,
    Expression<String?>? identificationMark,
    Expression<int?>? createdBy,
    Expression<String?>? lastModifiedBy,
    Expression<String?>? tenantId,
    Expression<String?>? uuid,
    Expression<String?>? createdDate,
    Expression<String?>? auditCreatedBy,
    Expression<int?>? auditCreatedTime,
    Expression<String?>? auditModifiedBy,
    Expression<int?>? auditModifiedTime,
    Expression<bool?>? isDeleted,
    Expression<int?>? rowVersion,
    Expression<String?>? additionalFields,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userName != null) 'user_name': userName,
      if (salutation != null) 'salutation': salutation,
      if (name != null) 'name': name,
      if (gender != null) 'gender': gender,
      if (mobileNumber != null) 'mobile_number': mobileNumber,
      if (emailId != null) 'email_id': emailId,
      if (altContactNumber != null) 'alt_contact_number': altContactNumber,
      if (pan != null) 'pan': pan,
      if (aadhaarNumber != null) 'aadhaar_number': aadhaarNumber,
      if (permanentAddress != null) 'permanent_address': permanentAddress,
      if (permanentCity != null) 'permanent_city': permanentCity,
      if (permanentPinCode != null) 'permanent_pin_code': permanentPinCode,
      if (correspondenceAddress != null)
        'correspondence_address': correspondenceAddress,
      if (correspondenceCity != null) 'correspondence_city': correspondenceCity,
      if (correspondencePinCode != null)
        'correspondence_pin_code': correspondencePinCode,
      if (alternatemobilenumber != null)
        'alternatemobilenumber': alternatemobilenumber,
      if (active != null) 'active': active,
      if (locale != null) 'locale': locale,
      if (type != null) 'type': type,
      if (accountLocked != null) 'account_locked': accountLocked,
      if (accountLockedDate != null) 'account_locked_date': accountLockedDate,
      if (fatherOrHusbandName != null)
        'father_or_husband_name': fatherOrHusbandName,
      if (relationship != null) 'relationship': relationship,
      if (signature != null) 'signature': signature,
      if (bloodGroup != null) 'blood_group': bloodGroup,
      if (photo != null) 'photo': photo,
      if (identificationMark != null) 'identification_mark': identificationMark,
      if (createdBy != null) 'created_by': createdBy,
      if (lastModifiedBy != null) 'last_modified_by': lastModifiedBy,
      if (tenantId != null) 'tenant_id': tenantId,
      if (uuid != null) 'uuid': uuid,
      if (createdDate != null) 'created_date': createdDate,
      if (auditCreatedBy != null) 'audit_created_by': auditCreatedBy,
      if (auditCreatedTime != null) 'audit_created_time': auditCreatedTime,
      if (auditModifiedBy != null) 'audit_modified_by': auditModifiedBy,
      if (auditModifiedTime != null) 'audit_modified_time': auditModifiedTime,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowVersion != null) 'row_version': rowVersion,
      if (additionalFields != null) 'additional_fields': additionalFields,
    });
  }

  UserCompanion copyWith(
      {Value<String?>? id,
      Value<String?>? userName,
      Value<String?>? salutation,
      Value<String?>? name,
      Value<String?>? gender,
      Value<String?>? mobileNumber,
      Value<String?>? emailId,
      Value<String?>? altContactNumber,
      Value<String?>? pan,
      Value<String?>? aadhaarNumber,
      Value<String?>? permanentAddress,
      Value<String?>? permanentCity,
      Value<String?>? permanentPinCode,
      Value<String?>? correspondenceAddress,
      Value<String?>? correspondenceCity,
      Value<String?>? correspondencePinCode,
      Value<String?>? alternatemobilenumber,
      Value<bool?>? active,
      Value<String?>? locale,
      Value<String?>? type,
      Value<bool?>? accountLocked,
      Value<int?>? accountLockedDate,
      Value<String?>? fatherOrHusbandName,
      Value<String?>? relationship,
      Value<String?>? signature,
      Value<String?>? bloodGroup,
      Value<String?>? photo,
      Value<String?>? identificationMark,
      Value<int?>? createdBy,
      Value<String?>? lastModifiedBy,
      Value<String?>? tenantId,
      Value<String?>? uuid,
      Value<String?>? createdDate,
      Value<String?>? auditCreatedBy,
      Value<int?>? auditCreatedTime,
      Value<String?>? auditModifiedBy,
      Value<int?>? auditModifiedTime,
      Value<bool?>? isDeleted,
      Value<int?>? rowVersion,
      Value<String?>? additionalFields}) {
    return UserCompanion(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      salutation: salutation ?? this.salutation,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      emailId: emailId ?? this.emailId,
      altContactNumber: altContactNumber ?? this.altContactNumber,
      pan: pan ?? this.pan,
      aadhaarNumber: aadhaarNumber ?? this.aadhaarNumber,
      permanentAddress: permanentAddress ?? this.permanentAddress,
      permanentCity: permanentCity ?? this.permanentCity,
      permanentPinCode: permanentPinCode ?? this.permanentPinCode,
      correspondenceAddress:
          correspondenceAddress ?? this.correspondenceAddress,
      correspondenceCity: correspondenceCity ?? this.correspondenceCity,
      correspondencePinCode:
          correspondencePinCode ?? this.correspondencePinCode,
      alternatemobilenumber:
          alternatemobilenumber ?? this.alternatemobilenumber,
      active: active ?? this.active,
      locale: locale ?? this.locale,
      type: type ?? this.type,
      accountLocked: accountLocked ?? this.accountLocked,
      accountLockedDate: accountLockedDate ?? this.accountLockedDate,
      fatherOrHusbandName: fatherOrHusbandName ?? this.fatherOrHusbandName,
      relationship: relationship ?? this.relationship,
      signature: signature ?? this.signature,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      photo: photo ?? this.photo,
      identificationMark: identificationMark ?? this.identificationMark,
      createdBy: createdBy ?? this.createdBy,
      lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
      tenantId: tenantId ?? this.tenantId,
      uuid: uuid ?? this.uuid,
      createdDate: createdDate ?? this.createdDate,
      auditCreatedBy: auditCreatedBy ?? this.auditCreatedBy,
      auditCreatedTime: auditCreatedTime ?? this.auditCreatedTime,
      auditModifiedBy: auditModifiedBy ?? this.auditModifiedBy,
      auditModifiedTime: auditModifiedTime ?? this.auditModifiedTime,
      isDeleted: isDeleted ?? this.isDeleted,
      rowVersion: rowVersion ?? this.rowVersion,
      additionalFields: additionalFields ?? this.additionalFields,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String?>(userName.value);
    }
    if (salutation.present) {
      map['salutation'] = Variable<String?>(salutation.value);
    }
    if (name.present) {
      map['name'] = Variable<String?>(name.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String?>(gender.value);
    }
    if (mobileNumber.present) {
      map['mobile_number'] = Variable<String?>(mobileNumber.value);
    }
    if (emailId.present) {
      map['email_id'] = Variable<String?>(emailId.value);
    }
    if (altContactNumber.present) {
      map['alt_contact_number'] = Variable<String?>(altContactNumber.value);
    }
    if (pan.present) {
      map['pan'] = Variable<String?>(pan.value);
    }
    if (aadhaarNumber.present) {
      map['aadhaar_number'] = Variable<String?>(aadhaarNumber.value);
    }
    if (permanentAddress.present) {
      map['permanent_address'] = Variable<String?>(permanentAddress.value);
    }
    if (permanentCity.present) {
      map['permanent_city'] = Variable<String?>(permanentCity.value);
    }
    if (permanentPinCode.present) {
      map['permanent_pin_code'] = Variable<String?>(permanentPinCode.value);
    }
    if (correspondenceAddress.present) {
      map['correspondence_address'] =
          Variable<String?>(correspondenceAddress.value);
    }
    if (correspondenceCity.present) {
      map['correspondence_city'] = Variable<String?>(correspondenceCity.value);
    }
    if (correspondencePinCode.present) {
      map['correspondence_pin_code'] =
          Variable<String?>(correspondencePinCode.value);
    }
    if (alternatemobilenumber.present) {
      map['alternatemobilenumber'] =
          Variable<String?>(alternatemobilenumber.value);
    }
    if (active.present) {
      map['active'] = Variable<bool?>(active.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String?>(locale.value);
    }
    if (type.present) {
      map['type'] = Variable<String?>(type.value);
    }
    if (accountLocked.present) {
      map['account_locked'] = Variable<bool?>(accountLocked.value);
    }
    if (accountLockedDate.present) {
      map['account_locked_date'] = Variable<int?>(accountLockedDate.value);
    }
    if (fatherOrHusbandName.present) {
      map['father_or_husband_name'] =
          Variable<String?>(fatherOrHusbandName.value);
    }
    if (relationship.present) {
      map['relationship'] = Variable<String?>(relationship.value);
    }
    if (signature.present) {
      map['signature'] = Variable<String?>(signature.value);
    }
    if (bloodGroup.present) {
      map['blood_group'] = Variable<String?>(bloodGroup.value);
    }
    if (photo.present) {
      map['photo'] = Variable<String?>(photo.value);
    }
    if (identificationMark.present) {
      map['identification_mark'] = Variable<String?>(identificationMark.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<int?>(createdBy.value);
    }
    if (lastModifiedBy.present) {
      map['last_modified_by'] = Variable<String?>(lastModifiedBy.value);
    }
    if (tenantId.present) {
      map['tenant_id'] = Variable<String?>(tenantId.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String?>(uuid.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<String?>(createdDate.value);
    }
    if (auditCreatedBy.present) {
      map['audit_created_by'] = Variable<String?>(auditCreatedBy.value);
    }
    if (auditCreatedTime.present) {
      map['audit_created_time'] = Variable<int?>(auditCreatedTime.value);
    }
    if (auditModifiedBy.present) {
      map['audit_modified_by'] = Variable<String?>(auditModifiedBy.value);
    }
    if (auditModifiedTime.present) {
      map['audit_modified_time'] = Variable<int?>(auditModifiedTime.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool?>(isDeleted.value);
    }
    if (rowVersion.present) {
      map['row_version'] = Variable<int?>(rowVersion.value);
    }
    if (additionalFields.present) {
      map['additional_fields'] = Variable<String?>(additionalFields.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('salutation: $salutation, ')
          ..write('name: $name, ')
          ..write('gender: $gender, ')
          ..write('mobileNumber: $mobileNumber, ')
          ..write('emailId: $emailId, ')
          ..write('altContactNumber: $altContactNumber, ')
          ..write('pan: $pan, ')
          ..write('aadhaarNumber: $aadhaarNumber, ')
          ..write('permanentAddress: $permanentAddress, ')
          ..write('permanentCity: $permanentCity, ')
          ..write('permanentPinCode: $permanentPinCode, ')
          ..write('correspondenceAddress: $correspondenceAddress, ')
          ..write('correspondenceCity: $correspondenceCity, ')
          ..write('correspondencePinCode: $correspondencePinCode, ')
          ..write('alternatemobilenumber: $alternatemobilenumber, ')
          ..write('active: $active, ')
          ..write('locale: $locale, ')
          ..write('type: $type, ')
          ..write('accountLocked: $accountLocked, ')
          ..write('accountLockedDate: $accountLockedDate, ')
          ..write('fatherOrHusbandName: $fatherOrHusbandName, ')
          ..write('relationship: $relationship, ')
          ..write('signature: $signature, ')
          ..write('bloodGroup: $bloodGroup, ')
          ..write('photo: $photo, ')
          ..write('identificationMark: $identificationMark, ')
          ..write('createdBy: $createdBy, ')
          ..write('lastModifiedBy: $lastModifiedBy, ')
          ..write('tenantId: $tenantId, ')
          ..write('uuid: $uuid, ')
          ..write('createdDate: $createdDate, ')
          ..write('auditCreatedBy: $auditCreatedBy, ')
          ..write('auditCreatedTime: $auditCreatedTime, ')
          ..write('auditModifiedBy: $auditModifiedBy, ')
          ..write('auditModifiedTime: $auditModifiedTime, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowVersion: $rowVersion, ')
          ..write('additionalFields: $additionalFields')
          ..write(')'))
        .toString();
  }
}

class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String?> userName = GeneratedColumn<String?>(
      'user_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _salutationMeta = const VerificationMeta('salutation');
  @override
  late final GeneratedColumn<String?> salutation = GeneratedColumn<String?>(
      'salutation', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String?> gender = GeneratedColumn<String?>(
      'gender', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _mobileNumberMeta =
      const VerificationMeta('mobileNumber');
  @override
  late final GeneratedColumn<String?> mobileNumber = GeneratedColumn<String?>(
      'mobile_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailIdMeta = const VerificationMeta('emailId');
  @override
  late final GeneratedColumn<String?> emailId = GeneratedColumn<String?>(
      'email_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _altContactNumberMeta =
      const VerificationMeta('altContactNumber');
  @override
  late final GeneratedColumn<String?> altContactNumber =
      GeneratedColumn<String?>('alt_contact_number', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _panMeta = const VerificationMeta('pan');
  @override
  late final GeneratedColumn<String?> pan = GeneratedColumn<String?>(
      'pan', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _aadhaarNumberMeta =
      const VerificationMeta('aadhaarNumber');
  @override
  late final GeneratedColumn<String?> aadhaarNumber = GeneratedColumn<String?>(
      'aadhaar_number', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _permanentAddressMeta =
      const VerificationMeta('permanentAddress');
  @override
  late final GeneratedColumn<String?> permanentAddress =
      GeneratedColumn<String?>('permanent_address', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _permanentCityMeta =
      const VerificationMeta('permanentCity');
  @override
  late final GeneratedColumn<String?> permanentCity = GeneratedColumn<String?>(
      'permanent_city', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _permanentPinCodeMeta =
      const VerificationMeta('permanentPinCode');
  @override
  late final GeneratedColumn<String?> permanentPinCode =
      GeneratedColumn<String?>('permanent_pin_code', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _correspondenceAddressMeta =
      const VerificationMeta('correspondenceAddress');
  @override
  late final GeneratedColumn<String?> correspondenceAddress =
      GeneratedColumn<String?>('correspondence_address', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _correspondenceCityMeta =
      const VerificationMeta('correspondenceCity');
  @override
  late final GeneratedColumn<String?> correspondenceCity =
      GeneratedColumn<String?>('correspondence_city', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _correspondencePinCodeMeta =
      const VerificationMeta('correspondencePinCode');
  @override
  late final GeneratedColumn<String?> correspondencePinCode =
      GeneratedColumn<String?>('correspondence_pin_code', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _alternatemobilenumberMeta =
      const VerificationMeta('alternatemobilenumber');
  @override
  late final GeneratedColumn<String?> alternatemobilenumber =
      GeneratedColumn<String?>('alternatemobilenumber', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool?> active = GeneratedColumn<bool?>(
      'active', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (active IN (0, 1))');
  final VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumn<String?> locale = GeneratedColumn<String?>(
      'locale', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String?> type = GeneratedColumn<String?>(
      'type', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _accountLockedMeta =
      const VerificationMeta('accountLocked');
  @override
  late final GeneratedColumn<bool?> accountLocked = GeneratedColumn<bool?>(
      'account_locked', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (account_locked IN (0, 1))');
  final VerificationMeta _accountLockedDateMeta =
      const VerificationMeta('accountLockedDate');
  @override
  late final GeneratedColumn<int?> accountLockedDate = GeneratedColumn<int?>(
      'account_locked_date', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _fatherOrHusbandNameMeta =
      const VerificationMeta('fatherOrHusbandName');
  @override
  late final GeneratedColumn<String?> fatherOrHusbandName =
      GeneratedColumn<String?>('father_or_husband_name', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _relationshipMeta =
      const VerificationMeta('relationship');
  @override
  late final GeneratedColumn<String?> relationship = GeneratedColumn<String?>(
      'relationship', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _signatureMeta = const VerificationMeta('signature');
  @override
  late final GeneratedColumn<String?> signature = GeneratedColumn<String?>(
      'signature', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _bloodGroupMeta = const VerificationMeta('bloodGroup');
  @override
  late final GeneratedColumn<String?> bloodGroup = GeneratedColumn<String?>(
      'blood_group', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _photoMeta = const VerificationMeta('photo');
  @override
  late final GeneratedColumn<String?> photo = GeneratedColumn<String?>(
      'photo', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _identificationMarkMeta =
      const VerificationMeta('identificationMark');
  @override
  late final GeneratedColumn<String?> identificationMark =
      GeneratedColumn<String?>('identification_mark', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdByMeta = const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<int?> createdBy = GeneratedColumn<int?>(
      'created_by', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _lastModifiedByMeta =
      const VerificationMeta('lastModifiedBy');
  @override
  late final GeneratedColumn<String?> lastModifiedBy = GeneratedColumn<String?>(
      'last_modified_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _tenantIdMeta = const VerificationMeta('tenantId');
  @override
  late final GeneratedColumn<String?> tenantId = GeneratedColumn<String?>(
      'tenant_id', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<String?> createdDate = GeneratedColumn<String?>(
      'created_date', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedByMeta =
      const VerificationMeta('auditCreatedBy');
  @override
  late final GeneratedColumn<String?> auditCreatedBy = GeneratedColumn<String?>(
      'audit_created_by', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditCreatedTimeMeta =
      const VerificationMeta('auditCreatedTime');
  @override
  late final GeneratedColumn<int?> auditCreatedTime = GeneratedColumn<int?>(
      'audit_created_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedByMeta =
      const VerificationMeta('auditModifiedBy');
  @override
  late final GeneratedColumn<String?> auditModifiedBy =
      GeneratedColumn<String?>('audit_modified_by', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _auditModifiedTimeMeta =
      const VerificationMeta('auditModifiedTime');
  @override
  late final GeneratedColumn<int?> auditModifiedTime = GeneratedColumn<int?>(
      'audit_modified_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _isDeletedMeta = const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool?> isDeleted = GeneratedColumn<bool?>(
      'is_deleted', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_deleted IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _rowVersionMeta = const VerificationMeta('rowVersion');
  @override
  late final GeneratedColumn<int?> rowVersion = GeneratedColumn<int?>(
      'row_version', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String?> additionalFields =
      GeneratedColumn<String?>('additional_fields', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userName,
        salutation,
        name,
        gender,
        mobileNumber,
        emailId,
        altContactNumber,
        pan,
        aadhaarNumber,
        permanentAddress,
        permanentCity,
        permanentPinCode,
        correspondenceAddress,
        correspondenceCity,
        correspondencePinCode,
        alternatemobilenumber,
        active,
        locale,
        type,
        accountLocked,
        accountLockedDate,
        fatherOrHusbandName,
        relationship,
        signature,
        bloodGroup,
        photo,
        identificationMark,
        createdBy,
        lastModifiedBy,
        tenantId,
        uuid,
        createdDate,
        auditCreatedBy,
        auditCreatedTime,
        auditModifiedBy,
        auditModifiedTime,
        isDeleted,
        rowVersion,
        additionalFields
      ];
  @override
  String get aliasedName => _alias ?? 'user';
  @override
  String get actualTableName => 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('salutation')) {
      context.handle(
          _salutationMeta,
          salutation.isAcceptableOrUnknown(
              data['salutation']!, _salutationMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    }
    if (data.containsKey('mobile_number')) {
      context.handle(
          _mobileNumberMeta,
          mobileNumber.isAcceptableOrUnknown(
              data['mobile_number']!, _mobileNumberMeta));
    }
    if (data.containsKey('email_id')) {
      context.handle(_emailIdMeta,
          emailId.isAcceptableOrUnknown(data['email_id']!, _emailIdMeta));
    }
    if (data.containsKey('alt_contact_number')) {
      context.handle(
          _altContactNumberMeta,
          altContactNumber.isAcceptableOrUnknown(
              data['alt_contact_number']!, _altContactNumberMeta));
    }
    if (data.containsKey('pan')) {
      context.handle(
          _panMeta, pan.isAcceptableOrUnknown(data['pan']!, _panMeta));
    }
    if (data.containsKey('aadhaar_number')) {
      context.handle(
          _aadhaarNumberMeta,
          aadhaarNumber.isAcceptableOrUnknown(
              data['aadhaar_number']!, _aadhaarNumberMeta));
    }
    if (data.containsKey('permanent_address')) {
      context.handle(
          _permanentAddressMeta,
          permanentAddress.isAcceptableOrUnknown(
              data['permanent_address']!, _permanentAddressMeta));
    }
    if (data.containsKey('permanent_city')) {
      context.handle(
          _permanentCityMeta,
          permanentCity.isAcceptableOrUnknown(
              data['permanent_city']!, _permanentCityMeta));
    }
    if (data.containsKey('permanent_pin_code')) {
      context.handle(
          _permanentPinCodeMeta,
          permanentPinCode.isAcceptableOrUnknown(
              data['permanent_pin_code']!, _permanentPinCodeMeta));
    }
    if (data.containsKey('correspondence_address')) {
      context.handle(
          _correspondenceAddressMeta,
          correspondenceAddress.isAcceptableOrUnknown(
              data['correspondence_address']!, _correspondenceAddressMeta));
    }
    if (data.containsKey('correspondence_city')) {
      context.handle(
          _correspondenceCityMeta,
          correspondenceCity.isAcceptableOrUnknown(
              data['correspondence_city']!, _correspondenceCityMeta));
    }
    if (data.containsKey('correspondence_pin_code')) {
      context.handle(
          _correspondencePinCodeMeta,
          correspondencePinCode.isAcceptableOrUnknown(
              data['correspondence_pin_code']!, _correspondencePinCodeMeta));
    }
    if (data.containsKey('alternatemobilenumber')) {
      context.handle(
          _alternatemobilenumberMeta,
          alternatemobilenumber.isAcceptableOrUnknown(
              data['alternatemobilenumber']!, _alternatemobilenumberMeta));
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    }
    if (data.containsKey('locale')) {
      context.handle(_localeMeta,
          locale.isAcceptableOrUnknown(data['locale']!, _localeMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('account_locked')) {
      context.handle(
          _accountLockedMeta,
          accountLocked.isAcceptableOrUnknown(
              data['account_locked']!, _accountLockedMeta));
    }
    if (data.containsKey('account_locked_date')) {
      context.handle(
          _accountLockedDateMeta,
          accountLockedDate.isAcceptableOrUnknown(
              data['account_locked_date']!, _accountLockedDateMeta));
    }
    if (data.containsKey('father_or_husband_name')) {
      context.handle(
          _fatherOrHusbandNameMeta,
          fatherOrHusbandName.isAcceptableOrUnknown(
              data['father_or_husband_name']!, _fatherOrHusbandNameMeta));
    }
    if (data.containsKey('relationship')) {
      context.handle(
          _relationshipMeta,
          relationship.isAcceptableOrUnknown(
              data['relationship']!, _relationshipMeta));
    }
    if (data.containsKey('signature')) {
      context.handle(_signatureMeta,
          signature.isAcceptableOrUnknown(data['signature']!, _signatureMeta));
    }
    if (data.containsKey('blood_group')) {
      context.handle(
          _bloodGroupMeta,
          bloodGroup.isAcceptableOrUnknown(
              data['blood_group']!, _bloodGroupMeta));
    }
    if (data.containsKey('photo')) {
      context.handle(
          _photoMeta, photo.isAcceptableOrUnknown(data['photo']!, _photoMeta));
    }
    if (data.containsKey('identification_mark')) {
      context.handle(
          _identificationMarkMeta,
          identificationMark.isAcceptableOrUnknown(
              data['identification_mark']!, _identificationMarkMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('last_modified_by')) {
      context.handle(
          _lastModifiedByMeta,
          lastModifiedBy.isAcceptableOrUnknown(
              data['last_modified_by']!, _lastModifiedByMeta));
    }
    if (data.containsKey('tenant_id')) {
      context.handle(_tenantIdMeta,
          tenantId.isAcceptableOrUnknown(data['tenant_id']!, _tenantIdMeta));
    }
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    }
    if (data.containsKey('audit_created_by')) {
      context.handle(
          _auditCreatedByMeta,
          auditCreatedBy.isAcceptableOrUnknown(
              data['audit_created_by']!, _auditCreatedByMeta));
    }
    if (data.containsKey('audit_created_time')) {
      context.handle(
          _auditCreatedTimeMeta,
          auditCreatedTime.isAcceptableOrUnknown(
              data['audit_created_time']!, _auditCreatedTimeMeta));
    }
    if (data.containsKey('audit_modified_by')) {
      context.handle(
          _auditModifiedByMeta,
          auditModifiedBy.isAcceptableOrUnknown(
              data['audit_modified_by']!, _auditModifiedByMeta));
    }
    if (data.containsKey('audit_modified_time')) {
      context.handle(
          _auditModifiedTimeMeta,
          auditModifiedTime.isAcceptableOrUnknown(
              data['audit_modified_time']!, _auditModifiedTimeMeta));
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    }
    if (data.containsKey('row_version')) {
      context.handle(
          _rowVersionMeta,
          rowVersion.isAcceptableOrUnknown(
              data['row_version']!, _rowVersionMeta));
    }
    if (data.containsKey('additional_fields')) {
      context.handle(
          _additionalFieldsMeta,
          additionalFields.isAcceptableOrUnknown(
              data['additional_fields']!, _additionalFieldsMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid, auditCreatedBy};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

abstract class _$LocalSqlDataStore extends GeneratedDatabase {
  _$LocalSqlDataStore(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $AddressTable address = $AddressTable(this);
  late final $NameTable name = $NameTable(this);
  late final $BoundaryTable boundary = $BoundaryTable(this);
  late final $DocumentTable document = $DocumentTable(this);
  late final $FacilityTable facility = $FacilityTable(this);
  late final $HouseholdTable household = $HouseholdTable(this);
  late final $HouseholdMemberTable householdMember =
      $HouseholdMemberTable(this);
  late final $IdentifierTable identifier = $IdentifierTable(this);
  late final $IndividualTable individual = $IndividualTable(this);
  late final $ProductTable product = $ProductTable(this);
  late final $ProductVariantTable productVariant = $ProductVariantTable(this);
  late final $ProjectTable project = $ProjectTable(this);
  late final $ProjectBeneficiaryTable projectBeneficiary =
      $ProjectBeneficiaryTable(this);
  late final $ProjectFacilityTable projectFacility =
      $ProjectFacilityTable(this);
  late final $ProjectProductVariantTable projectProductVariant =
      $ProjectProductVariantTable(this);
  late final $ProjectResourceTable projectResource =
      $ProjectResourceTable(this);
  late final $ProjectStaffTable projectStaff = $ProjectStaffTable(this);
  late final $ProjectTypeTable projectType = $ProjectTypeTable(this);
  late final $StockTable stock = $StockTable(this);
  late final $StockReconciliationTable stockReconciliation =
      $StockReconciliationTable(this);
  late final $TargetTable target = $TargetTable(this);
  late final $TaskTable task = $TaskTable(this);
  late final $TaskResourceTable taskResource = $TaskResourceTable(this);
  late final $ServiceTable service = $ServiceTable(this);
  late final $ServiceAttributesTable serviceAttributes =
      $ServiceAttributesTable(this);
  late final $ServiceDefinitionTable serviceDefinition =
      $ServiceDefinitionTable(this);
  late final $AttributesTable attributes = $AttributesTable(this);
  late final $LocalityTable locality = $LocalityTable(this);
  late final $PgrServiceTable pgrService = $PgrServiceTable(this);
  late final $PgrComplainantTable pgrComplainant = $PgrComplainantTable(this);
  late final $UserTable user = $UserTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        address,
        name,
        boundary,
        document,
        facility,
        household,
        householdMember,
        identifier,
        individual,
        product,
        productVariant,
        project,
        projectBeneficiary,
        projectFacility,
        projectProductVariant,
        projectResource,
        projectStaff,
        projectType,
        stock,
        stockReconciliation,
        target,
        task,
        taskResource,
        service,
        serviceAttributes,
        serviceDefinition,
        attributes,
        locality,
        pgrService,
        pgrComplainant,
        user
      ];
}
