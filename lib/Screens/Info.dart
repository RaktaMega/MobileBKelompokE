import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Created By:',
              style: TextStyle(fontSize: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Rakta Mega G Q K D   182410103067',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
