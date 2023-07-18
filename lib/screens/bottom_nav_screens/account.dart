import 'package:flutter/material.dart';
import 'package:shopzilla/widgets/acount_list.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        backgroundColor: Color.fromRGBO(9, 106, 46, 50),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage("assets/icons/download (1).jpg"),
              backgroundColor: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height * 0.5,
            // width: MediaQuery.of(context).size.width * 0.2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AccountTile(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
