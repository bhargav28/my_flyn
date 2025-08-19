import 'package:flutter/material.dart';

import 'app.dart';
import 'get_it_configuration/get_it_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp(const App());
}
