import 'package:flutter/material.dart';
import 'package:project_for_test/models/order_detail.dart';
import 'package:project_for_test/utils/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final List<OrderDetail> listOrder = [
      OrderDetail(
          brand: 'YummYum',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60'),
      OrderDetail(
          brand: 'YummYum',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60'),
      OrderDetail(
          brand: 'YummYum',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60'),
      OrderDetail(
          brand: 'YummYum',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60')
    ];

    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(SizeConfig.defaultSize * 2),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Table(
              defaultColumnWidth: FixedColumnWidth(SizeConfig.defaultSize * 7),
              border: TableBorder.all(color: Colors.black),
              children: [
                TableRow(children: [
                  Text('ลำดับ'),
                  Text('ยี่ห้อ'),
                  Text('ประเภท'),
                  Text('รสชาติ'),
                  Text('ปริมาณ'),
                  Text('ราคา'),
                  Text('รายละเอียด'),
                ]),
                ...List.generate(listOrder.length, (index) {
                  return TableRow(children: [
                    Text((index + 1).toString()),
                    Text(listOrder[index].brand),
                    Text(listOrder[index].type),
                    Text(listOrder[index].taste),
                    Text(listOrder[index].amount),
                    Text(listOrder[index].price),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(SizeConfig.defaultSize * 1),
                            padding:
                                EdgeInsets.all(SizeConfig.defaultSize * 0.5),
                            color: Colors.blue,
                            child: Text(
                              'แก้ไข',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(SizeConfig.defaultSize * 1),
                            padding:
                                EdgeInsets.all(SizeConfig.defaultSize * 0.5),
                            color: Colors.pink,
                            child: Text(
                              'ลบ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(SizeConfig.defaultSize * 1),
                            padding:
                                EdgeInsets.all(SizeConfig.defaultSize * 0.5),
                            color: Colors.yellow,
                            child: Text(
                              'รายละเอียด',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]);
                })
              ],
            ),
          ],
        ),
      )),
    );
  }
}
