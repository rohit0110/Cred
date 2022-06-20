import 'package:cred/pages/profile_page/widgets/bottom_card.dart';
import 'package:cred/pages/profile_page/widgets/cred_collectibles.dart';
import 'package:cred/pages/profile_page/widgets/header.dart';
import 'package:cred/pages/profile_page/widgets/profile_picture.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            color: secondaryColor,
            child: Column(
              children: const [
                Header(),
                SizedBox(
                  height: padding * 2,
                ),
                ProfilePicture(),
                SizedBox(
                  height: padding,
                ),
                Text(
                  "Aryan Agarwal",
                  style: headingStyle,
                ),
                SizedBox(
                  height: padding / 2,
                ),
                Text(
                  "+91 1234567890",
                  style: subheadingStyle,
                ),
                SizedBox(
                  height: padding,
                ),
                CredCollectibles(),
                SizedBox(
                  height: padding * 2,
                ),
                BottomCard(
                  heading: "your experian credit score is 808",
                  subheading:
                      "refresh your credit report to get insights and track your credit standing",
                  clickableText: "View Details",
                  assetPath: "",
                ),
                BottomCard(
                  heading: "refer & earn upto ₹1000",
                  subheading: "earn cashback for bringing your friends to Cred",
                  clickableText: "Win Now",
                  assetPath: "",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
