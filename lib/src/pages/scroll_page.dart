import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _firstPage(),
          _secondPage(),
        ],
      ),
    );
  }

  Widget _firstPage() {
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _displayInfo(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _secondPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Willkommen', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: () {

          }
        )
      ),
    );
  }

  Widget _displayInfo() {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 50.0
    );
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('0° C', style: textStyle),
          Text('Freitag', style: textStyle),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_up, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }
}