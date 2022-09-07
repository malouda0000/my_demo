import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/data/model/local_db.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/EmptyTheCartButton.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/UserCartItemsList.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/cartItem.dart';

MyDb mydb = MyDb();

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CartController cartController = Get.find();
    return GetBuilder<CartController>(
        builder: (cartController) => Scaffold(
              appBar: TheAppBar(),
              bottomNavigationBar: TheBottomNavBar(),
              body: Stack(
                children: [
                  UserCartItemsList(),
                  Positioned(
                    bottom: 15,
                    child: EmptyTheCartButton(),
                  ),
                ],
              ),
            ));
  }
}
