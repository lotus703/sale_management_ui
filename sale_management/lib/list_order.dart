import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:sale_management/widget/order_cart.dart';

class ListOrder extends StatefulWidget {
  @override
  _ListOrderState createState() => _ListOrderState();
}

class _ListOrderState extends State<ListOrder> {
  int _stackIndex = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  List<String> _status = ["Pending", "Released", "Blocked"];
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Danh sách đơn hàng'),
      ),
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: Drawer(
        child: DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Nhập mã đơn hàng",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Trạng thái đơn hàng:',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              RadioButton(
                description: "Đã thanh toán",
                value: "Text alignment right",
                groupValue: _singleValue,
                onChanged: (value) => setState(
                  () => _singleValue = value,
                ),
              ),
              RadioButton(
                description: "Chưa thanh toán",
                value: "Text alignment left",
                groupValue: _singleValue,
                onChanged: (value) => setState(
                  () => _singleValue = value,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ngày tạo đơn:',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 12,
                        ),
                        prefixIcon: Icon(Icons.calendar_today),
                        border: OutlineInputBorder(),
                        labelText: 'Từ ngày',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          fontSize: 12,
                        ),
                        prefixIcon: Icon(Icons.calendar_today),
                        border: OutlineInputBorder(),
                        labelText: 'Đến ngày',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Giá trị đơn hàng:',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Từ',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Đến',
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, i) {
                return OrderCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
