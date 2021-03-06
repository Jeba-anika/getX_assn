import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_class/route/route.dart';
import 'package:get_storage/get_storage.dart';

import 'first_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      initialRoute: firstScreen,
      getPages: getPages,
    );
  }
}
