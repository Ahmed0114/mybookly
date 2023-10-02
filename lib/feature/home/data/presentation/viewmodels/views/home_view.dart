import 'package:flutter/material.dart';

import 'widgets/home_body.dart';

class home_view extends StatelessWidget {

  const home_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: home_body(),
    );
  }
}
