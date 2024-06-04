// Import the required Dart I/O package
import 'dart:io';

String createCaseCondition(String key, String value) {
  return 'case "$key":\n    $value';
}

void insertCaseCondition(List<String> lines, String caseCondition) {
  final defaultIndex = lines.indexWhere((line) => line.contains('default:'));
  if (defaultIndex != -1 &&
      !lines.any((line) => line.contains(caseCondition.split('\n')[0]))) {
    lines.insert(defaultIndex, caseCondition);
  }
}

// Define the main function
void main() {
  // Get the current directory path
  var appDir = Directory.current.path;

  // Define the paths for the application root and the files to be modified
  var appRoot = appDir + '/apps/health_campaign_field_worker_app/lib';
  var localizationDelegatesFilePath =
      appRoot + '/utils/localization_delegates.dart';
  var networkManagerProviderWrapperFilePath =
      appRoot + '/widgets/network_manager_provider_wrapper.dart';
  var constantsFilePath = appRoot + '/utils/constants.dart';
  var utilsFilePath = appRoot + '/utils/utils.dart';
  var routerFilePath = appRoot + '/router/app_router.dart';
  var entityMapperFilePath =
      appRoot + '/data/local_store/no_sql/schema/entity_mapper.dart';
  var syncDownFilePath = appRoot + '/data/repositories/sync/sync_down.dart';
  var homeFilePath = appRoot + '/pages/home.dart';

  // Add attendance to home file
  _updateHome(homeFilePath);

  // Update the sync_down.dart file
  _updateSyncDownFile(syncDownFilePath);

  // Add attendance routes and import to the router file
  _addAttendanceRoutesAndImportToRouterFile(routerFilePath);

  // Add new case statements to the entity_mapper.dart file
  _updateEntityMapperFile(entityMapperFilePath);

  _createLocalizationDelegatesFile(localizationDelegatesFilePath);

  _addRepoToNetworkManagerProviderWrapper(
      networkManagerProviderWrapperFilePath:
          networkManagerProviderWrapperFilePath);

  _addAttendanceConstantsToConstantsFile(constantsFilePath: constantsFilePath);

  _addAttendanceMapperToUtilsFile(utilsFilePath: utilsFilePath);

  _formatFiles([
    homeFilePath,
    syncDownFilePath,
    entityMapperFilePath,
    routerFilePath,
    constantsFilePath,
    utilsFilePath,
    networkManagerProviderWrapperFilePath,
    localizationDelegatesFilePath
  ]);
}

void _formatFiles(List<String> filePaths) {
  for (var filePath in filePaths) {
    Process.runSync('dart', ['format', filePath]);
    print('Formatted $filePath');
  }
}

void _updateHome(String homeFilePath) {
  var importStatement = '''
      import 'package:attendance_management/attendance_management.dart';
      import 'package:attendance_management/router/attendance_router.gm.dart';
      ''';

  var homeItemsData = '''
     i18.home.manageAttendanceLabel:
          homeShowcaseData.manageAttendance.buildWith(
        child: HomeItemCard(
          icon: Icons.fingerprint_outlined,
          label: i18.home.manageAttendanceLabel,
          onPressed: () {
            // context.router.push(const ManageAttendanceRoute());
          },
        ),
      ),
  ''';

  var showCaseData = '''
      i18.home.manageAttendanceLabel:
        homeShowcaseData.manageAttendance.showcaseKey,
  ''';

  var itemsLabel = '''
        i18.home.manageAttendanceLabel,
  ''';

  // Define the data to be added
  var singletonData = '''
    AttendanceSingleton().setInitialData(
            projectId: context.projectId,
            loggedInIndividualId: context.loggedInIndividualId!,
            loggedInUserUuid: context.loggedInUserUuid,
            appVersion: Constants().version);
  ''';

  var localRepoData = '''
    context.read<LocalRepository<AttendanceLogModel,AttendanceLogSearchModel>>(),
  ''';

  var remoteRepoData = '''
    context.read<RemoteRepository<AttendanceLogModel,AttendanceLogSearchModel>>(),
  ''';

  // Check if the home.dart file exists
  var homeFile = File(homeFilePath);
  if (!homeFile.existsSync()) {
    print('Error: Home file does not exist at path: $homeFilePath');
    return;
  }

  // Read the home.dart file
  var homeFileContent = homeFile.readAsStringSync();

  // Check if the import statement already exists and add it if not
  if (!homeFileContent
      .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
    homeFileContent = importStatement + '\n' + homeFileContent;
    print('The import statement was added.');
  } else {
    print('The import statement already exists.');
  }

  // Insert the data to be added
  homeFileContent = insertData(homeFileContent,
      '// INFO : Need to add singleton of package Here', singletonData);
  homeFileContent = insertData(homeFileContent,
      '// INFO : Need to add local repo of package Here', localRepoData);
  homeFileContent = insertData(homeFileContent,
      '// INFO : Need to add repo repo of package Here', remoteRepoData);
  homeFileContent = insertData(homeFileContent,
      '// INFO : Need to add home items of package Here', homeItemsData);
  homeFileContent = insertData(homeFileContent,
      '// INFO : Need to add showcase keys of package Here', showCaseData);
  homeFileContent = insertData(homeFileContent,
      '// INFO: Need to add items label of package Here', itemsLabel);

  // Write the updated content back to the home.dart file
  homeFile.writeAsStringSync(homeFileContent);
}

