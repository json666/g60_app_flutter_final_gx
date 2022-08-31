import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/home_controller.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/widget/header_screen.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/widget/home_screen_category.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/widget/item_screen.dart';
import 'package:g60_app_flutter_final/app/ui/views/home/widget/search_screen.dart';
import 'package:g60_app_flutter_final/model/Floors.dart';


import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 244, 245, 1),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(234, 244, 245, 1),
          toolbarHeight: 80.0,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset("images/arturo.jpg",
                    width: 50, height: 50, fit: BoxFit.cover),
                //width:20,
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Text(
                        "Home",
                        style: TextStyle(color: Color.fromRGBO(48, 95, 100, 1)),
                      ),
                    ],
                  )),
              Container(
                  width: 50.0,
                  height: 50.0,
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    //border: Border.all(color: AppColors.kSubLetter),
                    color: Color.fromRGBO(48, 95, 100, 1),
                  ),
                  child: const Icon(Icons.notifications_active_outlined)),
            ],
          ),
        ),
        body: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:15),
            child: Column(
              children: [
                HeaderScreen(),
                SearchScreen(),
                SizedBox(height: 5,),
                HomeScreenCategory(),
                SizedBox(height: 1,),
                ItemScreem(controller.loadPlantTree())
              ],
            ),
          ),
        ),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.white),
            ),
            child: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 300),
              color: Colors.white,
              buttonBackgroundColor: Color.fromRGBO(48, 95, 100, 1),
              index: index,
              items: const [
                Icon(
                  Icons.home,
                  color: Color.fromRGBO(193, 207, 209, 1),
                ),
                Icon(
                  Icons.heart_broken,
                  color: Color.fromRGBO(193, 207, 209, 1),
                ),
                Icon(
                  Icons.center_focus_strong,
                  color: Color.fromRGBO(193, 207, 209, 1),
                ),
                Icon(
                  Icons.cases_outlined,
                  color: Color.fromRGBO(193, 207, 209, 1),
                ),
                Icon(
                  Icons.settings,
                  color: Color.fromRGBO(193, 207, 209, 1),
                )
              ],
            )));
  }
}
