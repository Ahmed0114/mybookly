
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils.dart';

class custom_list_view_item extends StatelessWidget {
  const custom_list_view_item({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
            height: MediaQuery.of(context).size.height*2.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.item)),
            )
        ),
      ),
    );
  }
}
