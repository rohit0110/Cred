import '../../../../utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SurnameBottomPart extends StatefulWidget {
  const SurnameBottomPart(
      {Key? key, required this.lastNameEntered, required this.callback})
      : super(key: key);
  final bool lastNameEntered;
  final StringCallback callback;

  @override
  State<SurnameBottomPart> createState() => _SurnameBottomPartState();
}

class _SurnameBottomPartState extends State<SurnameBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          activityButton(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "by clicking on continue, you are indicating that you",
                style: subheadingStyle,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: "have read and agree to our ",
                        style: subheadingStyle),
                    TextSpan(
                      text: "terms of use ",
                      recognizer: TapGestureRecognizer()..onTap = (() {}),
                      style: const TextStyle(
                        color: headingColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: headingColor,
                      ),
                    ),
                    const TextSpan(text: "& ", style: subheadingStyle),
                    TextSpan(
                      text: "privacy ",
                      recognizer: TapGestureRecognizer()..onTap = (() {}),
                      style: const TextStyle(
                        color: headingColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationColor: headingColor,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "policy.",
                  recognizer: TapGestureRecognizer()..onTap = (() {}),
                  style: const TextStyle(
                    color: headingColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationColor: headingColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget activityButton() {
    return Container(
      decoration: BoxDecoration(
        color: (widget.lastNameEntered) ? Colors.white : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (widget.lastNameEntered) ? Colors.grey : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (widget.lastNameEntered)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          if (widget.lastNameEntered) {
            setState(() {
              widget.callback("1");
            });
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Continue",
              style: TextStyle(
                color: (widget.lastNameEntered) ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (widget.lastNameEntered) ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
