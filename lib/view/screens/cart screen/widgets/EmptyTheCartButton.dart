import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/shared/big_button.dart';

class EmptyTheCartButton extends StatelessWidget {
  final CartController cartController = Get.find();
  EmptyTheCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: Get.width,
      child: Container(
        alignment: Alignment.center,
        width: Get.width * .8,
        child: BigggButton(
          theLeadingIcon: Icons.delete_rounded,
          theButtonTitle: 'Empty the cart',
          // onTaped: () {},
          onTaped: () async {
            await cartController.emptyMyCart();
            // if(cartController.emptyMyCart()){

            // }
          },
          leadingIconColor: Colors.red,
          buttonTitleColor: Colors.red,
        ),
      ),
    );
  }
}
