import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_class/model/data.dart';
import 'package:get_class/second_screen.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => Get.to(SecondScreen())),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextButton(
                onPressed: () => Get.to(SecondScreen()),
                child: Text("Go to second page")),
            TextButton(
                onPressed: () {
                  Get.snackbar("title", "message");
                },
                child: Text("Click to show")),
            TextButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: Text("Dialoge")),
            TextField(
              controller: _nameController,
            ),
            TextField(
              controller: _ageController,
            ),
            ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  final age = _ageController.text;
                  final box = GetStorage();
                  box.write("data", MyData(name: name, age: age));
                  print("added");
                },
                child: Text("Add")),
            ElevatedButton(
              onPressed: () => _counter + 1,
              child: Obx(() => Text(_counter.string)),
            )
          ]),
        ),
      ),
    );
  }
}
