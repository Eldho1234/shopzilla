import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  List<IconData> tileicons = [
    Icons.account_circle,
    Icons.history_outlined,
    Icons.question_mark_rounded,
    Icons.settings,
    Icons.logout_rounded,
  ];
  List tiletitles = [
    "Account Details",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Log Out"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tileicons.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.080,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 230, 223, 223)),
          child: Center(
            child: ListTile(
              leading: Icon(tileicons[index]),
              title: Text(tiletitles[index]),
            ),
          ),
        ),
      ),
    );
  }
}
