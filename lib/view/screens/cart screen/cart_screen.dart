import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/data/model/local_db.dart';
import 'package:my_demo/view/widgets/cart/cartItem.dart';

MyDb mydb = MyDb();

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    // CartController cartController = Get.find();
    return GetBuilder<CartController>(
        builder: (cartController) => Scaffold(
              appBar: TheAppBar(),
              bottomNavigationBar: TheBottomNavBar(),
              body: Container(
                width: Get.width,
                child: ListView(
                  children: [
                    FutureBuilder(
                      future: cartController.readData(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Map>> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, i) {
                              Map<dynamic, dynamic> shourtCut =
                                  snapshot.data![i];

                              return CartItem(shourtCut: shourtCut);
                            },
                          );
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ));
  }
}
