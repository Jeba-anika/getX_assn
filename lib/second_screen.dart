import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_storage/get_storage.dart';

class SecondScreen extends StatelessWidget {
  final box = GetStorage().read("data");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => print(box)),
      body: Center(
        child: Text("name: ${box["name"]} age: ${box["age"]}"),
      ),
    );
  }
}
