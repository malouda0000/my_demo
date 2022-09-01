import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';

class AddRemoveRow extends StatelessWidget {
  final int itemsCount;
  final void Function() onAdd;
  final void Function() onRemove;
  const AddRemoveRow(
      {Key? key,
      required this.itemsCount,
      required this.onAdd,
      required this.onRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Spacer(),
        InkWell(
          onTap: onAdd,
          child: CirButtonBuilder(
            childWiget: Icon(
              Icons.add_rounded,
            ),
          ),
        ),
        CirButtonBuilder(
          childWiget: Text(
            itemsCount.toString(),
          ),
        ),
        InkWell(
          onTap: onRemove,
          child: CirButtonBuilder(
            childWiget: Icon(
              Icons.remove_rounded,
            ),
          ),
        ),
      ],
    );
  }
}

class CirButtonBuilder extends StatelessWidget {
  final Widget childWiget;
  const CirButtonBuilder({Key? key, required this.childWiget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width * .08,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColor.kPrimaryColor),
      child: childWiget,
    );
  }
}
