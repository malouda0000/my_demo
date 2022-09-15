import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/shared/big_button.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    return Container(
      alignment: Alignment.bottomCenter,
      width: Get.width,
      child: Container(
        width: Get.width * .8,
        child: BigggButton(
          theLeadingIcon: Icons.delivery_dining_rounded,
          theButtonTitle: 'order',

          // onTaped: () {},
          onTaped: () {
            // GetSnackBar(
            //   message: ' ont way',
            // );
            cartController.orderMeals();
            // Get.back();
          },
        ),
      ),
    );
  }
}
