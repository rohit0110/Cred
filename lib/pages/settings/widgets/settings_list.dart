import 'package:cred/pages/settings/widgets/setting_card.dart';
import 'package:cred/pages/transaction_history_page/transaction_history_page.dart';
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
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "manage CRED protect",
          subheading: "linked email id's and whatsapp",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "manage account",
          subheading: "login details and communication preferences",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "payment settings",
          subheading: "manage your payment methods",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "manage addresses",
          subheading: "all your addresses are here",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "support",
          subheading: "",
          gotoPage: TransactionHisotryPage(),
        ),
        SettingCard(
          heading: "about",
          subheading: "",
          gotoPage: TransactionHisotryPage(),
        ),
      ],
    );
  }
}
