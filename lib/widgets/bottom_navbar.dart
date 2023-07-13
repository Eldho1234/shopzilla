import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopzilla/controller/shop_provider.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.category), label: "Categoreis"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: "Account"),
      ],
      currentIndex: Provider.of<ShopProvider>(context).currentIndex,
      onTap: (index) =>
          Provider.of<ShopProvider>(context, listen: false).ontap(index),
      unselectedItemColor: Colors.black,
      selectedItemColor: Color.fromRGBO(9, 106, 46, 50),
    );
  }
}
