import 'package:flutter/material.dart';
import 'package:cred/utils/constants.dart';

//Temporary Header, will need more variables to fit other conditions
class CommonHeader extends StatelessWidget {
  const CommonHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.keyboard_backspace_sharp,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}
