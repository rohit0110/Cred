import 'package:flutter/material.dart';


class WelcomeCard3 extends StatelessWidget {
  const WelcomeCard3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 120,
            width: 120,
            child: const Image(image: AssetImage("images/welcome_pic_3.jpg"), fit: BoxFit.cover,)),
            const SizedBox(height: 70,),
            Container(
              margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("say goodbye to", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    Text("late fees", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("never miss a due date with timely", style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Text("payment reminders on WhatsApp", style: TextStyle(color: Colors.grey, fontSize: 15),),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}