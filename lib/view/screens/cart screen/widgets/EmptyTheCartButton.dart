import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
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
          leadingIconColor: AppColor.kTextColor,
          buttonTitleColor: AppColor.kTextColor,
          // onTaped: () {},
          onTaped: () async {
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
                        cartController.emptyMyCart();
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
        ),
      ),
    );
  }
}
