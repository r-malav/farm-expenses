import 'dart:ui';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:flutter/material.dart';

class mybody extends StatefulWidget {
  @override
  _mybodyState createState() => _mybodyState();
}

class _mybodyState extends State<mybody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .13,
          color: Colors.lightGreen[50],
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '₹ 80,000',
                    style: TextStyle(fontSize: 30, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Total Income',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('₹ 20,000',
                      style: TextStyle(fontSize: 30, color: Colors.red),
                      textAlign: TextAlign.center),
                  Text(
                    'Total Expenses',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Text('Expenses Type',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              width: 80,
            ),
            Text('Amount ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(MdiIcons.swapVertical),
            ),
            IconButton(
              icon: Icon(Icons.picture_as_pdf),
            )
          ],
        ),
        Expanded(
            child: new ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Container(
                      margin: new EdgeInsets.fromLTRB(10, 0, 10, 0),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * .14,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Colors.green,
                              width: 10,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Text(
                                          'Labours',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '20 oct 2021',
                                          style: TextStyle(fontSize: 15),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Total Income',
                                            style: TextStyle(fontSize: 18)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '₹ 40,000',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20),
                                        )
                                      ],
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.more_vert),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ));
                }))
      ],
    ));
  }
}
