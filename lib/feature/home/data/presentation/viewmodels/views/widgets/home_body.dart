
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         customappbar()
      ],
    );

  }
}

