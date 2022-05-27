// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localisation/controller.dart';
import 'dict.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => 'title'.tr,
      locale: const Locale('en', 'US'),
      translations: LocaleString(),
      fallbackLocale: const Locale('en', 'US'),
      home: Scaffold(
        appBar: AppBar(title: Builder(builder: (context) => Text('title'.tr))),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetX<MyController>(
              builder: (controller) => Text(
                'counter'.tr + '${controller.count}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.lang('hi', 'IN');
                },
                child: const Text("Hindi")),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.lang('sp', 'SP ');
                },
                child: const Text("Spanish")),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.lang('en', 'US');
                },
                child: const Text("English")),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.incr(),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
