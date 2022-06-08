import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class DobBottomPart extends StatefulWidget {
  const DobBottomPart(
      {Key? key, required this.dobEntered, required this.callback})
      : super(key: key);
  final bool dobEntered;
  final StringCallback callback;

  @override
  State<DobBottomPart> createState() => _DobBottomPartState();
}

class _DobBottomPartState extends State<DobBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        activityButton(),
      ],
    );
  }

  Widget activityButton() {
    return Container(
      decoration: BoxDecoration(
        color: (widget.dobEntered) ? Colors.white : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (widget.dobEntered) ? Colors.grey : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (widget.dobEntered)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          if (widget.dobEntered) {
            setState(() {
              widget.callback("Next");
            });
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Proceed",
              style: TextStyle(
                color: (widget.dobEntered) ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (widget.dobEntered) ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
