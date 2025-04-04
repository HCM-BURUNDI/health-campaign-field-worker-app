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
  var syncUpFilePath = appRoot + '/data/repositories/sync/sync_up.dart';
  var homeFilePath = appRoot + '/pages/home.dart';
  var extensionsFilePath = appRoot + '/utils/extensions/extensions.dart';
  var contextUtilityFilePath =
      appRoot + '/utils/extensions/context_utility.dart';

  // Set boundary in the context utility file
  _setBoundaryInContextUtilityFile(extensionsFilePath, contextUtilityFilePath);

  // Add complaints to home file
  _updateHome(homeFilePath);

  // Update the sync_up.dart file
  _updateSyncUpFile(syncUpFilePath);

  // Add complaints routes and import to the router file
  _addComplaintsRoutesAndImportToRouterFile(routerFilePath);

  // Add new case statements to the entity_mapper.dart file
  _updateEntityMapperFile(entityMapperFilePath);

  _createLocalizationDelegatesFile(localizationDelegatesFilePath);

  _addRepoToNetworkManagerProviderWrapper(
      networkManagerProviderWrapperFilePath:
      networkManagerProviderWrapperFilePath);

  _addComplaintsConstantsToConstantsFile(constantsFilePath: constantsFilePath);

  _addComplaintsMapperToUtilsFile(utilsFilePath: utilsFilePath);

  _formatFiles([
    homeFilePath,
    syncUpFilePath,
    entityMapperFilePath,
    routerFilePath,
    constantsFilePath,
    utilsFilePath,
    networkManagerProviderWrapperFilePath,
    localizationDelegatesFilePath,
    extensionsFilePath,
    contextUtilityFilePath
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
     import 'package:complaints/complaints.dart';
     import 'package:complaints/router/complaints_router.gm.dart';
     ''';

  var homeItemsData = '''
   i18.home.fileComplaint:
         homeShowcaseData.distributorFileComplaint.buildWith(
       child: HomeItemCard(
         icon: Icons.announcement,
         label: i18.home.fileComplaint,
         onPressed: () =>
             context.router.push(const ComplaintsInboxWrapperRoute()),
       ),
     ),
 ''';

  var showCaseData = '''
     i18.home.fileComplaint:
         homeShowcaseData.distributorFileComplaint.showcaseKey,
 ''';

  var itemsLabel = '''
       i18.home.fileComplaint,
 ''';

  // Define the data to be added
  var singletonData = '''
   ComplaintsSingleton().setInitialData(
         tenantId: envConfig.variables.tenantId,
         loggedInUserUuid: context.loggedInUserUuid,
         userMobileNumber: context.loggedInUser.mobileNumber,
         loggedInUserName: context.loggedInUser.name,
         complaintTypes:
             appConfiguration.complaintTypes!.map((e) => e.code).toList(),
        userName: context.loggedInUser.name ?? '',
       );
 ''';

  var localRepoData = '''
   context.read<LocalRepository<PgrServiceModel, PgrServiceSearchModel>>(),
 ''';

  var remoteRepoData = '''
  context.read<RemoteRepository<PgrServiceModel, PgrServiceSearchModel>>(),
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

//script working
void _updateSyncUpFile(String syncUpFilePath) {
  // Define the import statement and the new case statements
  var importStatement = "import 'package:complaints/complaints.dart';";
  var newCases = '''
         case DataModelType.complaints:
                 for (final entity in entities) {
                   if (remote is PgrServiceRemoteRepository &&
                       entity is PgrServiceModel) {
                     final response = await remote.create(entity);
                     final responseData = response.data;
                     if (responseData is! Map<String, dynamic>) {
                       AppLogger.instance.error(
                         title: 'NetworkManager : PgrServiceRemoteRepository',
                         message: responseData,
                         stackTrace: StackTrace.current,
                       );
                       continue;
                     }


                     PgrServiceCreateResponseModel
                         pgrServiceCreateResponseModel;
                     PgrComplaintResponseModel pgrComplaintModel;
                     try {
                       pgrServiceCreateResponseModel =
                           PgrServiceCreateResponseModelMapper.fromMap(
                         responseData,
                       );
                       pgrComplaintModel =
                           pgrServiceCreateResponseModel.serviceWrappers.first;
                     } catch (e) {
                       rethrow;
                     }


                     final service = pgrComplaintModel.service;
                     final serviceRequestId = service.serviceRequestId;


                     if (serviceRequestId == null ||
                         serviceRequestId.isEmpty) {
                       AppLogger.instance.error(
                         title: 'NetworkManager : PgrServiceRemoteRepository',
                         message: 'Service Request ID is null',
                         stackTrace: StackTrace.current,
                       );
                       continue;
                     }


                     await local.markSyncedUp(
                       entry: sublist.firstWhere((element) =>
                           element.clientReferenceId ==
                           entity.clientReferenceId),
                       clientReferenceId: entity.clientReferenceId,
                       nonRecoverableError: entity.nonRecoverableError,
                     );


                     await local.opLogManager.updateServerGeneratedIds(
                       model: UpdateServerGeneratedIdModel(
                         clientReferenceId: entity.clientReferenceId,
                         serverGeneratedId: serviceRequestId,
                         dataOperation: operationGroupedEntity.key,
                         rowVersion: entity.rowVersion,
                       ),
                     );


                     await local.update(
                       entity.copyWith(
                         serviceRequestId: serviceRequestId,
                         id: service.id,
                         applicationStatus: service.applicationStatus,
                         accountId: service.accountId,
                       ),
                       createOpLog: false,
                     );
                   }
                 }
                 break;
''';

  // Check if the sync_up file exists
  var syncUpFile = File(syncUpFilePath);

  if (!syncUpFile.existsSync()) {
    print('Error: Sync Up file does not exist at path: $syncUpFilePath');
    return;
  }

  // Read the sync_up file
  var syncUpFileContent = syncUpFile.readAsStringSync();
  print(syncUpFileContent);
  // Check if the import statement already exists and add it if not
  if (!syncUpFileContent
      .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
    syncUpFileContent = importStatement + '\n' + syncUpFileContent;
    print('The import statement was added to sync_up.dart.');

  } else {
    print('The import statement already exists in sync_up.dart.');
  }

  // Insert the new case statements
  if (!syncUpFileContent
      .contains('case DataModelType.complaints:'.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the new cases within the switch statement
    var switchIndex =
    syncUpFileContent.indexOf('switch (typeGroupedEntity.key) {');
    if (switchIndex != -1) {
      var caseInsertionIndex =
      syncUpFileContent.indexOf('default:', switchIndex);
      if (caseInsertionIndex != -1) {
        syncUpFileContent =
            syncUpFileContent.substring(0, caseInsertionIndex) +
                newCases +
                '\n' +
                syncUpFileContent.substring(caseInsertionIndex);
        print('The new cases were added to sync_up.dart.');

        // Write the updated content back to the file
        syncUpFile.writeAsStringSync(syncUpFileContent);
      } else {
        print(
            'Error: Could not find the default case in the switch statement in sync_up.dart.');
        return;
      }
    } else {
      print('Error: Could not find the switch statement in sync_up.dart.');
      return;
    }
  } else {
    print('The new cases already exist in sync_up.dart.');
  }
}

void _updateEntityMapperFile(String entityMapperFilePath) {
  // Define the import statement and new case statements
  var importStatement =
      "import 'package:complaints/complaints.dart';";
  var newCases = '''
     case "complaints":
       final entity = PgrServiceModelMapper.fromJson(entityString);
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
      .contains('case "complaints":'.replaceAll(RegExp(r'\s'), ''))) {
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
//script working
void _addComplaintsRoutesAndImportToRouterFile(String routerFilePath) {
  // Define the complaints route lines
  var complaintsRoutes = '''
       AutoRoute(
         page: ComplaintsInboxWrapperRoute.page,
         path: 'complaints-inbox',
         children: [
           AutoRoute(
             page: ComplaintsInboxRoute.page,
             path: 'complaints-inbox-items',
             initial: true,
           ),
           AutoRoute(
             page: ComplaintsInboxFilterRoute.page,
             path: 'complaints-inbox-filter',
           ),
           AutoRoute(
             page: ComplaintsInboxSearchRoute.page,
             path: 'complaints-inbox-search',
           ),
           AutoRoute(
             page: ComplaintsInboxSortRoute.page,
             path: 'complaints-inbox-sort',
           ),
           AutoRoute(
             page: ComplaintsDetailsViewRoute.page,
             path: 'complaints-inbox-view-details',
           ),
         ],
       ),


       /// Complaints registration
       AutoRoute(
         page: ComplaintsRegistrationWrapperRoute.page,
         path: 'complaints-registration',
         children: [
           AutoRoute(
             page: ComplaintTypeRoute.page,
             path: 'complaints-type',
             initial: true,
           ),
           AutoRoute(
             page: ComplaintsLocationRoute.page,
             path: 'complaints-location',
           ),
           AutoRoute(
             page: ComplaintsDetailsRoute.page,
             path: 'complaints-details',
           ),
         ],
       ),


       /// Complaints Acknowledgemnet
       AutoRoute(
         page: ComplaintsAcknowledgementRoute.page,
         path: 'complaints-acknowledgement',
       ),
 ''';

  // Define the import statement
  var importStatement1 =
      "import 'package:complaints/router/complaints_router.gm.dart';";
  // Define the import statement
  var importStatement2 =
      "import 'package:complaints/router/complaints_router.dart';";

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

  // Check if the complaintsRoute module already exists
  if (!routerFileContent
      .contains('ComplaintsRoute'.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the module
    var moduleInsertionIndex = routerFileContent.indexOf('@AutoRouterConfig(');
    if (moduleInsertionIndex != -1) {
      var endOfModulesIndex =
      routerFileContent.indexOf(']', moduleInsertionIndex);
      if (endOfModulesIndex != -1) {
        var modulesEndIndex =
        routerFileContent.lastIndexOf(']', endOfModulesIndex);
        routerFileContent = routerFileContent.substring(0, modulesEndIndex) +
            ' ComplaintsRoute,' +
            routerFileContent.substring(modulesEndIndex);

        print('The ComplaintsRoute module was added.');
      } else {
        print('Error: Could not find the end of the modules list.');
        return;
      }
    } else {
      print('Error: Could not find @AutoRouterConfig annotation.');
      return;
    }
  } else {
    print('The ComplaintsRoute module already exists.');
  }

  // Check if the complaints routes already exist in the file
  if (!normalizedFileContent
      .contains(complaintsRoutes.replaceAll(RegExp(r'\s'), ''))) {
    // Find the position to insert the routes
    var insertionIndex = routerFileContent
        .indexOf('// INFO : Need to add Router of package Here');
    if (insertionIndex != -1) {
      routerFileContent = routerFileContent.substring(0, insertionIndex) +
          '// INFO : Need to add Router of package Here\n' +
          complaintsRoutes +
          routerFileContent.substring(insertionIndex +
              '// INFO : Need to add Router of package Here'.length);

      print('The complaint routes were added.');
      // Write the updated content back to the file
      routerFile.writeAsStringSync(routerFileContent);
    } else {
      print('Error: Could not find the insertion point.');
      return;
    }
  } else {
    print('The complaint routes already exist.');
  }
}

//initialise mappers
void _addComplaintsMapperToUtilsFile({required String utilsFilePath}) {
  // Define the complaints related lines
  var complaintsImportStatement = [
    "import 'package:complaints/complaints.init.dart' as complaints_mappers;"
  ];
  var complaintsInitializationStatement =
      "Future(() => complaints_mappers.initializeMappers()),";

  // Check if the utils.dart file exists
  var utilsFile = File(utilsFilePath);

  // Read the utils.dart file
  var utilsFileContent = utilsFile.readAsStringSync();

  // Normalize the whitespace in the file content
  var normalizedFileContent = utilsFileContent.replaceAll(RegExp(r'\s'), '');

  var getSyncCountStatement = "case DataModelType.complaints:";

  // Check if the import statement and delegate already exist in the file
  // If not, add them to the file
  if (!normalizedFileContent
      .contains(complaintsImportStatement[0].replaceAll(RegExp(r'\s'), ''))) {
    var libraryIndex = utilsFileContent.indexOf('library app_utils;');
    if (libraryIndex != -1) {
      var endOfLibrary = libraryIndex +
          utilsFileContent.substring(libraryIndex).indexOf(';') +
          1;
      utilsFileContent = utilsFileContent.substring(0, endOfLibrary + 1) +
          '\n' +
          complaintsImportStatement[0] +
          utilsFileContent.substring(endOfLibrary + 1);
      print('The import statement was added.');
    }
  } else {
    print('The import statement already exists.');
  }

  if (!utilsFileContent.contains(complaintsInitializationStatement)) {
    // Add the complaints related initialization statement to the file
    var initializeAllMappersIndex =
    utilsFileContent.indexOf('initializeAllMappers() async {');
    if (initializeAllMappersIndex == -1) {
      print(
          'Error: Could not find a place to insert the complaint initialization statement.');
      return;
    }
    var endOfInitializeAllMappers = initializeAllMappersIndex +
        utilsFileContent.substring(initializeAllMappersIndex).indexOf(']') +
        1;
    utilsFileContent =
        utilsFileContent.substring(0, endOfInitializeAllMappers - 1) +
            '\n    ' +
            complaintsInitializationStatement +
            utilsFileContent.substring(endOfInitializeAllMappers - 1);
    print('complaint initialization statement added to utils.dart');
  } else {
    print('The complaint initialization statement already exists.');
  }

  if (!utilsFileContent.contains(getSyncCountStatement)) {
    var getSyncCountStatementIndex =
    utilsFileContent.indexOf('add SyncCount case for package');
    if (getSyncCountStatementIndex == -1) {
      print(
          'Error: Could not find a place to insert the complaint DataModelType statement.');
      return;
    }

    var endOfgetSyncCountStatementIndex = getSyncCountStatementIndex +
        utilsFileContent.substring(getSyncCountStatementIndex).indexOf('}') +
        1;
    utilsFileContent =
        utilsFileContent.substring(0, getSyncCountStatementIndex + 30) +
            '\n    ' +
            getSyncCountStatement +
            utilsFileContent.substring(getSyncCountStatementIndex + 30);
    print('complaint DataModelType statement added to utils.dart');
  } else {
    print('The complaint DataModelType statement already exists.');
  }

  // Write the updated content back to the utils.dart file
  utilsFile.writeAsStringSync(utilsFileContent);
}

void _addComplaintsConstantsToConstantsFile(
    {required String constantsFilePath}) {
  // Define the import statements
  var importStatements = [
    "import 'package:complaints/complaints.dart';",
  ];

  // Define the local and remote repositories
  var localRepository = [
    '''
 PgrServiceLocalRepository(
       sql,
       PgrServiceOpLogManager(isar),
     ),
 '''
  ];

  var remoteRepository = [
    '''
if (value == DataModelType.complaints)
         PgrServiceRemoteRepository(dio, actionMap: actions),
 '''
  ];

  // Check if the constants.dart file exists
  var constantsFile = File(constantsFilePath);
  if (!constantsFile.existsSync()) {
    print('Error: The constants.dart file does not exist.');
    return;
  }

  // Read the constants.dart file
  var constantsFileContent = constantsFile.readAsStringSync();

  // Normalize the whitespace in the file content and the complaints configuration
  var normalizedFileContent =
  constantsFileContent.replaceAll(RegExp(r'\s'), '');

  // Check if the import statements already exist in the file
  for (var importStatement in importStatements) {
    if (!normalizedFileContent
        .contains(importStatement.replaceAll(RegExp(r'\s'), ''))) {
      // Add the import statement at the top of the file
      constantsFileContent = importStatement + '\n' + constantsFileContent;
      print('The import statement was added: $importStatement');
    }
  }

  // Add the local and remote repositories to the getLocalRepositories and getRemoteRepositories methods
  var getLocalRepositoriesIndex =
  constantsFileContent.indexOf('getLocalRepositories(');
  if (getLocalRepositoriesIndex != -1) {
    var endOfGetLocalRepositories = getLocalRepositoriesIndex +
        constantsFileContent.substring(getLocalRepositoriesIndex).indexOf(']') +
        1;
    constantsFileContent =
        constantsFileContent.substring(0, endOfGetLocalRepositories - 1) +
            '\n' +
            localRepository.join('\n') +
            constantsFileContent.substring(endOfGetLocalRepositories - 1);
    print('The local repositories were added.');
  }

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
        remoteRepository.join('\n') +
        constantsFileContent.substring(endOfAddAll);
    print('The remote repositories were added.');
  }

  // Write the updated content back to the constants.dart file
  constantsFile.writeAsStringSync(constantsFileContent);
}

void _addRepoToNetworkManagerProviderWrapper(
    {required String networkManagerProviderWrapperFilePath}) {
  // Define the import statements and repository providers
  var importStatements = [
    "import  'package:complaints/complaints.dart';",
  ];
  var localRepositories = [
    "RepositoryProvider<\n LocalRepository<PgrServiceModel, PgrServiceSearchModel>>(\n create: (_) => PgrServiceLocalRepository(\n sql,\n  PgrServiceOpLogManager(isar),\n ),\n ),"
  ];

// Define the remote repositories of complaints
  var remoteRepositoriesOfRegistrationDelivery = [
    "if (value == DataModelType.complaints)\n RepositoryProvider<\n    RemoteRepository<PgrServiceModel, PgrServiceSearchModel>>(\n  create: (_) => PgrServiceRemoteRepository(\n    dio,\n    actionMap: actions,\n  ),\n)"
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


    // Normalize the whitespace in the file content and the remote repository of complaints
    var normalizedFileContent =
    networkManagerProviderWrapperFileContent.replaceAll(RegExp(r'\s'), '');


// Check if the local repository providers already exist in the file
    for (var repositoryProvider in localRepositories) {
      var normalizedLocalRepositoryOfComplaints =
      repositoryProvider.replaceAll(RegExp(r'\s'), '');


      if (!normalizedFileContent
          .contains(normalizedLocalRepositoryOfComplaints)) {
        // Add the local repository provider to the file
        networkManagerProviderWrapperFileContent =
            networkManagerProviderWrapperFileContent.replaceFirst(
                '];', '  $repositoryProvider\n];');
        print('The local repository provider was added: $repositoryProvider');
      } else {
        print('The local repository provider already exists.');
      }
    }


// Check if the remote repository of complaints already exists in the file
    for (var remoteRepositoryOfRegistrationDelivery
    in remoteRepositoriesOfRegistrationDelivery) {
      var normalizedRemoteRepositoryOfRegistrationDelivery =
      remoteRepositoryOfRegistrationDelivery.replaceAll(RegExp(r'\s'), '');


      if (!normalizedFileContent
          .contains(normalizedRemoteRepositoryOfRegistrationDelivery)) {
        // Add the remote repository of complaints to the _getRemoteRepositories method
        var replacementString =
        networkManagerProviderWrapperFileContent.contains(']);')
            ? '  $remoteRepositoryOfRegistrationDelivery,\n]);'
            : '  $remoteRepositoryOfRegistrationDelivery\n]);';
        networkManagerProviderWrapperFileContent =
            networkManagerProviderWrapperFileContent.replaceFirst(
                ']);', replacementString);
        print(
            'The remote repository of complaints was added: $remoteRepositoryOfRegistrationDelivery');
      } else {
        print('The remote repository of complaints already exists.');
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
      "import 'package:complaints/blocs/localization/app_localization.dart' as complaints_localization;";
  var delegate =
      " complaints_localization.ComplaintsLocalization.getDelegate( LocalizationLocalRepository().returnLocalizationFromSQL(sql) as Future,appConfig.languages!,),";


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




void _setBoundaryInContextUtilityFile(
    String extensionsFilePath, String contextUtilityFilePath) {
  // Define the lines to be added
  var importStatement =
      "import 'package:complaints/utils/utils.dart';";
  var boundaryStatement =
      'ComplaintsSingleton().setBoundary(boundary: selectedBoundary);';


  // Update the extensions.dart file
  var extensionsFile = File(extensionsFilePath);
  var extensionsFileContent = extensionsFile.readAsStringSync();
  if (!extensionsFileContent.contains(importStatement)) {
    extensionsFileContent = importStatement + '\n' + extensionsFileContent;
    extensionsFile.writeAsStringSync(extensionsFileContent);
    print('Updated the extensions.dart file.');
  }


  // Update the context_utility.dart file
  var contextUtilityFile = File(contextUtilityFilePath);
  var contextUtilityFileContent = contextUtilityFile.readAsStringSync();


  // Use the insertData method to insert the boundaryStatement
  contextUtilityFileContent = insertData(contextUtilityFileContent,
      '// INFO: Set Boundary for packages', boundaryStatement);


  // Write the updated content back to the context_utility.dart file
  contextUtilityFile.writeAsStringSync(contextUtilityFileContent);




}





