// Importing necessary packages and modules
import 'package:flutter_test/flutter_test.dart';
import 'package:inventory_management/blocs/inventory_listener.dart';
import 'package:inventory_management/blocs/inventory_report.dart';
import 'package:inventory_management/models/entities/stock.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:inventory_management/models/entities/stock_reconciliation.dart';
import 'package:inventory_management/utils/typedefs.dart';
import 'package:inventory_management/utils/utils.dart';
import 'package:mocktail/mocktail.dart';

class MockStockReconciliationReport extends Mock
    implements StockReconciliationReport {
  @override
  Map<String, List<StockReconciliationModel>> stockReconModel = {
    'stock1': [
      StockReconciliationModel(
        id: '1',
        clientReferenceId: 'abc123',
        dateOfReconciliation: DateTime.now().toLocal().day,
      ),
    ],
  };

  @override
  Iterable<MapEntry<String, String>> additionalData = {
    const MapEntry("returned", "10"),
  };
}

class MockInventoryReport extends Mock {
  Map<String, List<StockModel>> stocksReport = {
    'stock1': [StockModel(id: '1', clientReferenceId: 'abc123')],
  };
}

class MockStockDataRepository extends Mock implements StockDataRepository {
  Future<Map<String, List<StockModel>>> getStockData({
    required InventoryReportType reportType,
    required String facilityId,
    required String productVariantId,
  }) async {
    return MockInventoryReport().stocksReport;
  }
}

class MockStockReconciliationDataRepository extends Mock
    implements StockReconciliationDataRepository {
  Future<Map<String, List<StockReconciliationModel>>>
      getStockReconciliationData(
          {required String facilityId,
          required String productVariantId}) async {
    return MockStockReconciliationReport().stockReconModel;
  }
}

class MockInventoryBloc extends Mock implements InventoryReportBloc {
  MockInventoryBloc({
    required StockDataRepository stockRepository,
    required StockReconciliationDataRepository stockReconciliationRepository,
  }) : super();
}

// Fake class for StockReconciliationReport for testing
class StockReconciliationReportFake extends Fake
    implements StockReconciliationReport {}

void main() {
  // Setting up the test environment
  setUpAll(() {
    registerFallbackValue(StockReconciliationReportFake());
  });

  group('InventoryReportBloc', () {
    late MockInventoryBloc mockInventoryReportBloc;
    late InventoryReportType mockReportType;
    late String mockFacilityId;
    late String mockProductVariantId;

    setUp(() {
      // Setting up the mock and the bloc for each test
      mockInventoryReportBloc = MockInventoryBloc(
        stockRepository: MockStockDataRepository(),
        stockReconciliationRepository: MockStockReconciliationDataRepository(),
      );
      mockReportType = InventoryReportType.receipt;
      mockFacilityId = 'facility1';
      mockProductVariantId = 'product1';
    });

    // Test for loadStockData event
    blocTest<MockInventoryBloc, InventoryReportState>(
      'emits [InventoryReportLoadingState, InventoryReportStockState] when loadStockData event is added',
      build: () => MockInventoryBloc(
        stockRepository: MockStockDataRepository(),
        stockReconciliationRepository: MockStockReconciliationDataRepository(),
      ),
      act: (bloc) => bloc.add(InventoryReportEvent.loadStockData(
          reportType: mockReportType,
          facilityId: mockFacilityId,
          productVariantId: mockProductVariantId)),
      expect: () => <InventoryReportState>[
        const InventoryReportLoadingState(),
        InventoryReportStockState(
            stockData: MockInventoryReport().stocksReport),
      ],
    );

    // Test for loadStockReconciliationData event
    blocTest<MockInventoryBloc, InventoryReportState>(
      'emits [InventoryReportLoadingState, InventoryReportStockReconciliationState] when loadStockReconciliationData event is added',
      build: () => MockInventoryBloc(
        stockRepository: MockStockDataRepository(),
        stockReconciliationRepository: MockStockReconciliationDataRepository(),
      ),
      act: (bloc) => bloc.add(InventoryReportEvent.loadStockReconciliationData(
          facilityId: mockFacilityId, productVariantId: mockProductVariantId)),
      expect: () => <InventoryReportState>[
        const InventoryReportLoadingState(),
        InventoryReportStockReconciliationState(
          data: MockStockReconciliationReport().stockReconModel,
        ),
      ],
    );

    // Test for loading event
    blocTest<InventoryReportBloc, InventoryReportState>(
      'emits [InventoryReportLoadingState] when loading event is added',
      build: () => mockInventoryReportBloc,
      act: (bloc) => bloc.add(const InventoryReportEvent.loading()),
      expect: () => <InventoryReportState>[
        const InventoryReportLoadingState(),
      ],
    );
  });
}
