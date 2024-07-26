import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller_x.dart';

class Third extends GetView<ControllerX> {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.incrementList();
      }),
      appBar: AppBar(
        title: Text("Third ${Get.arguments}"),
      ),
      body: Center(
        child: Obx(() => ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (context, index) {
                return Text("${controller.list[index]}");
              },
            )),
      ),
    );
  }
}
