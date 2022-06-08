import '../../../utils/constants.dart';
import 'package:flutter/material.dart';

typedef StringCallback = void Function(String val);

class DOBContainer extends StatefulWidget {
  const DOBContainer({Key? key, required this.callback}) : super(key: key);
  final StringCallback callback;
  @override
  State<DOBContainer> createState() => _DOBContainerState();
}

class _DOBContainerState extends State<DOBContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "give us your DOB",
            style: headingStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "additional information helps us fetch",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "accurate credit reports",
            style: subheadingStyle,
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              // if (value.length == 10) {
              //   setState(
              //     () {
              //       dobEntered = true;
              //       widget.callback(value);
              //     },
              //   );
              // } else {
              //   setState(
              //     () {
              //       dobEntered = false;
              //     },
              //   );
              // }
              setState(() {
                widget.callback(value);
              });
            },
            maxLength: 10,
            cursorHeight: 30,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              counterText: "",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "dd/mm/yyyy",
              hintStyle: TextStyle(
                color: inputColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            keyboardType: TextInputType.datetime,
          ),
        ],
      ),
    );
  }
}
