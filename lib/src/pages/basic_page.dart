import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold
  );

  final subtitleStyle = TextStyle(
    fontSize: 18.0,
    color: Colors.grey
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            _showImage(),

            _showTitle(),
            SizedBox(height: 40.0,),
            _showActions(),

            _showDescription(),
            _showDescription(),
            _showDescription(),
            _showDescription(),
          ]
        ),
      )
    );
  }

  Widget _showImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://external-preview.redd.it/Jsu35YNc7fhByjGvN7hrl1ULZtvfnN3FT5WKIxfC4UQ.jpg?auto=webp&s=54efcb05eecd29cd9ac602d4b6aaffe4d47ca315'),
        height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _showTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lowpoly Berge', style: titleStyle,),
                  SizedBox(height: 5.0),
                  Text('Wirklich schöne Kunst', style: subtitleStyle)
                ],
              ),
            ),
            
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('396', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _showActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'ANRUFEN'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'TEILEN'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.indigoAccent, size: 40.0,),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 16.0, color: Colors.indigoAccent),)
      ],
    );
  }

  Widget _showDescription() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          'Id eiusmod sunt nulla ipsum non sint excepteur irure nostrud. Consequat velit aliquip ea cupidatat magna eu mollit enim laborum consequat laborum adipisicing eu cupidatat. Elit ea ipsum aliquip anim ea incididunt sit et commodo. Deserunt ipsum aliquip do velit anim esse elit. Nisi id in reprehenderit minim in.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 17.0,
            height: 1.5
          ),
        ),
      ),
    );
  }
}