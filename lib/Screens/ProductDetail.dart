import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String image, title, harga, content;

  ProductDetail({this.image, this.title, this.harga, this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: Image.asset(image, fit: BoxFit.cover)),
            ListTile(title: Text(title)),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 30.0),
              child: Text(harga, style: TextStyle(color: Colors.black))),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 30.0),
              child: Text(content, style: TextStyle(color: Colors.black))),
          ],
      ),
    );
  }
}
