import 'package:flutter/material.dart';
import 'package:my_bookly/feature/presentation/viewmodels/views/widgets/splash_view_body.dart';

class splash_view extends StatelessWidget {

  const splash_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash_view_body(),
    );
  }
}
