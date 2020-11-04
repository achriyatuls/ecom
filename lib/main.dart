import 'package:flutter/material.dart';
import 'package:donats/screens/category_screen.dart';
import 'package:donats/places/places_screen.dart';
import 'package:donats/screens/detail_screen.dart';
import 'package:donats/screens/splash.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecomerce',
      initialRoute: 'splashscreen',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        accentColor: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
            // ignore: deprecated_member_use
            title: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            // ignore: deprecated_member_use
            subhead: TextStyle(fontWeight: FontWeight.bold)),
        fontFamily: 'roboto',
      ),

      //SET ROUTING YANG AKAN MENGATUR ALUR APLIKASI
      routes: {
        'splashscreen': (context) => SplashScreen(),
        '/': (ctx) => CategoryScreen(),
        '/places': (ctx) => PlacesScreen(),
        '/detail': (ctx) => DetailScreen()
      }));
}
