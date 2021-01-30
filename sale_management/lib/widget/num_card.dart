import 'package:flutter/material.dart';

class NumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Text(
            'Tổng quan',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.blue[300],
          width: double.infinity,
          height: 120,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "1.900.000",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "Doanh thu tháng",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 20,
                  color: Colors.blue,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'More info',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.green[300],
          width: double.infinity,
          height: 120,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "20.000.000",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "Doanh thu năm",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 20,
                  color: Colors.green,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'More info',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.yellow[400],
          width: double.infinity,
          height: 120,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "50.000.000",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "Tỉ lệ tăng trưởng",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 20,
                  color: Colors.yellow[700],
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'More info',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
          color: Colors.red[300],
          width: double.infinity,
          height: 120,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "1000",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "Số đơn hàng đã áp dụng",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 22,
                ),
                Container(
                  height: 20,
                  color: Colors.red,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'More info',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                            child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
