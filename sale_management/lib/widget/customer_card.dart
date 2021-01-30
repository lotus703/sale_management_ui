import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Image.network(
              "https://picsum.photos/250?image=9",
              height: 60.0,
              width: 60.0,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Hồ Nguyễn Nhật Tiến",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text("Khách hàng mới")
            ],
          ),
          Spacer(),
          Icon(
            Icons.create,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.delete,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
