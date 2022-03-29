import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      child: Image.asset('assets/sabila.jpg'),
    );

    Widget titleSection = Container(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Strawberry Pavlova',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );

    Widget descriptionSection = Container(
        padding: EdgeInsets.all(16),
        child: Text(
          'Pavlova is menrique-based dessert named after the Rusian ballerine, '
          'Anna Pavlova. Pavloa features a crisp crust and soft, light inside, '
          'topped with fruit, and whipped cream',
          textAlign: TextAlign.justify,
        ));

    Widget rateSection = Row(
      children: <Widget>[
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star),
      ],
    );

    Widget reviewSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        rateSection,
        Text('170 Reviews'),
      ],
    );

    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildMenuSection(Icons.bookmark, "Prep", "25 min"),
        _buildMenuSection(Icons.timer, "Cook", "1 hour"),
        _buildMenuSection(Icons.fastfood, "Feeds", "4-6"),
      ],
    );

    return MaterialApp(
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_sharp, color: Colors.black),
          title: Text(
            'Profil',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[Icon(Icons.create_sharp)],
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            descriptionSection,
            Container(
              padding: EdgeInsets.only(bottom: 24),
              child: reviewSection,
            ),
            menuSection,
          ],
        ),
      ),
    );
  }
}

Widget _buildTextSection(
  String text,
  double textSize,
  double paddingTop,
) {
  return Container(
    padding: EdgeInsets.only(top: paddingTop),
    child: Text(
      text,
      style: TextStyle(
        fontSize: textSize,
      ),
    ),
  );
}

Widget _buildMenuSection(
  IconData iconData,
  String title,
  String timestamp,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData),
      _buildTextSection(title, 16, 8),
      _buildTextSection(timestamp, 12, 12),
    ],
  );
}
