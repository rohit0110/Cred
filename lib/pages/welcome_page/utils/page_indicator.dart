import 'package:flutter/material.dart';


class PageIndicator extends StatefulWidget {
  final index;
  const PageIndicator({ Key? key, this.index }) : super(key: key);

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 8,
      width: 74,
      child: Row(
        children: [
          widget.index == 0 ? _selectedWid(): _unselectedWid(),
          const SizedBox(width: 5,),
          widget.index == 1 ? _selectedWid(): _unselectedWid(),
          const SizedBox(width: 5,),
          widget.index == 2 ? _selectedWid(): _unselectedWid(),
        ],
      ),
    );
  }

  Widget _selectedWid() {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 1),
      ),
    );
  }

  Widget _unselectedWid() {
    return Container(
      height: 5,
      width: 5,
      decoration: const BoxDecoration(
      color: Colors.grey,
      ),
    );
  }

}