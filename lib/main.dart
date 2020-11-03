import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
          _buildButtonColumn(Colors.blue, Icons.face, 'Blaues Gesicht')
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Container(
              child: Text(
                'A11 P 1 - 4 D 13',
                textAlign: TextAlign.center,
              ),
              margin: const EdgeInsets.only(top: 80),
            ),
            Image.asset(
              './lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
          ],
        ));
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          'Alter: 50, Geschlecht: W',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(
        '1,75 m, blonde Haare, blaue Augen, Brille, extrem adipös',
        style: TextStyle(
          color: Colors.grey[500],
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            'Verletzungen:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 4, top: 8),
          child: Text(
            'Teil-Amputation rechter Unterarm, spritzend blutend; schon großer Blutverlust',
            style: TextStyle(
              color: Colors.grey[500],
            ),
          ),
        ),
      ]),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}
