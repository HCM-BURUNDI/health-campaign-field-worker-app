// Importing necessary packages and modules
import 'package:flutter_test/flutter_test.dart';
import 'package:inventory_management/blocs/inventory_listener.dart';
import 'package:inventory_management/blocs/record_stock.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:inventory_management/data/repositories/local/stock.dart';
import 'package:inventory_management/models/entities/stock.dart';
import 'package:inventory_management/utils/typedefs.dart';
import 'package:inventory_management/utils/utils.dart';
import 'package:mocktail/mocktail.dart';
import 'package:digit_data_model/data_model.dart';

// Mock class for StockRepository
class MockStockDataRepository extends Mock implements StockDataRepository {}

class MockStockReconciliationDataRepository extends Mock
    implements StockReconciliationDataRepository {}

// Mock class for InventorySingleton
class MockInventorySingleton extends Mock implements InventorySingleton {
  // Mock method for saving stock details
  @override
  Future<bool?> saveStockDetails(SaveStockDetails details) async {
    return true;
  }
}

class MockFacilityModel extends Mock implements FacilityModel {
  @override
  String get id => 'facility1';
}

// Fake class for SaveStockDetails for testing
class SaveStockDetailsFake extends Fake implements SaveStockDetails {
  @override
  StockModel get stockModel =>
      StockModel(id: 'stock1', clientReferenceId: 'abc123');

  @override
  Map<String, Object> get additionalData => {'key': 'value'};

  @override
  Function(bool isStockSaved) get isStockSaved => (bool value) {};
}

void main() {
  late StockRecordEntryType mockEntryType;
  late String mockProjectId;
  late DateTime mockDateOfRecord;
  late MockFacilityModel mockFacilityModel;

  // Setting up the test environment
  setUpAll(() {
    registerFallbackValue(SaveStockDetailsFake());

    // Initializing the entryType and projectId
    mockEntryType = StockRecordEntryType.receipt;
    mockProjectId = '1';
    mockDateOfRecord = DateTime(2024, 1, 1);
    mockFacilityModel = MockFacilityModel();
  });

  // Grouping tests related to RecordStockBloc
  group('RecordStockBloc', () {
    // Declaring variables for mock and bloc
    late MockInventorySingleton mockInventorySingleton;
    late RecordStockBloc recordStockBloc;

    // Setting up the mock and the bloc for each test
    setUp(() {
      mockInventorySingleton = MockInventorySingleton();
      recordStockBloc = RecordStockBloc(
        stockRepository: MockStockDataRepository(),
        RecordStockState.create(
          entryType: mockEntryType,
          projectId: mockProjectId,
        ),
      );
    });

    // Test for saveWarehouseDetails event
    blocTest<RecordStockBloc, RecordStockState>(
      'emits updated state with warehouse details when saveWarehouseDetails event is added',
      build: () => RecordStockBloc(
        stockRepository: MockStockDataRepository(),
        RecordStockState.create(
            entryType: mockEntryType, projectId: mockProjectId),
      ),
      act: (bloc) => bloc.add(RecordStockEvent.saveWarehouseDetails(
          dateOfRecord: mockDateOfRecord, facilityModel: mockFacilityModel)),
      // Expecting the bloc to emit a state with the saved warehouse details
      expect: () => <RecordStockState>[
        RecordStockState.create(
          entryType: mockEntryType,
          projectId: mockProjectId,
          dateOfRecord: mockDateOfRecord,
          facilityModel: mockFacilityModel,
        ),
      ],
    );

    // Test for saveStockDetails event
    blocTest<RecordStockBloc, RecordStockState>(
      'emits updated state with stock details when saveStockDetails event is added',
      build: () => RecordStockBloc(
        stockRepository: MockStockDataRepository(),
        RecordStockState.create(
            entryType: mockEntryType, projectId: mockProjectId),
      ),
      act: (bloc) => bloc.add(RecordStockEvent.saveStockDetails(
        stockModel: SaveStockDetailsFake().stockModel,
      )),
      // Expecting the bloc to emit a state with the saved stock details
      expect: () => <RecordStockState>[
        RecordStockState.create(
          entryType: mockEntryType,
          projectId: mockProjectId,
          stockModel: SaveStockDetailsFake().stockModel,
        ),
      ],
    );

    // Test for createStockEntry event
    blocTest<RecordStockBloc, RecordStockState>(
      'emits persisted state when createStockEntry event is added and stock details are saved successfully',
      build: () => RecordStockBloc(
        stockRepository: MockStockDataRepository(),
        RecordStockState.create(
          entryType: mockEntryType,
          projectId: mockProjectId,
          dateOfRecord: mockDateOfRecord,
          facilityModel: mockFacilityModel,
          stockModel: SaveStockDetailsFake().stockModel,
        ),
      ),
      act: (bloc) {
        bloc.add(RecordStockEvent.saveStockDetails(
          stockModel: SaveStockDetailsFake().stockModel,
        ));
        bloc.add(const RecordStockEvent.createStockEntry());
      },
      // Expecting the bloc to emit a persisted state after the stock entry is created
      expect: () => <RecordStockState>[
        RecordStockState.create(
          entryType: mockEntryType,
          projectId: mockProjectId,
          dateOfRecord: mockDateOfRecord,
          facilityModel: mockFacilityModel,
          stockModel: SaveStockDetailsFake().stockModel,
        ),
        RecordStockPersistedState(
          entryType: mockEntryType,
          projectId: mockProjectId,
          dateOfRecord: mockDateOfRecord,
          facilityModel: mockFacilityModel,
          stockModel: SaveStockDetailsFake().stockModel,
        ),
      ],
    );
  });
}
