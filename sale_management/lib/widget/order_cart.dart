import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderCard extends StatelessWidget {
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Mã đơn hàng: #DH001",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Tên khách hàng: Tạ Quốc Khánh",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Trạng thái: Chưa thanh toán",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                "Giá: 10.000 đ",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
