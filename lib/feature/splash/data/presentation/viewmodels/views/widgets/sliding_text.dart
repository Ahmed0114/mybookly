
import 'package:flutter/widgets.dart';

class silderingtext extends StatelessWidget {
  const silderingtext({
    Key? key,
    required this.a,
  }) : super(key: key);

  final Animation<Offset> a;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: a,
        builder: (context,widget) {
          return SlideTransition(
            position: a,
            child: Text('read free books', textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
          );
        }
    );
  }
}
