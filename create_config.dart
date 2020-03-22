void _createEnvFile(String classDefinition) async {
  File quotesFile = new File('lib/config/env_config.dart');

  try {
    await quotesFile.writeAsString(classDefinition, mode: FileMode.write);
    print('Data written.');
  } catch (e) {
    print('Oops!');
  }
}
