import 'package:flutter/material.dart';
import 'package:sale_management/widget/product_card.dart';

class ListProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Danh sách sản phẩm'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 20),
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 40,
              child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Nhập mã hoặc tên sản phẩm",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    isDense: true,
                  ),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, i) {
                return ProductCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
