import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as p;

import 'models.dart';

class Postgen {
  void run(dynamic vars) async {
    try {
      final variables = vars;

      ConfigModelMapper.ensureInitialized();
      AttributeModelMapper.ensureInitialized();
      EnumValuesMapper.ensureInitialized();
      TableReferenceModelMapper.ensureInitialized();

      ConfigModel model = ConfigModelMapper.fromMap(variables);
      if (!model.createRepository) {
        final path = p.join(
          'data',
          'repositories',
          'remote',
          '${model.name.snakeCase}.dart',
        );
        await _deleteFile(path);
      }

      if(!model.createEntity) {
        final path = p.join(
          'models',
          'entities',
          '${model.name.snakeCase}.dart',
        );
        await _deleteFile(path);
      }

      if (model.isEnum) {
        final path = p.join(
          'data',
          'local_store',
          'sql_store',
          'tables',
          '${model.name.snakeCase}.dart',
        );
        await _deleteFile(path);
      } else {
        await _addImportStatement(model.name);
        await _addSqlTablesInGDartFile(variables);
      }
    } catch(e) {
      print(e);
    }
  }

  Future<void> _deleteFile(String path) async {
    final file = File(path);
    if (file.existsSync()) {
      try {
        await file.delete();
      } catch (e) {
        print("Error: $e");
      }
    } else {
      print("File does not exist");
    }
  }

  Future<void> _addSqlTablesInGDartFile(dynamic vars) async {
    final name = vars['name'];

    // Generate the tables and data classes
    String classCode = generateTableClassCode(vars);
    await appendToFile(classCode);
    print("${name.toString().pascalCase}Table class is added in sql_store.g.dart");

    // Generate the data class
    classCode = generateDataClassCode(vars);
    await appendToFile(classCode);
    print("${name.toString().pascalCase}Data class is added in sql_store.g.dart");

    // Generate the data class
    classCode = generateCompanionClassCode(vars);
    await appendToFile(classCode);
    print("${name.toString().pascalCase}Companion class is added in sql_store.g.dart");

    // Check if the sql_store.g.dart file exists
    var sqlStoreFile = File("data/local_store/sql_store/sql_store.g.dart");

    // Read the sql_store.g.dart file
    var sqlStoreFileContent = sqlStoreFile.readAsStringSync();

    var localSqlDataStore = '''late final \$${name.toString().pascalCase}Table ${name.toString().camelCase} = \$${name.toString().pascalCase}Table(this);''';
    var schemaEntity = '${name.toString().camelCase},';

    var libraryIndex = sqlStoreFileContent.indexOf("super(e);");
    if (libraryIndex != -1) {
      var endOfLibrary = libraryIndex +
          "super(e);".length;
      sqlStoreFileContent = sqlStoreFileContent.substring(0, (endOfLibrary + 1) as int?) +
          localSqlDataStore + '\n' +
          sqlStoreFileContent.substring((endOfLibrary + 1) as int);

      // Write the updated content back to the utils.dart file
      sqlStoreFile.writeAsStringSync(sqlStoreFileContent);
    }else {
      print('Could not find the target string');
    }

    // The target substring we want to search after
    String targetString = 'List<DatabaseSchemaEntity>';

    // Find the index of the target substring
    int targetIndex = sqlStoreFileContent.indexOf(targetString);

    if (targetIndex != -1) {
      // Find the index of '[' after the target substring
      int libraryIndex = sqlStoreFileContent.indexOf('[', targetIndex);

      if (libraryIndex != -1) {
        var endOfLibrary = libraryIndex + 1;
        sqlStoreFileContent = sqlStoreFileContent.substring(0, (endOfLibrary + 1) as int?) +
            schemaEntity + '\n' +
            sqlStoreFileContent.substring((endOfLibrary + 1) as int);

        // Write the updated content back to the utils.dart file
        sqlStoreFile.writeAsStringSync(sqlStoreFileContent);
      } else {
        print('Could not find "[" after "$targetString".');
      }
    } else {
      print('Could not find the target string "$targetString".');
    }
  }

  String generateDataClassCode(Map<String, dynamic> json) {
    String className = json['name'];
    StringBuffer classCode = StringBuffer();

    classCode.writeln('''class ${className.pascalCase}Data extends DataClass implements Insertable<${className.pascalCase}Data> {''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''final ${attribute['type']}${attribute['nullable'] == true ? '?' : ''} ${attribute['name']};''');
    }

