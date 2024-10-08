import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'config/injectable/injectable_dependencies.dart';
import 'modules/root.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  configureDependencies();

  runApp(const Root());
}
