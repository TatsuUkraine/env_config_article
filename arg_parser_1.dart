final parser = new ArgParser()
  ..addOption(
    'apiUrl',
    abbr: 'u',
    defaultsTo: 'http://development.example.com'
  );
    
final ArgResults argResults = parser.parse(arguments);