    classCode.writeln('''const ${className.pascalCase}Data(
      {''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['nullable'] == true ? '' : "required"} this.${attribute['name']},''');
    }

    classCode.writeln('''});
    @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''if (!nullToAbsent || ${attribute['name']} != null) {
      map['${attribute['name'].toString().snakeCase}'] = Variable<${attribute['type']}>(${attribute['name']});
    }''');
    }

    classCode.writeln('''return map;
  }

  ${className.pascalCase}Companion toCompanion(bool nullToAbsent) {
    return ${className.pascalCase}Companion(''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']}: ${attribute['name']} == null && nullToAbsent
          ? const Value.absent()
          : Value(${attribute['name']}),''');
    }

    classCode.writeln(''');
  }

  factory ${className.pascalCase}Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ${className.pascalCase}Data(''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']}: serializer.fromJson<${attribute['type']}${attribute['nullable'] == true ? '?' : ''}>(json['${attribute['name']}']),''');
    }

    classCode.writeln(''');
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln(''''${attribute['name']}': serializer.toJson<${attribute['type']}${attribute['nullable'] == true ? '?' : ''}>(${attribute['name']}),''');
    }

    classCode.writeln('''};
  }

  ${className.pascalCase}Data copyWith({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      if(attribute['nullable'] == true) {
        classCode.writeln('''Value<${attribute['type']}${attribute['nullable'] == true ? '?' : ''}> ${attribute['name']} = const Value.absent(),''');
      }
      else {
        classCode.writeln('''${attribute['type']}? ${attribute['name']},''');
      }
    }

    classCode.writeln('''}) =>
      ${className.pascalCase}Data(''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      if(attribute['nullable'] == true) {
        classCode.writeln('''${attribute['name']}:
        ${attribute['name']}.present ? ${attribute['name']}.value : this.${attribute['name']},''');
      }
      else {
        classCode.writeln('''${attribute['name']}: ${attribute['name']} ?? this.${attribute['name']},''');
      }
    }

    classCode.writeln(''');
  @override
  String toString() {
    return (StringBuffer('${className.pascalCase}Data(')''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''..write('${attribute['name']}: \$${attribute['name']}, ')''');
    }

    classCode.writeln('''..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']},''');
    }

    classCode.writeln(''']);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ${className.pascalCase}Data && ''');

    int i=0;
    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == true) {
        classCode.writeln('''other.${attribute['name']} == this.${attribute['name']} ${i < json['attributes'].length - 1 ? '&&' : ''} ''');
      }
      i++;
    }

    classCode.writeln(''');
}
''');

    return classCode.toString();
  }

  String generateTableClassCode(Map<String, dynamic> json) {
    String className = json['name'];
    StringBuffer classCode = StringBuffer();

    classCode.writeln('''class \$${className.pascalCase}Table extends ${className.pascalCase} with TableInfo<\$${className.pascalCase}Table, ${className.pascalCase}Data> {
        @override
        final GeneratedDatabase attachedDatabase;
        final String? _alias;
        \$${className.pascalCase}Table(this.attachedDatabase, [this._alias]);
''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''
      static const VerificationMeta _${attribute['name']}Meta = const VerificationMeta('${attribute['name']}');
      @override
        late final GeneratedColumn<${attribute['type']}> ${attribute['name']} = GeneratedColumn<${attribute['type']}> (
          '${attribute['name'].toString().snakeCase}', aliasedName, true,
          type: DriftSqlType.${attribute['type'].toString().toLowerCase()}, requiredDuringInsert: false);
          
          ''');
    }

    classCode.writeln('''
      static const VerificationMeta _additionalFieldsMeta =
      const VerificationMeta('additionalFields');
  @override
  late final GeneratedColumn<String> additionalFields = GeneratedColumn<String>(
      'additional_fields', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);''');

    classCode.writeln('''@override
        List<GeneratedColumn> get \$columns => [''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']},''');
    }

    classCode.writeln("];");

    classCode.writeln(''' 
    @override
        String get aliasedName => _alias ?? actualTableName;
        @override
        String get actualTableName => \$name;
        static const String \$name = '${className.snakeCase}';

        @override
        VerificationContext validateIntegrity(Insertable<${className.pascalCase}Data> instance, {bool isInserting = false}) {
          final context = VerificationContext();
          final data = instance.toColumns(true);
        ''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''if (data.containsKey('${attribute['name'].toString().snakeCase}')) {
            context.handle(_${attribute['name']}Meta, ${attribute['name']}.isAcceptableOrUnknown(data['${attribute['name'].toString().snakeCase}']!, _${attribute['name']}Meta));
          }
          ''');
      if(attribute['nullable'] == false) {
        classCode.writeln('''else if (isInserting) {
      context.missing(_${attribute['name']}Meta);
    }
          ''');
      }
    }
    classCode.writeln('''return context;}
    @override
  Set<GeneratedColumn> get \$primaryKey => {
    ''');

    for (var sql_attribute in json['sqlAttributes']) {
      if(sql_attribute['includeForTable'] == false) continue;
      if(sql_attribute['isPk']) {
        classCode.writeln('${sql_attribute['name']},');
      }
    }

    classCode.writeln('''};
  @override
  ${className.pascalCase}Data map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '\$tablePrefix.' : '';
    return ${className.pascalCase}Data(''');

    for(var  attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']}: attachedDatabase.typeMapping
          .read(DriftSqlType.${attribute['type'].toString().toLowerCase()}, data['\${effectivePrefix}${attribute['name'].toString().snakeCase}'])${attribute['nullable'] == false ? '!' : ''},''');
    }

    classCode.writeln(''' );
  }

  @override
  \$${className.pascalCase}Table createAlias(String alias) {
    return \$${className.pascalCase}Table(attachedDatabase, alias);
  }}''');
    return classCode.toString();
  }

  String generateCompanionClassCode(Map<String, dynamic> json) {
    String className = json['name'];
    StringBuffer classCode = StringBuffer();

    classCode.writeln('''class ${className.pascalCase}Companion extends UpdateCompanion<${className.pascalCase}Data> {''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''final Value<${attribute['type']}${attribute['nullable'] == true ? '?' : ''}> ${attribute['name']};''');
    }

    classCode.writeln('''const ${className.pascalCase}Companion({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''this.${attribute['name']} = const Value.absent(),''');
    }

    classCode.writeln('''});
  ${className.pascalCase}Companion.insert({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      if(attribute['nullable'] == false) {
        classCode.writeln('''required ${attribute['type']} ${attribute['name']},''');
      }
      else {
        classCode.writeln('''this.${attribute['name']} = const Value.absent(),''');
      }
    }

    classCode.writeln('''}) : clientReferenceId = Value(clientReferenceId);
  static Insertable<${className.pascalCase}Data> custom({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''Expression<${attribute['type']}>? ${attribute['name']},''');
    }

    classCode.writeln('''}) {
    return RawValuesInsertable({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''if (${attribute['name']} != null) '${attribute['name']}': ${attribute['name']},''');
    }

    classCode.writeln(''' });
  }

  ${className.pascalCase}Companion copyWith({''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''Value<${attribute['type']}${attribute['nullable'] == true ? '?' : ''}>? ${attribute['name']},''');
    }

    classCode.writeln('''}) {
    return ${className.pascalCase}Companion(''');

    for (var attribute in json['attributes']) {
      if(attribute['includeForTable'] == false) continue;
      classCode.writeln('''${attribute['name']}: ${attribute['name']} ?? this.${attribute['name']},''');
    }

    classCode.writeln(''');
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};''');

    for (var attribute in json['attributes']) {
      if (attribute['includeForTable'] == false) continue;
      classCode.writeln('''if (${attribute['name']}.present) {
      map['${attribute['name']
          .toString()
          .snakeCase}'] = Variable<${attribute['type']}>(${attribute['name']}.value);
    }''');
    }

    classCode.writeln('''return map;
  }

  @override
  String toString() {
    return (StringBuffer('${className.pascalCase}Companion(')''');

    for (var attribute in json['attributes']) {
      if (attribute['includeForTable'] == false) continue;
      classCode.writeln('''..write('${attribute['name']}: \$${attribute['name']}, ')''');
    }

    classCode.writeln(''' ..write(')'))
        .toString();
  }}''');

    return classCode.toString();
  }

  Future<void> appendToFile(String classCode) async {
    final file = File('data/local_store/sql_store/sql_store.g.dart'); // Specify your file path
    await file.writeAsString(classCode, mode: FileMode.append);
  }

  Future<void> _addImportStatement(String tableName) async {
    final path = p.join(
      'data',
      'local_store',
      'sql_store',
      'sql_store.dart',
    );
    final file = File(path);

    print('Adding import statement to $path');

    if (await file.exists()) {
      var content = await file.readAsString();
      final importStatement = "import 'tables/${tableName.snakeCase}.dart';";
      final tableStatement = '${tableName.pascalCase},';

      if (!content.contains(importStatement)) {
        // Add the import statement after the last import.
        final lastImportEnd = content.lastIndexOf(';') + 1;
        content = '$importStatement\n$content';
      }

      if (!content.contains(tableStatement)) {
        // Add the table to the tables list.
        final tablesListStart = content.indexOf('@DriftDatabase(tables: [') + '@DriftDatabase(tables: ['.length;
        content = '${content.substring(0, tablesListStart)}\n  $tableStatement${content.substring(tablesListStart)}';
      }

      await file.writeAsString(content);
    }
  }
}