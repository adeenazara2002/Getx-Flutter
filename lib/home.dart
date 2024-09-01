import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:newproject/homeController.dart';

class Home extends StatelessWidget {
  Home({super.key});

  Homecontroller homeControl = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<Homecontroller>(builder: (context){
        return Center(
          child: Text(
            "${homeControl.countVal}",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        );
      }
      ,),
      floatingActionButton: FloatingActionButton(onPressed: (){
        homeControl.increment();
      },
      child: Text('+'),
      ),
    );
  }
}