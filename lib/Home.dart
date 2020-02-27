import 'dart:html';

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(context),
      body: Builder(
        builder: (context)=>Stack(
          children: <Widget>[
            PageIndicatorContainer(
              length: Page.all().length,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height*0.1),
                indicatorSpace: Dimen,
                indicatorColor: NgCol,
            )
          ],
        ),
        ),
    )
  }
Widget _drawer(BuildContext){
  if(!isLarge(context))
  return Drawer(
    child: MenuSmall(),
  );
  else
  return null;
}
}