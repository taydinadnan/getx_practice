import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Get.snackbar("Hi", "I'm modern snackbar");
          },
        ),
        title: Text("title".trArgs(['John'])),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) => Text('clicks: ${_.count}'),
            ),
            ElevatedButton(
              child: const Text('Next Route'),
              onPressed: () {
                Get.toNamed('/second');
              },
            ),
            ElevatedButton(
              child: const Text('Change locale to English'),
              onPressed: () {
                Get.updateLocale(const Locale('en', 'UK'));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.find<Controller>().increment();
        },
      ),
    );
  }
}
