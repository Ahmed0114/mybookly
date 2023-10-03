
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         customappbar(),
        feature_list_view(),
      ],
    );
  }
}
class feature_list_view extends StatelessWidget {
  const feature_list_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child:  custom_list_view_item(),
          );
        },
      ),
    ) ;
  }
}
