import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';

class TheThemeColorSelector extends StatelessWidget {
  const TheThemeColorSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            print('tapded succsefully');
          },
          child: const CircleAvatar(
            backgroundColor: Colors.yellow,
          ),
        ),
        emptySpace,
        const Text(
          "yellow",
        ),
      ],
    );
  }
}
