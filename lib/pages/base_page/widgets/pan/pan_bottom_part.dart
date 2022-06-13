import '../../../../utils/constants.dart';
import 'package:flutter/material.dart';

class PanBottomPart extends StatefulWidget {
  const PanBottomPart(
      {Key? key, required this.panEntered, required this.callback})
      : super(key: key);
  final bool panEntered;
  final StringCallback callback;

  @override
  State<PanBottomPart> createState() => _PanBottomPartState();
}

class _PanBottomPartState extends State<PanBottomPart> {
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
        color: (widget.panEntered) ? Colors.white : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (widget.panEntered) ? Colors.grey : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (widget.panEntered)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          if (widget.panEntered) {
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
                color: (widget.panEntered) ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (widget.panEntered) ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
