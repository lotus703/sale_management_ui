import 'package:flutter/material.dart';
import 'package:sale_management/widget/dasdasd.dart';
import 'package:sale_management/widget/num_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: SideDrawer(),
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.notifications_on),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: NumCard(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.sms),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
