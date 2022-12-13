import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:talkbox/app/shared/colors.dart';
import 'package:talkbox/core/navigators/navigators.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
      ),
      builder: DevicePreview.appBuilder,
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.home,
    );
  }
}
