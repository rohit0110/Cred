import 'package:cred/constants.dart';
import 'package:cred/pages/base_page/inputs/dob_field.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  bool dobEntered = false;
  int selectedIndex = 0;
  PageController pageController = PageController();
  void _onItemTapped(int index) {
    setState(
      () {
        selectedIndex = index;
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
      },
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(padding),
              color: primaryColor,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (index) {
                  setState(
                    () {
                      selectedIndex = index;
                    },
                  );
                },
                children: [
                  DOBContainer(
                    callback: (value) => setState(() {
                      if (value.length == 10) {
                        dobEntered = true;
                      } else {
                        dobEntered = false;
                      }
                    }),
                  ),
                  DOBContainer(
                    callback: (value) => setState(() {
                      if (value.length == 10) {
                        dobEntered = true;
                      } else {
                        dobEntered = false;
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                  horizontal: padding, vertical: padding * 2),
              color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tempButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tempButton() {
    return Container(
      decoration: BoxDecoration(
        color: (dobEntered) ? Colors.white : Colors.grey,
        border: Border(
          right: BorderSide(
            width: 3,
            color: (dobEntered) ? Colors.grey : Colors.white,
          ),
          bottom: BorderSide(
            width: 3,
            color: (dobEntered)
                ? Colors.grey
                : const Color.fromARGB(255, 42, 40, 40),
          ),
        ),
      ),
      width: 150,
      height: 50,
      child: InkWell(
        onTap: () {
          if (dobEntered) {
            _onItemTapped((selectedIndex + 1) % 2);
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Proceed",
              style: TextStyle(
                color: (dobEntered) ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: (dobEntered) ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
