import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:talkbox/app/view/app.dart';

Future<void> main() async {
  Logger().d('hello');

  WidgetsFlutterBinding.ensureInitialized();
  DeviceOrientation.portraitDown;
  DeviceOrientation.portraitUp;
  Logger().d('hello0000');

  runApp(const App());
}
