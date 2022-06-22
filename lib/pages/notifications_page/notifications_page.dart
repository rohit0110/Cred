import 'package:cred/pages/notifications_page/widgets/header.dart';
import 'package:cred/pages/notifications_page/widgets/notification_card.dart';
import 'package:cred/utils/constants.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: secondaryColor,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const Header(),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                      return const NotificationCard(
                        text:
                            "your electricity bill is generated. tap to clear it instantly and get assured rewards.",
                        timeAgo: "3d ago",
                        buttonText: "Pay Now",
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
