import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';

class DeletMealButton extends StatelessWidget {
  const DeletMealButton({
    Key? key,
    required this.shourtCut,
  }) : super(key: key);

  final Map shourtCut;

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        // onPressed: null,
        onPressed: () {
          Get.defaultDialog(
            title: 'sure',
            titleStyle: Theme.of(context).textTheme.headline6,
            content: Column(
              children: [
                Icon(
                  Icons.warning_rounded,
                  size: 80,
                  color: Colors.red,
                ),
                Text(
                  'are you sure you want to remove this meal',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      cartController.deletItem(shourtCut['id']);
                      Get.back();
                    },
                    child: Text(
                      'delet',
                      style: TextStyle(),
                    ),
                  ),
                  MaterialButton(
                    color: AppColor.kPrimaryColor,
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'keep',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        icon: Icon(
          Icons.delete_rounded,
          color: Colors.red,
        ),
      ),
    );
  }
}
