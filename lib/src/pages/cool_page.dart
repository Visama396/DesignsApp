import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class CoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _showTitles(),
                _roundedBottons(),
              ]
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _background() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1)
          ]
        )
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 3.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          top: -50,
          left: -50,
          child: pinkBox
        )
      ],
    );
  }

  Widget _showTitles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Transaktion klassifizieren', style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Klassifizieren Sie diese Transaktion in eine bestimmte Kategorie', style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent[100],
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116,117,152,1.0))
        )
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp, size: 30.0),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30.0),
            label: ''
          ),
        ]
      ),
    );
  }

  Widget _roundedBottons() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            _createRoundedButton(Colors.blue, Icons.border_all, 'General'),
            _createRoundedButton(Colors.purpleAccent, Icons.directions_bike, 'Bike'),
          ]
        ),
        TableRow(
          children: <Widget>[
            _createRoundedButton(Colors.pinkAccent, Icons.shop, 'Buy'),
            _createRoundedButton(Colors.orange, Icons.insert_drive_file, 'Files'),
          ]
        ),
        TableRow(
          children: <Widget>[
            _createRoundedButton(Colors.blueAccent, Icons.movie_filter, 'Entertainment'),
            _createRoundedButton(Colors.green, Icons.cloud, 'Groceries'),
          ]
        ),
        TableRow(
          children: <Widget>[
            _createRoundedButton(Colors.red, Icons.collections, 'Bild'),
            _createRoundedButton(Colors.teal, Icons.all_inclusive, 'Teilen'),
          ]
        ),
      ],
    );
  }

  Widget _createRoundedButton( Color color, IconData icon, String label) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 0.0
          ),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon(icon, color: Colors.white, size: 30.0),
                ),
                Text(label, style: TextStyle(color: color))
              ]
            ),
          ),
        ),
      ),
    );
  }
}