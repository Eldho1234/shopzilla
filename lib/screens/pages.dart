import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopzilla/controller/shop_provider.dart';
import 'package:shopzilla/screens/bottom_nav_screens/account.dart';
import 'package:shopzilla/screens/bottom_nav_screens/cart.dart';
import 'package:shopzilla/screens/bottom_nav_screens/category.dart';
import 'package:shopzilla/screens/bottom_nav_screens/notifications.dart';
import 'package:shopzilla/widgets/bottom_navbar.dart';

import 'bottom_nav_screens/home_page.dart';

class Pages extends StatefulWidget {
  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List pages = [
    HomePage(),
    CategoryPage(),
    NotificationPage(),
    CartPage(),
    AccountPage()
  ];
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
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.account_circle_outlined), onPressed: () {}),
          ],
        ),
        bottomNavigationBar: BottomNav(),
        body: pages[Provider.of<ShopProvider>(context).currentIndex]);
  }
}
