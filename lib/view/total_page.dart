import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cart_controller.dart';

class TotalPage extends StatefulWidget {
  const TotalPage({Key? key}) : super(key: key);

  @override
  State<TotalPage> createState() => _TotalPageState();
}

class _TotalPageState extends State<TotalPage> {
  final Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: const Text("Total Items")),
          const SizedBox(
            height: 10,
          ),
          Obx(() => Text("${c.sum.toString()}")),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("go back")),
          )
        ],
      ),
    );
  }
}
