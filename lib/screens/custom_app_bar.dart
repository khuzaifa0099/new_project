import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 200,
              width: 200,
              child: Image.asset("images/teleram.png")),
          Icon(
            Icons.menu,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
