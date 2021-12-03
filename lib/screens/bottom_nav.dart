import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var CupertinoIcons;
    return Container(
      child: BottomNavigationBar(
        // backgroundColor: Colors.transparent,
        // showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,

        items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            title: Text(""),
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.chat,
              color: Colors.black,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
