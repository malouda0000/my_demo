import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/localization/localization.dart';
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
          theButtonTitle: AppLocal.emptyTheCart.tr,

          // onTaped: () {},
          onTaped: () async {
            Get.defaultDialog(
              title: AppLocal.alert.tr,
              titleStyle: Theme.of(context).textTheme.titleLarge,
              content: Column(
                children: [
                  Icon(
                    Icons.warning_rounded,
                    size: 80,
                    color: Colors.red,
                  ),
                  Text(
                    AppLocal.alertAgrement.tr,
                    style: Theme.of(context).textTheme.bodyLarge,
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
                        AppLocal.remove.tr,
                        style: TextStyle(),
                      ),
                    ),
                    MaterialButton(
                      color: AppColor.kPrimaryColor,
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        AppLocal.keep.tr,
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
