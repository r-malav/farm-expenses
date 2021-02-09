import 'package:flutter/material.dart';

import 'body/mybody.dart';

class myhome extends StatefulWidget {
  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.green,
          title: Text('Farm Expenses'),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
            )
          ],
        ),
body:mybody(),
        floatingActionButton: Container(
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              // elevation: 5.0,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: Colors.green,
            shape: CircularNotchedRectangle(),
            child: Container(
              height: MediaQuery.of(context).size.height * .095,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(

                    padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  IconButton(

                    padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.receipt),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                        print("${currentIndex}");
                      });
                    },
                  ),
                  IconButton(

                    padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.car_repair),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                        print("${currentIndex}");
                      });
                    },
                  ),
                  IconButton(
                    padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.more_vert),
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        currentIndex = 3;
                        print("${currentIndex}");
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
