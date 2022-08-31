import 'package:flutter/material.dart';
import 'package:g60_app_flutter_final/app/data/models/floors.dart';


class FloorCardScreen extends StatelessWidget {
  FloorCardScreen(this.floors, this.onTap, {Key? key}) : super(key: key);
  Floors floors;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.0,
      margin: EdgeInsets.only(right: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 250,
                height: 250.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    //color: Colors.grey.shade200,
                    image: DecorationImage(
                      image: AssetImage(floors.thumb_url),
                      //fit: BoxFit.cover
                    )),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    //child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          floors.title,
                          style: const TextStyle(
                              color: Color.fromRGBO(48, 95, 100, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          floors.price,
                          style: const TextStyle(
                              color: Color.fromRGBO(48, 95, 100, 1),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    //)
                  ),
                  Spacer(),
                  Spacer(),
                  const CircleAvatar(
                    backgroundColor: Color.fromRGBO(234, 244, 245, 1),
                    child: Icon(
                      Icons.favorite_outlined,
                      color: Color.fromRGBO(48, 95, 100, 1),
                    ),
                    radius: 20,
                    
                  ),
                  Spacer()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
