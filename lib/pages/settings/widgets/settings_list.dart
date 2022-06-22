import 'package:cred/pages/settings/widgets/setting_card.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        SettingCard(
          heading: "transaction history",
          subheading: "Find all your projects here",
        ),
        SettingCard(
          heading: "manage CRED protect",
          subheading: "linked email id's and whatsapp",
        ),
        SettingCard(
          heading: "manage account",
          subheading: "login details and communication preferences",
        ),
        SettingCard(
          heading: "payment settings",
          subheading: "manage your payment methods",
        ),
        SettingCard(
          heading: "manage addresses",
          subheading: "all your addresses are here",
        ),
        SettingCard(
          heading: "support",
          subheading: "",
        ),
        SettingCard(
          heading: "about",
          subheading: "",
        ),
      ],
    );
  }
}
