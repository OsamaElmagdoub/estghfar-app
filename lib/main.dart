import 'package:estghfar/home.dart';
import 'package:estghfar/main.dart';
import 'package:estghfar/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
main(){

  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
create: (context)=>MyProvider(),

        child: Home(),),

    );
  }
}
