

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:sorting/controller/sortcontroller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var numbController = Get.put(SortController());  

  TextEditingController box1cntroller = TextEditingController();
  TextEditingController box2cntroller = TextEditingController();
  TextEditingController box3cntroller = TextEditingController();
  TextEditingController box4cntroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: box1cntroller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: box2cntroller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: box3cntroller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: box4cntroller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                     numbController.numSorted(
                          box1cntroller.text,
                          box2cntroller.text,
                          box3cntroller.text,
                          box4cntroller.text);
                },
                 
                child: const Text("Sort")),
            const SizedBox(
              height: 10,
            ),
              TextFormField(

                keyboardType: TextInputType.none,
                controller: numbController.sortcntroller,
                decoration: const InputDecoration(
                    constraints: BoxConstraints(maxWidth: 500),
                    border: OutlineInputBorder()),
              ),
          ],
        ),
      ),
    );
  }

}