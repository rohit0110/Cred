import 'package:cred/pages/profile_page/widgets/header.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: secondaryColor,
          padding: const EdgeInsets.all(padding),
          child: Column(
            children: const [
              Header(),
            ],
          ),
        ),
      ),
    );
  }
}
