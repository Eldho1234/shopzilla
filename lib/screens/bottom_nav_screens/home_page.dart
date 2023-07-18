import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        backgroundColor: Color.fromRGBO(9, 106, 46, 50),
        title: Image.asset(
          "assets/icons/shopzilla-high-resolution-logo-color-on-transparent-background (2).png",
          alignment: Alignment.centerLeft,
        ),
        onSearch: (value) => setState(() => value),
        actions: [
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.account_circle_outlined), onPressed: () {}),
        ],
      ),
    );
  }
}
