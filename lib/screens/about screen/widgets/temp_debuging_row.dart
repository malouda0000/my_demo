import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';

class TempDebugingRow extends StatelessWidget {
  const TempDebugingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                color: kPrimaryColor,
                onPressed: () {
                  Get.offAllNamed(
                    '/SinInScreen',
                  );
                  print('the new button tabded sucssfully');
                },
                child: Text(
                  'debug SingIn Screen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                color: kPrimaryColor,
                onPressed: () {
                  Get.offAllNamed(
                    '/InroSliderScreen',
                  );
                  print('the new button tabded sucssfully');
                },
                child: Text(
                  'debug the Slider Screen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                color: kPrimaryColor,
                onPressed: () {
                  Get.toNamed(
                    '/splashScreen',
                  );
                },
                child: Text(
                  'debug the splashScreen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
