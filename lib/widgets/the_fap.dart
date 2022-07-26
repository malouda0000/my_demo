import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class TheFap extends StatelessWidget {
  const TheFap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return FloatingActionButton(
        backgroundColor: kPrimaryColor,
        enableFeedback: true,
        // foregroundColor: ksecondaryColor,

        // onPressed: () {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return TheDrawer();
        //       },
        //     ),
        //   );
        // },

// onPressed: (){return Builder(builder: (context) {
//   return  Scaffold.of(  context).openDrawer();
// };)},

        onPressed: () {
          Scaffold.of(context).openDrawer();
        },

        tooltip: 'Increment',
        child: const Icon(Icons.add),
      );
    });
  }
}
