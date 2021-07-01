import 'dart:ui';

import 'package:estghfar/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  int n = 0;
  @override
  Widget build(BuildContext context) {
    print('n= ${n}');
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img1.jpg',
                  ),
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/img3.png',
                          ),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          onPressed: () =>
                              Provider.of<MyProvider>(context, listen: false)
                                  .retry(),
                          iconSize: MediaQuery.of(context).size.width * 0.15,
                          icon: Icon(
                            Icons.replay,
                            color: Colors.black,
                          ),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          onPressed: () {

                              Provider.of<MyProvider>(context, listen: false)
                                  .count();}
                         , iconSize: MediaQuery.of(context).size.width * 0.15,
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.58,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/img2.png',
            ),
          )),
          child: Center(
            child: Text(
              '${Provider.of<MyProvider>(context, listen: true).counter}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ],
    ));
  }
}
