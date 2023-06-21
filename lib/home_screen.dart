import 'dart:math';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  TextEditingController box1cntroller = TextEditingController();
  TextEditingController box2cntroller = TextEditingController();
  TextEditingController box3cntroller = TextEditingController();
  TextEditingController box4cntroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextFormField(
                controller: box1cntroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
                TextFormField(
                  controller: box2cntroller ,
                decoration: const InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),  TextFormField(
                controller: box3cntroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),  TextFormField(
                controller: box4cntroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: () {
            onSort(box1cntroller.text, box2cntroller.text, box3cntroller.text, box4cntroller.text);
          }, child: const Text("Sort"))
        ],
      ),
    );
  }

  onSort(
    num1,num2,num3,num4
    
  ){
    var list = [num1,num2,num3,num4];
    int i;
  for(i=list[0];i<list[1];i++){

  }

  }
}