import 'package:flutter/material.dart';

import '../responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileBody, required this.desktopBody}) : super(key: key);

  final Widget mobileBody, desktopBody;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < mobileWidth) {
        return mobileBody;
      } else if(constraints.maxWidth > desktopWidth) {
        return desktopBody;
      } else {
        return const Scaffold(
            backgroundColor: Colors.black,
            body: Center(child: Text("Under-Development", style: TextStyle(fontSize: 25, color: Colors.red,),),));
      }
    });
  }
}
