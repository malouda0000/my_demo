import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kGrayColor,
      ),
      width: size.width,
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'search',
          prefixIcon: Icon(
            Icons.search_outlined,
            color: kTextBlacColor,
          ),
        ),
      ),
    );
  }
}
