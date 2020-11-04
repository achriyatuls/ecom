import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:donats/model/intro.dart';
import 'package:donats/color_palete.dart';
import 'package:donats/page/home.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<Intro> introList = [
    Intro(
      image: "assets/images/donat1.jpg",
      title: "Menawarkan ",
      description: "Menawarkan kelezatan yang menggoda rasa",
    ),
    Intro(
      image: "assets/images/donat3.jpg",
      title: "Mengirimkan",
      description: "Mengirimkan cita rasa penuh aroma",
    ),
    Intro(
      image: "assets/images/donat4.jpeg",
      title: "Gigitan",
      description: "Di setiap gigitannya, mengundang selera .",
    ),
    Intro(
      image: "assets/images/donatcoklat.jpg",
      title: "Aneka",
      description: "Beraneka pilihan untuk dirasakan .",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Swiper.children(
        index: 0,
        autoplay: false,
        loop: false,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: 20.0),
          builder: DotSwiperPaginationBuilder(
            color: ColorPalette.dotColor,
            activeColor: ColorPalette.dotActiveColor,
            size: 10.0,
            activeSize: 10.0,
          ),
        ),
        control: SwiperControl(iconNext: null, iconPrevious: null),
        children: _buildPage(context),
      ),
    );
  }

  List<Widget> _buildPage(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 0; i < introList.length; i++) {
      Intro intro = introList[i];
      widgets.add(Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 6,
          ),
          child: ListView(children: <Widget>[
            Image.asset(
              intro.image,
              height: MediaQuery.of(context).size.height / 3.5,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 12.0,
              ),
            ),
            Center(
              child: Text(
                intro.title,
                style: TextStyle(
                  color: ColorPalette.titleColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 20.0,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height / 20.0,
              ),
              child: Text(
                intro.description,
                style: TextStyle(
                  color: ColorPalette.descriptionColor,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Column(
                  //   children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 20.0,
              ),
            ),
            // Container(
            MaterialButton(
              color: Colors.lime,
              child: Text("NEXT"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen()),
                );
              },
            ),
            // )
          ])));
    }
    return widgets;
  }
}
