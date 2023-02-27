import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shoping_cart/controller/cart_controller.dart';
import 'package:getx_shoping_cart/view/total_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GetX shopping cart",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    "Books",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                        onPressed: () => c.increment(),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() => Text(
                        "${c.books.toString()}",
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                        onPressed: () => c.decrement(),
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Pens",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                        onPressed: () => c.incrementPens(),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Obx(() => Text(
                        "${c.pens.toString()}",
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                        onPressed: () => c.decrementPens(),
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 45.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(TotalPage());
                      },
                      child: const Text(
                        "Total",
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
