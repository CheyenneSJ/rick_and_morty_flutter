import 'package:flutter/material.dart';

import 'app/app.dart';

void main() async {
  await AppEnv.i.load(env: '.env');
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  runApp(const RickAndMortyApp());
}
