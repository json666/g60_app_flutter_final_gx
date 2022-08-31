import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/ui/views/initial/initial_controller.dart';
import 'package:get/get.dart';

class InitialView extends GetView<InitialController> {
  List imageList = [
    'images/b1.png',
    'images/b2.png',
    'images/b3.png',
    'images/b4.png',
    'images/b5.png',
    'images/b6.png',
    'images/b7.png',
  ];
  InitialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 520.0,
                initialPage: 0,
                reverse: false,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
              ),
              items: imageList
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: const EdgeInsets.only(
                          top: 50.0,
                          bottom: 5.0,
                        ),
                        elevation: 6.0,
                        //shadowColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                "Plant a Tree & Save your Life",
                style: TextStyle(
                    color: Color.fromRGBO(48, 95, 100, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              //color: Colors.green,
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "homePage");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(48, 95, 100, 1)),
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Image.network(urlImage, fit: BoxFit.cover),
    );
