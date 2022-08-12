import 'package:flutter/material.dart';

List<Color> myColors = [
  Colors.amber,
  Colors.yellow,
  Colors.lightBlue,
  Colors.blue,
  Colors.blueGrey,
  Color.fromARGB(255, 255, 0, 0),
  Color.fromARGB(255, 0, 253, 232),
  Colors.brown,
  Colors.teal,
];

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      primary: false,
      shrinkWrap: true,
      itemCount: myColors.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
              child: Container(
                // height: Get.height * .3,
                // width: Get.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: myColors[index],
                ),
              ),
            ),
            // Text(myColors[index].toString().removeAllWhitespace),
          ],
        );
      },
    );

    //     Column(
    //   children: [
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //     Container(
    //       height: Get.height * .3,
    //       width: Get.height * .3,
    //       color: myColors[0],
    //     ),
    //   ],
    // );
  }
}

// Column(
//           children: [
//             Container(
//               height: Get.height * .3,
//               width: Get.height * .3,
//               color: myColors[index],
//             ),
//             Text(myColors[index].toString()),
//           ],
//         );









