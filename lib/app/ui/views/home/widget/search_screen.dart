import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10.0,
        right: 15.0,
        top: 2.0,
      ),
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(247, 246, 249, 1),
          borderRadius: BorderRadius.circular(16)),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.search),
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 200,
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search product", border: InputBorder.none),
            ),
          ),
          const Spacer(),
          const Icon(Icons.mic),
        ],
      ),
    );
  }
}
