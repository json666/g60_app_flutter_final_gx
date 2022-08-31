import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/data/models/floors.dart';
import 'package:g60_app_flutter_final/app/ui/views/detail/detail_view.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/home_controller.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/widget/floor_card_screen.dart';

import 'package:get/get.dart';



class ItemScreem extends GetView<HomeController> {
  List<Floors> typesFloors;
  ItemScreem(this.typesFloors, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: 320,
        //width: 350,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.loadPlantTree().length,
          itemBuilder: (context, index) =>
            FloorCardScreen(typesFloors[index], () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailView()));
          }),
        ));
        
  }
}
