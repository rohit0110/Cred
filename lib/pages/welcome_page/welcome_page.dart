import '../common_components/outer_button.dart';
import '././utils/page_indicator.dart';
import '././utils/welcome_card.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  PageController pagecontroller = PageController(initialPage: 0);
  int pagenum = 0;

  List<String> cardDetails1 = ["pay bills", "get rewarded", "earn assured cashbacks and rewards every time you pay a credit card bill", "images/welcome_pic_1.jpg"];
  List<String> cardDetails2 = ["unlock special offers", "on tap brands", "use CRED coins for claiming member only discounts", "images/welcome_pic_2.jpg"];
  List<String> cardDetails3 = ["say goodbye to", "late fees", "never miss a due date with timely payment reminders on WhatsApp", "images/welcome_pic_3.jpg"];

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
                children: [
                  WelcomeCard(cardDetails: cardDetails1),
                  WelcomeCard(cardDetails: cardDetails2),
                  WelcomeCard(cardDetails: cardDetails3),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            PageIndicator(controller: pagecontroller),
            const SizedBox(height: 35,),
            const OuterButton(disabled: false),
          ],
        ),
      )
    );
  }
}