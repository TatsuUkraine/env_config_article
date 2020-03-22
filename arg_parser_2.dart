String _generateEnvConfig(ArgResults argResults) {
  final config = Class((c) => c
    ..name = 'EnvConfig'
    ..fields.addAll(
      [
        Field((f) => f
          ..name = 'apiUrl'
          ..type = Reference('String')
          ..assignment = Code('\'${argResults[apiUrl]}\'')
          ..static = true
          ..modifier = FieldModifier.constant,
        ),
      ]
    ));

  final emitter = DartEmitter();

  return DartFormatter().format('${config.accept(emitter)}');
}
