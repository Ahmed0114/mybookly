
import 'package:flutter/material.dart';
import 'package:my_bookly/core/styles.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';
class home_body extends StatelessWidget {
  const home_body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           customappbar(),
          feature_list_view(),
          SizedBox(
            height: 20,
          ),
          Text('Best Seller',style: styles.midstyle)
        ],
      ),
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
            padding:  EdgeInsets.symmetric(horizontal: 0),
            child:  custom_list_view_item(),
          );
        },
      ),
    ) ;
  }
}
