import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CuroselConatiner extends StatelessWidget {
  List<ImageProvider> curoselimg = [
    AssetImage("assets/images/slider1.jpg"),
    AssetImage("assets/images/slider2.jpg"),
    AssetImage("assets/images/slider3.png"),
    AssetImage("assets/images/slider4.jpg"),
    AssetImage("assets/images/slider5.jpeg"),
    AssetImage("assets/images/slider6.jpeg"),
    AssetImage("assets/images/slider7.jpeg"),
    AssetImage("assets/images/slider8.jpeg"),
    AssetImage("assets/images/slider9.png"),
    AssetImage("assets/images/slider10.jpg"),
    AssetImage("assets/images/slider11.jpg"),
    AssetImage("assets/images/slider12.jpg"),
    AssetImage("assets/images/slider13.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: curoselimg[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
      itemCount: curoselimg.length,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.280,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
    );
  }
}
