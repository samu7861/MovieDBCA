import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable_dependencies.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: true, // default
  initializerName: 'init', // default
  preferRelativeImports: true, // default
)
void configureDependencies() => getIt.init();