String insertData(String fileContent, String marker, String data) {
  var markerIndex = fileContent.indexOf(marker);
  if (markerIndex != -1) {
    var endOfMarker = markerIndex + marker.length;
    if (!fileContent.substring(endOfMarker).contains(data.trim())) {
      fileContent = fileContent.substring(0, endOfMarker) +
          '\n' +
          data +
          fileContent.substring(endOfMarker);
      print('Data was added after marker: $marker');
    } else {
      print('Data already exists after marker: $marker');
    }
  } else {
    print('Error: Could not find the marker: $marker');
  }
  return fileContent;
}

void _updateSyncDownFile(String syncDownFilePath) {
  // Define the import statement and the new case statements
  var importStatement =
      "import 'package:attendance_management/attendance_management.dart';";
  var newCases = '''
          case DataModelType.attendance:
            responseEntities = await remote.search(AttendanceLogSearchModel(
              clientReferenceId: entities
                  .whereType<AttendanceLogModel>()
                  .map((e) => e.clientReferenceId!)
                  .whereNotNull()
                  .toList(),
              tenantId: envConfig.variables.tenantId,
            ));

            for (var element in operationGroupedEntity.value) {
              if (element.id == null) return;
              final entity = element.entity as AttendanceLogModel;
              final responseEntity = responseEntities
                  .whereType<AttendanceLogModel>()
                  .firstWhereOrNull(
                    (e) => e.clientReferenceId == entity.clientReferenceId,
                  );

              final serverGeneratedId = responseEntity?.id;
              final rowVersion = responseEntity?.rowVersion;
              if (serverGeneratedId != null) {
                await local.opLogManager.updateServerGeneratedIds(
                  model: UpdateServerGeneratedIdModel(
                    clientReferenceId: entity.clientReferenceId.toString(),
                    serverGeneratedId: serverGeneratedId,
                    nonRecoverableError: entity.nonRecoverableError,
                    dataOperation: element.operation,
                    rowVersion: rowVersion,
                  ),
                );
              } else {
                final bool markAsNonRecoverable =
                    await local.opLogManager.updateSyncDownRetry(
                  entity.clientReferenceId.toString(),
                );

                if (markAsNonRecoverable) {
                  await local.update(
                    entity.copyWith(
                      nonRecoverableError: true,
                    ),
                    createOpLog: false,
                  );
                }
              }
            }
          break;
''';

  // Check if the sync_down file exists
  var syncDownFile = File(syncDownFilePath);

  if (!syncDownFile.existsSync()) {
    print('Error: Sync Down file does not exist at path: $syncDownFilePath');
    return;
  }

  // Read the sync_down file
  var syncDownFileContent = syncDownFile.readAsStringSync();

  // Check if the import statement already exists and add it if not
  if (!syncDownFileContent
      .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
    syncDownFileContent = importStatement + '\n' + syncDownFileContent;
    print('The import statement was added to sync_down.dart.');
  } else {
    print('The import statement already exists in sync_down.dart.');
  }

  // Insert the new case statements
  if (!syncDownFileContent
      .contains('DataModelType.attendance'.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the new cases within the switch statement
    var switchIndex =
        syncDownFileContent.indexOf('switch (typeGroupedEntity.key) {');
    if (switchIndex != -1) {
      var caseInsertionIndex =
          syncDownFileContent.indexOf('default:', switchIndex);
      if (caseInsertionIndex != -1) {
        syncDownFileContent =
            syncDownFileContent.substring(0, caseInsertionIndex) +
                newCases +
                '\n' +
                syncDownFileContent.substring(caseInsertionIndex);
        print('The new cases were added to sync_down.dart.');

        // Write the updated content back to the file
        syncDownFile.writeAsStringSync(syncDownFileContent);
      } else {
        print(
            'Error: Could not find the default case in the switch statement in sync_down.dart.');
        return;
      }
    } else {
      print('Error: Could not find the switch statement in sync_down.dart.');
      return;
    }
  } else {
    print('The new cases already exist in sync_down.dart.');
  }
}

void _updateEntityMapperFile(String entityMapperFilePath) {
  // Define the import statement and new case statements
  var importStatement =
      "import 'package:attendance_management/attendance_management.dart';";
  var newCases = '''
      case "attendance":
        final entity = AttendanceLogModelMapper.fromJson(entityString);
        return entity;
''';

  // Check if the entity_mapper file exists
  var entityMapperFile = File(entityMapperFilePath);

  if (!entityMapperFile.existsSync()) {
    print(
        'Error: Entity Mapper file does not exist at path: $entityMapperFilePath');
    return;
  }

  // Read the entity_mapper file
  var entityMapperFileContent = entityMapperFile.readAsStringSync();

  // Check if the import statement already exists and add it if not
  if (!entityMapperFileContent
      .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
    entityMapperFileContent = importStatement + '\n' + entityMapperFileContent;
    print('The import statement was added.');
  } else {
    print('The import statement already exists.');
  }

  // Check if the new cases already exist in the file
  if (!entityMapperFileContent
      .contains('case "attendance":'.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the new cases (before the default case)
    var caseInsertionIndex = entityMapperFileContent.indexOf('default:');
    if (caseInsertionIndex != -1) {
      entityMapperFileContent =
          entityMapperFileContent.substring(0, caseInsertionIndex) +
              newCases +
              '\n' +
              entityMapperFileContent.substring(caseInsertionIndex);
      print('The new cases were added.');

      // Write the updated content back to the file
      entityMapperFile.writeAsStringSync(entityMapperFileContent);
    } else {
      print('Error: Could not find the insertion point.');
      return;
    }
  } else {
    print('The new cases already exist.');
  }
}

void _addAttendanceRoutesAndImportToRouterFile(String routerFilePath) {
  // Define the attendance route lines
  var attendanceRoutes = '''
    // Attendance Route
        AutoRoute(
          page: ManageAttendanceRoute.page,
          path: 'manage-attendance',
        ),
        AutoRoute(
          page: AttendanceDateSessionSelectionRoute.page,
          path: 'attendance-date-session-selection',
        ),
        AutoRoute(
          page: MarkAttendanceRoute.page,
          path: 'mark-attendance',
        ),
        AutoRoute(
          page: AttendanceAcknowledgementRoute.page,
          path: 'attendance-acknowledgement',
        ),
  ''';

  // Define the import statement
  var importStatement1 =
      "import 'package:attendance_management/router/attendance_router.gm.dart';";
  // Define the import statement
  var importStatement2 =
      "import 'package:attendance_management/router/attendance_router.dart';";

  // Check if the router file exists
  var routerFile = File(routerFilePath);

  if (!routerFile.existsSync()) {
    print('Error: Router file does not exist at path: $routerFilePath');
    return;
  }

  // Read the router file
  var routerFileContent = routerFile.readAsStringSync();

  // Normalize the whitespace in the file content
  var normalizedFileContent = routerFileContent.replaceAll(RegExp(r'\s'), '');

  // Check if the import statement already exists
  if (!normalizedFileContent
      .contains(importStatement1.replaceAll(RegExp(r'\s'), ''))) {
    // Add the import statement at the beginning of the file
    routerFileContent = importStatement1 + '\n' + routerFileContent;
    print('The import statement was added.');
  } else {
    print('The import statement already exists.');
  }

  // Check if the import statement already exists
  if (!normalizedFileContent
      .contains(importStatement2.replaceAll(RegExp(r'\s'), ''))) {
    // Add the import statement at the beginning of the file
    routerFileContent = importStatement2 + '\n' + routerFileContent;
    print('The import statement was added.');
  } else {
    print('The import statement already exists.');
  }
  // Check if the attendanceRoute module already exists
  if (!routerFileContent
      .contains('AttendanceRoute'.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the module
    var moduleInsertionIndex = routerFileContent.indexOf('@AutoRouterConfig(');
    if (moduleInsertionIndex != -1) {
      var endOfModulesIndex =
          routerFileContent.indexOf(']', moduleInsertionIndex);
      if (endOfModulesIndex != -1) {
        var modulesEndIndex =
            routerFileContent.lastIndexOf(']', endOfModulesIndex);
        routerFileContent = routerFileContent.substring(0, modulesEndIndex) +
            ' AttendanceRoute,' +
            routerFileContent.substring(modulesEndIndex);
        print('The attendanceRoute module was added.');
      } else {
        print('Error: Could not find the end of the modules list.');
        return;
      }
    } else {
      print('Error: Could not find @AutoRouterConfig annotation.');
      return;
    }
  } else {
    print('The AttendanceRoute module already exists.');
  }

  // Check if the attendance routes already exist in the file
  if (!normalizedFileContent
      .contains(attendanceRoutes.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the routes
    var insertionIndex = routerFileContent
        .indexOf('// INFO : Need to add Router of package Here');
    if (insertionIndex != -1) {
      routerFileContent = routerFileContent.substring(0, insertionIndex) +
          '// INFO : Need to add Router of package Here\n' +
          attendanceRoutes +
          routerFileContent.substring(insertionIndex +
              '// INFO : Need to add Router of package Here'.length);
      print('The attendance routes were added.');

      // Write the updated content back to the file
      routerFile.writeAsStringSync(routerFileContent);
    } else {
      print('Error: Could not find the insertion point.');
      return;
    }
  } else {
    print('The attendance routes already exist.');
  }
}

void _addAttendanceMapperToUtilsFile({required String utilsFilePath}) {
  // Define the attendance related lines
  var attendanceImportStatement = [
    "import 'package:attendance_management/attendance_management.dart' as attendance_mappers;"
  ];
  var attendanceInitializationStatement =
      "Future(() => attendance_mappers.initializeMappers()),";

  // Check if the utils.dart file exists
  var utilsFile = File(utilsFilePath);

  // Read the utils.dart file
  var utilsFileContent = utilsFile.readAsStringSync();

  // Normalize the whitespace in the file content
  var normalizedFileContent = utilsFileContent.replaceAll(RegExp(r'\s'), '');

  // Check if the import statement and delegate already exist in the file
  // If not, add them to the file
  if (!normalizedFileContent
      .contains(attendanceImportStatement[0].replaceAll(RegExp(r'\s'), ''))) {
    var libraryIndex = utilsFileContent.indexOf('library app_utils;');
    if (libraryIndex != -1) {
      var endOfLibrary = libraryIndex +
          utilsFileContent.substring(libraryIndex).indexOf(';') +
          1;
      utilsFileContent = utilsFileContent.substring(0, endOfLibrary + 1) +
          '\n' +
          attendanceImportStatement[0] +
          utilsFileContent.substring(endOfLibrary + 1);
      print('The import statement was added.');
    }
  } else {
    print('The import statement already exists.');
  }

  if (!utilsFileContent.contains(attendanceInitializationStatement)) {
    // Add the attendance related initialization statement to the file
    var initializeAllMappersIndex =
        utilsFileContent.indexOf('initializeAllMappers() async {');
    if (initializeAllMappersIndex == -1) {
      print(
          'Error: Could not find a place to insert the attendance initialization statement.');
      return;
    }
    var endOfInitializeAllMappers = initializeAllMappersIndex +
        utilsFileContent.substring(initializeAllMappersIndex).indexOf(']') +
        1;
    utilsFileContent =
        utilsFileContent.substring(0, endOfInitializeAllMappers - 1) +
            '\n    ' +
            attendanceInitializationStatement +
            utilsFileContent.substring(endOfInitializeAllMappers - 1);
    print('Attendance initialization statement added to utils.dart');
  } else {
    print('The attendance initialization statement already exists.');
  }

  // Write the updated content back to the utils.dart file
  utilsFile.writeAsStringSync(utilsFileContent);
}

void _addAttendanceConstantsToConstantsFile(
    {required String constantsFilePath}) {
  // Define the import statements
  var importStatements = [
    "import 'package:attendance_management/attendance_management.dart';",
  ];

  // Define the attendance configuration
  var attendanceConfiguration = '''
AttendanceSingleton().setTenantId(envConfig.variables.tenantId);
  ''';

  // Define the local and remote repositories
  var localRepository = '''
AttendanceLocalRepository(
  sql,
  AttendanceOpLogManager(isar),
),
AttendanceLogsLocalRepository(
  sql,
  AttendanceLogOpLogManager(isar),
),
  ''';

  var remoteRepository = '''
if (value == DataModelType.attendanceRegister)
  AttendanceRemoteRepository(dio, actionMap: actions),
if (value == DataModelType.attendance)
  AttendanceLogRemoteRepository(dio, actionMap: actions),
  ''';

  // Check if the constants.dart file exists
  var constantsFile = File(constantsFilePath);
  if (!constantsFile.existsSync()) {
    print('Error: The constants.dart file does not exist.');
    return;
  }

  // Read the constants.dart file
  var constantsFileContent = constantsFile.readAsStringSync();

  // Normalize the whitespace in the file content and the attendance configuration
  var normalizedFileContent =
      constantsFileContent.replaceAll(RegExp(r'\s'), '');
  var normalizedAttendanceConfiguration =
      attendanceConfiguration.replaceAll(RegExp(r'\s'), '');

  // Check if the import statements already exist in the file
  for (var importStatement in importStatements) {
    if (!normalizedFileContent
        .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
      // Add the import statement at the top of the file
      constantsFileContent = importStatement + '\n' + constantsFileContent;
      print('The import statement was added: $importStatement');
    }
  }

  // Check if the attendance configuration already exists in the file
  // If not, add it to the file
  if (!normalizedFileContent.contains(normalizedAttendanceConfiguration)) {
    // Find the setInitialDataOfPackages method and add the attendance configuration inside it
    var setInitialDataOfPackagesIndex =
        constantsFileContent.indexOf('void setInitialDataOfPackages() {');
    if (setInitialDataOfPackagesIndex != -1) {
      var endOfSetInitialDataOfPackages = setInitialDataOfPackagesIndex +
          constantsFileContent
              .substring(setInitialDataOfPackagesIndex)
              .indexOf('}') +
          1;
      constantsFileContent =
          constantsFileContent.substring(0, endOfSetInitialDataOfPackages - 1) +
              '\n  $attendanceConfiguration' +
              constantsFileContent.substring(endOfSetInitialDataOfPackages - 1);
      print('The attendance configuration was added.');
    }
  }

  // Add the local and remote repositories to the getLocalRepositories and getRemoteRepositories methods
  if (!normalizedFileContent
      .contains(localRepository.replaceAll(RegExp(r'\s'), ''))) {
    var getLocalRepositoriesIndex =
        constantsFileContent.indexOf('getLocalRepositories(');
    if (getLocalRepositoriesIndex != -1) {
      var endOfGetLocalRepositories = getLocalRepositoriesIndex +
          constantsFileContent
              .substring(getLocalRepositoriesIndex)
              .indexOf('addAll(') +
          'addAll('.length;
      var endOfAddAll = constantsFileContent
              .substring(endOfGetLocalRepositories)
              .indexOf(']') +
          endOfGetLocalRepositories;
      constantsFileContent = constantsFileContent.substring(0, endOfAddAll) +
          localRepository +
          constantsFileContent.substring(endOfAddAll);
      print('The local repositories were added.');
    }
  } else {
    print('The local repositories already exist.');
  }

  if (!normalizedFileContent
      .contains(remoteRepository.replaceAll(RegExp(r'\s'), ''))) {
    var getRemoteRepositoriesIndex =
        constantsFileContent.indexOf('getRemoteRepositories(');
    if (getRemoteRepositoriesIndex != -1) {
      var endOfGetRemoteRepositories = getRemoteRepositoriesIndex +
          constantsFileContent
              .substring(getRemoteRepositoriesIndex)
              .indexOf('addAll(') +
          'addAll('.length;
      var endOfAddAll = constantsFileContent
              .substring(endOfGetRemoteRepositories)
              .indexOf(']') +
          endOfGetRemoteRepositories;
      constantsFileContent = constantsFileContent.substring(0, endOfAddAll) +
          remoteRepository +
          constantsFileContent.substring(endOfAddAll);
      print('The remote repositories were added.');
    }
  } else {
    print('The remote repositories already exist.');
  }

  // Write the updated content back to the constants.dart file
  constantsFile.writeAsStringSync(constantsFileContent);
}

void _addRepoToNetworkManagerProviderWrapper(
    {required String networkManagerProviderWrapperFilePath}) {
  // Define the import statements and repository providers
  var importStatements = [
    "import 'package:attendance_management/attendance_management.dart';",
  ];
  var localRepositories = [
    "RepositoryProvider<\n          LocalRepository<AttendanceRegisterModel,\n              AttendanceRegisterSearchModel>>(\n        create: (_) => AttendanceLocalRepository(\n          sql,\n          AttendanceOpLogManager(isar),\n        ),\n      ),",
    "RepositoryProvider<\n          LocalRepository<AttendanceLogModel, AttendanceLogSearchModel>>(\n        create: (_) => AttendanceLogsLocalRepository(\n          sql,\n          AttendanceLogOpLogManager(isar),\n        ),\n      ),",
  ];

// Define the remote repositories of attendance
  var remoteRepositoriesOfRegistrationDelivery = [
    "if (value == DataModelType.attendanceRegister)\n"
        "  RepositoryProvider<\n"
        "      RemoteRepository<AttendanceRegisterModel,\n"
        "          AttendanceRegisterSearchModel>>(\n"
        "    create: (_) =>\n"
        "        AttendanceRemoteRepository(dio, actionMap: actions),\n"
        "  )",
    "if (value == DataModelType.attendance)\n"
        "  RepositoryProvider<\n"
        "      RemoteRepository<AttendanceLogModel,\n"
        "          AttendanceLogSearchModel>>(\n"
        "    create: (_) =>\n"
        "        AttendanceLogRemoteRepository(dio, actionMap: actions),\n"
        "  )"
  ];

// Read the network_manager_provider_wrapper.dart file
  var networkManagerProviderWrapperFile =
      File(networkManagerProviderWrapperFilePath);
  var networkManagerProviderWrapperFileContent =
      networkManagerProviderWrapperFile.readAsStringSync();

// Find the last import statement in the file
  var lastImportIndex = networkManagerProviderWrapperFileContent
      .lastIndexOf(RegExp(r'import .+;'));

  if (lastImportIndex != -1) {
    var endOfLastImport = lastImportIndex +
        networkManagerProviderWrapperFileContent
            .substring(lastImportIndex)
            .indexOf(';') +
        1;

    // Check if the import statements already exist in the file
    for (var importStatement in importStatements) {
      if (!networkManagerProviderWrapperFileContent
          .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
        // Add the import statement after the last import
        networkManagerProviderWrapperFileContent =
            networkManagerProviderWrapperFileContent.substring(
                    0, endOfLastImport) +
                '\n' +
                importStatement +
                networkManagerProviderWrapperFileContent
                    .substring(endOfLastImport);
        endOfLastImport += importStatement.length + 1;
        print('The import statement was added: $importStatement');
      } else {
        print('The import statement already exists.');
      }
    }

    // Normalize the whitespace in the file content and the remote repository of attendance
    var normalizedFileContent =
        networkManagerProviderWrapperFileContent.replaceAll(RegExp(r'\s'), '');

// Check if the local repository providers already exist in the file
    for (var repositoryProvider in localRepositories) {
      var normalizedLocalRepositoryOfAttendance =
          repositoryProvider.replaceAll(RegExp(r'\s'), '');

      if (!normalizedFileContent
          .contains(normalizedLocalRepositoryOfAttendance)) {
        // Add the local repository provider to the file
        networkManagerProviderWrapperFileContent =
            networkManagerProviderWrapperFileContent.replaceFirst(
                '];', '  $repositoryProvider\n];');
        print('The local repository provider was added: $repositoryProvider');
      } else {
        print('The local repository provider already exists.');
      }
    }

// Check if the remote repository of attendance already exists in the file
    for (var remoteRepositoryOfRegistrationDelivery
        in remoteRepositoriesOfRegistrationDelivery) {
      var normalizedRemoteRepositoryOfRegistrationDelivery =
          remoteRepositoryOfRegistrationDelivery.replaceAll(RegExp(r'\s'), '');

      if (!normalizedFileContent
          .contains(normalizedRemoteRepositoryOfRegistrationDelivery)) {
        // Add the remote repository of attendance to the _getRemoteRepositories method
        var replacementString =
            networkManagerProviderWrapperFileContent.contains(']);')
                ? '  $remoteRepositoryOfRegistrationDelivery,\n]);'
                : '  $remoteRepositoryOfRegistrationDelivery\n]);';
        networkManagerProviderWrapperFileContent =
            networkManagerProviderWrapperFileContent.replaceFirst(
                ']);', replacementString);
        print(
            'The remote repository of attendance was added: $remoteRepositoryOfRegistrationDelivery');
      } else {
        print('The remote repository of attendance already exists.');
      }
    }

    // Write the updated content back to the file
    networkManagerProviderWrapperFile
        .writeAsStringSync(networkManagerProviderWrapperFileContent);
  }
}

void _createLocalizationDelegatesFile(String localizationDelegatesFilePath) {
  // Define the import statement and delegate for localization
  var importStatement =
      "import 'package:attendance_management/blocs/app_localization.dart' as attendance_localization;";
  var delegate =
      "attendance_localization.AttendanceLocalization.getDelegate(getLocalizationString(isar,selectedLocale,),appConfig.languages!,),";

  // Read the localization delegates file
  var localizationDelegatesFile = File(localizationDelegatesFilePath);
  var localizationDelegatesFileContent =
      localizationDelegatesFile.readAsStringSync();

  var normalizedFileContent =
      localizationDelegatesFileContent.replaceAll(RegExp(r'\s'), '');

  // Check if the import statement and delegate already exist in the file
  // If not, add them to the file
  if (!normalizedFileContent
      .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
    localizationDelegatesFileContent =
        '$importStatement\n$localizationDelegatesFileContent';
    print('The import statement was added.');
  }

  if (!normalizedFileContent.contains(delegate.replaceAll(RegExp(r'\s'), ''))) {
    var lastDelegateIndex =
        localizationDelegatesFileContent.lastIndexOf(RegExp(r','));
    if (lastDelegateIndex != -1) {
      localizationDelegatesFileContent =
          localizationDelegatesFileContent.substring(0, lastDelegateIndex + 1) +
              '\n  $delegate' +
              localizationDelegatesFileContent.substring(lastDelegateIndex + 1);
      print('The delegate was added.');
    }
  }

  // Write the updated content back to the file
  localizationDelegatesFile.writeAsStringSync(localizationDelegatesFileContent);
}
