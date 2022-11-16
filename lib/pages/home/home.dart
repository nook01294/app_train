import 'package:flutter/material.dart';
import 'package:project_for_test/models/order_detail.dart';
import 'package:project_for_test/pages/add_or_edit_order/add_or_edit_order.dart';
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
          brand: 'มาม่า',
          type: 'ซอง',
          taste: 'เผ็ด',
          amount: '350',
          price: '60'),
      OrderDetail(
          brand: 'ยำยำ',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60'),
      OrderDetail(
          brand: 'ไวไว',
          type: 'ซอง',
          taste: 'เผ็ดสุดๆ',
          amount: '250',
          price: '60')
    ];

    return Scaffold(
      appBar: null,
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Color(0xff00FFFF),
        //         Color(0xff00F5FF),
        //         Color(0xff00EBFF)
        //       ]),
        // ),
        child: SafeArea(
            child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2,
                  top: SizeConfig.defaultSize * 2),
              padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 1, color: Colors.black),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 2,
                        right: SizeConfig.defaultSize * 2,
                        top: SizeConfig.defaultSize * 2,
                        bottom: SizeConfig.defaultSize * 2),
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 2,
                        right: SizeConfig.defaultSize * 2,
                        top: SizeConfig.defaultSize * 0.5,
                        bottom: SizeConfig.defaultSize * 0.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(width: 1, color: Colors.black),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Color.fromRGBO(60, 81, 89, 0.08),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      // controller: controllerValue,
                      // focusNode: node,
                      onTap: () {},
                      style: TextStyle(
                          color: Color(0XFF212121),
                          fontSize: SizeConfig.defaultSize * 2.0,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(SizeConfig.defaultSize * 1),
                          decoration: BoxDecoration(
                            color: Color(0xff0078FF),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'ค้นหาข้อมูล',
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize * 1.6,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.defaultSize * 4.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => AddOrEditOrderPage(
                                      isAdd: true,
                                    )),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(SizeConfig.defaultSize * 1),
                          decoration: BoxDecoration(
                            color: Color(0xff00EBFF),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'เพิ่มข้อมูล',
                            style: TextStyle(
                                fontSize: SizeConfig.defaultSize * 1.6,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ...List.generate(listOrder.length, (index) {
              return Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.defaultSize * 2,
                    left: SizeConfig.defaultSize * 2,
                    right: SizeConfig.defaultSize * 2),
                padding: EdgeInsets.all(SizeConfig.defaultSize * 1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin:
                            EdgeInsets.only(right: SizeConfig.defaultSize * 2),
                        child: Text('${index + 1}')),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ยี่ห้อ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('${listOrder[index].brand}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ประเภท',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('${listOrder[index].type}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('รสชาติ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('${listOrder[index].taste}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ปริมาณ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('${listOrder[index].amount}')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('ราคา',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('${listOrder[index].price}')
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: SizeConfig.defaultSize * 10,
                        margin:
                            EdgeInsets.only(left: SizeConfig.defaultSize * 1),
                        padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * 1,
                          right: SizeConfig.defaultSize * 1,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => AddOrEditOrderPage(
                                            isAdd: false,
                                            orderData: listOrder[index],
                                          )),
                                );
                              },
                              child: Text(
                                'แก้ไข',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text('ลบ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text('รายละเอียด',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            SizedBox(
              height: SizeConfig.defaultSize * 5,
            )
          ],
        )),
      ),
    );
  }
}
