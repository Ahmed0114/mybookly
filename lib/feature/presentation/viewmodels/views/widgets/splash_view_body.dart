import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils.dart';

class splash_view_body extends StatefulWidget {
  const splash_view_body({Key? key}) : super(key: key);

  @override
  State<splash_view_body> createState() => _splash_view_bodyState();
}

class _splash_view_bodyState extends State<splash_view_body>with SingleTickerProviderStateMixin {
  late AnimationController aC;
  late Animation<Offset> a;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    aC = AnimationController(vsync: this, duration: Duration(seconds: 1));
    a = Tween<Offset>(begin: (Offset(0, 10)), end: Offset.zero).animate(
        aC);
    aC.forward();
    a.addListener(() {
      setState(() {

      });
    })
    ;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    aC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          SizedBox(
            height: 6,
          ),
          SlideTransition(
            position: a,
            child: Text('read free books', textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
          )
        ]);
  }


}

