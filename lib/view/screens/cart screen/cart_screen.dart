import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/model/models/local_db.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/UserCartItemsList.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/order_Button.dart';

MyDb mydb = MyDb();
CartController cartController = Get.put(CartController());

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CartController cartController = Get.find();
    return cartController.doesUserCartEmpty() == false
        ? Stack(
            children: [
              GetBuilder<CartController>(
                builder: (cartController) => UserCartItemsList(),
              ),
              Positioned(
                bottom: 15,
                child: OrderButton(),
              ),
            ],
          )
        : CustomSplashScreen(
            progress: false,
            haveDiscription: true,
            discription: 'no items in the Cart');
  }
}
