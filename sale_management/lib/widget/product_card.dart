import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(top: 10, left: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Mã sản phẩm:  #SP001",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Tên sản phẩm: Bánh gạo",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Trạng thái:",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Giá: 10.000 đ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              "https://picsum.photos/250?image=9",
              height: 80.0,
              width: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}
