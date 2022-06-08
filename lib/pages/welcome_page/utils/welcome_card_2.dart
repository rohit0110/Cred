import 'package:flutter/material.dart';


class WelcomeCard2 extends StatelessWidget {
  const WelcomeCard2({ Key? key }) : super(key: key);

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
            child: const Image(image: AssetImage("images/welcome_pic_2.jpg"), fit: BoxFit.cover,)),
            const SizedBox(height: 70,),
            Container(
              margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("unlock special offers", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    Text("on tap brands", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("use CRED coins for claiming", style: TextStyle(color: Colors.grey, fontSize: 15),),
                    Text("member only discounts", style: TextStyle(color: Colors.grey, fontSize: 15),),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}