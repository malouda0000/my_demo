import 'package:flutter/material.dart';

class CircularDiscriptionImage extends StatelessWidget {
  final String assetImageName;
  const CircularDiscriptionImage({
    Key? key,
    required this.assetImageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(
        assetImageName,
      ),
    );
  }
}
