import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import '../../../../core/constants/app_color.dart';

class ItemsTitleBuilder extends GetView<HomeScreenControllerImp> {
  final String title;
  final bool isActive;
  final Function()? pressed;
  ItemsTitleBuilder({
    Key? key,
    required this.title,
    required this.pressed,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: pressed,
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 1500,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: isActive
                    ? const TextStyle(
                        color: AppColor.kPrimaryColor,
                        fontWeight: FontWeight.bold
                        // fontSize: 12,
                        )
                    : TextStyle(
                        color: Theme.of(context).textTheme.headline6!.color,
                        // fontSize: 12,
                      ),
              ),
              if (isActive)
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  height: 5,
                  width: 22,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
