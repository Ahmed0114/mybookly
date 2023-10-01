import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils.dart';

class splash_view_body extends StatelessWidget {
  const splash_view_body({Key? key}) : super(key: key);

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

        Text('read free books',textAlign: TextAlign.center,),

      ],
    );
  }
}
