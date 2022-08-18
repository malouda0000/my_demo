import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeatialsImage extends StatelessWidget {
  final String imageSrc;
  const DeatialsImage({Key? key, required this.imageSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: Get.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
      imageSrc,
    );
  }
}
