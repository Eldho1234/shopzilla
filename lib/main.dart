import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopzilla/controller/shop_provider.dart';
import 'package:shopzilla/screens/splash_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ShopProvider()),
      ],
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
