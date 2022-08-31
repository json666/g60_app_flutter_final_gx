import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 15.0,
        top: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Find Best Plantas",
            style: TextStyle(
              color: Color.fromRGBO(48, 95, 100, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "For You!",
            style: TextStyle(
              color: Color.fromRGBO(48, 95, 100, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
