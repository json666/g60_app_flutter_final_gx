import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/ui/views/detail/detail_controller.dart';
import 'package:g60_app_flutter_final/model/Floors.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class DetailView extends GetView<DetailController> {
  
  //const DetailView({Key? key}) : super(key: key);
  //DetailView(this.floors, {Key? key}) : super(key: key);
  DetailView({Key? key}) : super(key: key);
  
  //Floors floors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(234, 244, 245, 1),
        //toolbarHeight: 50.0,
        iconTheme: IconThemeData(color: Color.fromRGBO(48, 95, 100, 1)),
        title: Text(
          "",//floors.title,
          style: TextStyle(color: Color.fromRGBO(48, 95, 100, 1)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 45.0,
          right: 25.0,
          top: 0.0,
        ),
        //padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 280,
                height: 340.0,
                decoration: BoxDecoration(
                  //color: Color.fromRGBO(234, 244, 245, 1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(image: AssetImage("floors.thumb_url")),
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                        "",//                    floors.title,
                    style: const TextStyle(
                        color: Color.fromRGBO(48, 95, 100, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  const CircleAvatar(
                    backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Color.fromRGBO(48, 95, 100, 1),
                    ),
                    radius: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 7.0,
            ),
            ReadMoreText(
              "",//floors.description,
              style: TextStyle(
                  color: Color.fromRGBO(166, 176, 177, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              trimLines: 3,
              colorClickableText: Color.fromRGBO(48, 95, 100, 1),
              trimMode: TrimMode.Length,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                      child: Icon(
                        Icons.local_florist_outlined,
                        color: Color.fromRGBO(48, 95, 100, 1),
                      ),
                      radius: 25,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                          color: Color.fromRGBO(125, 155, 158, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Small",
                      style: TextStyle(
                          color: Color.fromRGBO(48, 95, 100, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                )),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                        child: Icon(
                          Icons.water_drop,
                          color: Color.fromRGBO(48, 95, 100, 1),
                        ),
                        radius: 25,
                      ),
                      Text(
                        "Water",
                        style: TextStyle(
                            color: Color.fromRGBO(125, 155, 158, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 in 3 days",
                        style: TextStyle(
                            color: Color.fromRGBO(48, 95, 100, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Color.fromRGBO(48, 95, 100, 1),
                        ),
                        radius: 25,
                      ),
                      Text(
                        "Light",
                        style: TextStyle(
                            color: Color.fromRGBO(125, 155, 158, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Diffuse",
                        style: TextStyle(
                            color: Color.fromRGBO(48, 95, 100, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    const CircleAvatar(
                      backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                      child: Icon(
                        Icons.water_drop_outlined,
                        color: Color.fromRGBO(48, 95, 100, 1),
                      ),
                      radius: 25,
                    ),
                    Text(
                      "Humidity",
                      style: TextStyle(
                          color: Color.fromRGBO(125, 155, 158, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "75%",
                      style: TextStyle(
                          color: Color.fromRGBO(48, 95, 100, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                )),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
                child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Ink(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(48, 95, 100, 1)),
                    child: Text(
                      "\$45",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Ink(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(48, 95, 100, 1)),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
