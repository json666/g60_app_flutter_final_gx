import 'package:flutter/material.dart';

class HomeScreenCategory extends StatelessWidget {
  const HomeScreenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //child: Row(
        children: [
          categoryButton("Popular"),
          categoryButton("Outdoor"),
          categoryButton("Indoor"),
          categoryButton("Floors")
        ],
        //),
      ),
    );
  }
}

Widget categoryButton(String? text) {
  return Container(
    margin: const EdgeInsets.all(25.0),
    padding: EdgeInsets.all(5.0),
    height: 120.0,
    width: 120.0,
    decoration: BoxDecoration(
        //color: const Color.fromRGBO(234, 244, 245, 1),
        color: Color.fromRGBO(48 , 95, 100, 1),
        //border: Border.all(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(10)),
    child: InkWell(
      onTap: () {
        print("Hello");
      },

      //highlightColor: Colors.green.withOpacity(0.9),
      splashColor: Colors.green.withOpacity(0.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("$text",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
              )),
        ],
      ),
    ),
    //),
  );
}
