import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:talkbox/app/view/app.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  DeviceOrientation.portraitDown;
  DeviceOrientation.portraitUp;

  runApp(const App());
}
