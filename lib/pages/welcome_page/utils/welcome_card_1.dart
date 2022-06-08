import 'package:flutter/material.dart';


class WelcomeCard1 extends StatelessWidget {
  const WelcomeCard1({ Key? key }) : super(key: key);

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
            child: const Image(image: AssetImage("images/welcome_pic_1.jpg"), fit: BoxFit.cover,)),
            const SizedBox(height: 70,),
            Container(
              margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("pay bills", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    Text("get rewarded", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("earn assured cashbacks and", style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Text("rewards every time you pay a credit", style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Text("card bill", style: TextStyle(color: Colors.grey, fontSize: 15),)
                  ],
                ),
              ),
        ],
      ),
    );
  }
}