
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils.dart';

class customappbar extends StatelessWidget {
  const customappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded,size: 45,))
        ],
      ),
    );
  }
}
