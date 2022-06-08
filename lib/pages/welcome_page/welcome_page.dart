import 'package:cred/pages/common_components/outer_button.dart';
import 'package:cred/pages/welcome_page/utils/page_indicator.dart';
import 'package:cred/pages/welcome_page/utils/welcome_card_1.dart';
import 'package:cred/pages/welcome_page/utils/welcome_card_2.dart';
import 'package:cred/pages/welcome_page/utils/welcome_card_3.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  PageController pagecontroller = PageController(initialPage: 0);
  int pagenum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 33, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 330,
              child: PageView(
                controller: pagecontroller,
                onPageChanged: (index){
                  setState(() {
                    pagenum = index;
                  });
                },
                children: const [
                  WelcomeCard1(),
                  WelcomeCard2(),
                  WelcomeCard3(),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            PageIndicator(index: pagenum,),
            const SizedBox(height: 35,),
            const OuterButton(disabled: false),
          ],
        ),
      )
    );
  }
}