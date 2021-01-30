import 'package:flutter/material.dart';
import 'package:sale_management/widget/customer_card.dart';

class ListCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Danh sách khách hàng'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, i) {
            return CustomerCard();
          },
        ),
      ),
    );
  }
}
