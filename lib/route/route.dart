import 'package:get/get.dart';
import 'package:get_class/first_screen.dart';
import 'package:get_class/second_screen.dart';

const String firstScreen = "/first-screen";
const String secondScreen = "/second-screen";

//control our page route flow

List<GetPage> getPages = [
  GetPage(
      name: firstScreen,
      page: () => HomeScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: secondScreen,
      page: () => SecondScreen(),
      transition: Transition.leftToRight),
];
