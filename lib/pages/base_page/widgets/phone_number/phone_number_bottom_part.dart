import '../../../../utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PhoneNumberBottomPart extends StatefulWidget {
  const PhoneNumberBottomPart(
      {Key? key, required this.phoneNumberEntered, required this.callback})
      : super(key: key);
  final bool phoneNumberEntered;
  final StringCallback callback;

  @override
  State<PhoneNumberBottomPart> createState() => _PhoneNumberBottomPartState();
}

class _PhoneNumberBottomPartState extends State<PhoneNumberBottomPart> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
              fillColor: MaterialStateProperty.all(Colors.white),
              checkColor: Colors.black,
              side: const BorderSide(color: Colors.white),
              splashRadius: 0,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "you agree to allow cred to check your credit information",
            style: subheadingStyle,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: "with ", style: subheadingStyle),
                TextSpan(
                  text: "RBI approved credit bureaus",
                  recognizer: TapGestureRecognizer()..onTap = (() {}),
                  style: const TextStyle(
                    color: headingColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: headingColor,
                  ),
                ),
                const TextSpan(text: ".", style: subheadingStyle),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "we need to check if you are a credit card holder and are",
            style: subheadingStyle,
          ),
          const Text(
            "above our accepted credit score threshold.it will not impact your credit score.",
            style: subheadingStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          activityButton(),
        ],
      ),
    );
  }

  Widget activityButton() {
    return Container(
      decoration: BoxDecoration(
        color: (widget.phoneNumberEntered && isChecked)
            ? Colors.white
            : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (widget.phoneNumberEntered && isChecked)
                ? Colors.grey
                : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (widget.phoneNumberEntered && isChecked)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          if (widget.phoneNumberEntered && isChecked) {
            setState(() {
              widget.callback("1");
            });
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Temp",
              style: TextStyle(
                color: (widget.phoneNumberEntered && isChecked)
                    ? Colors.black
                    : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (widget.phoneNumberEntered && isChecked)
                  ? Colors.black
                  : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
