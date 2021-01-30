import 'package:flutter/material.dart';
import 'package:sale_management/chart_page.dart';
import 'package:sale_management/list_customer.dart';
import 'package:sale_management/list_order.dart';
import 'package:sale_management/list_product.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ABC SHOP',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(90.0),
                        child: Image.network(
                          "https://picsum.photos/250?image=9",
                          height: 50.0,
                          width: 50.0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Nhật Tiến",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF3F5D83),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Tổng quan'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Đơn hàng'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListOrder()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Khách hàng'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListCustomer()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.all_inbox),
            title: Text('Sản phẩm'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListProduct()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.insights),
            title: Text('Báo cáo'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChartPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cấu hình cửa hàng'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Đăng xuất'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
