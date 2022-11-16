import 'package:flutter/material.dart';
import 'package:project_for_test/models/order_detail.dart';
import 'package:project_for_test/utils/size_config.dart';

class AddOrEditOrderPage extends StatefulWidget {
  final bool isAdd;
  final OrderDetail orderData;
  AddOrEditOrderPage({Key key, this.isAdd, this.orderData}) : super(key: key);

  @override
  State<AddOrEditOrderPage> createState() => _AddOrEditOrderPageState();
}

class _AddOrEditOrderPageState extends State<AddOrEditOrderPage> {
  Map<String, TextEditingController> order = {
    'brand': new TextEditingController(),
    'type': new TextEditingController(),
    'taste': new TextEditingController(),
    'amount': new TextEditingController(),
    'price': new TextEditingController(),
  };

  String selectType;
  String selectTaste;

  List<DropdownMenuItem<String>> type = [
    'กล่อง',
    'ซอง',
    'ถุง',
    'แพ็ค',
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }).toList();

  List<DropdownMenuItem<String>> taste = [
    'เผ็ดสุดๆ',
    'เผ็ด',
    'หวาน',
    'เปรี้ยว',
    'เค็ม',
  ].map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(
        value,
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }).toList();

  @override
  void initState() {
    if (widget.orderData != null) {
      order['brand'].text = widget.orderData.brand;
      order['type'].text = widget.orderData.type;
      selectType = widget.orderData.type;
      order['taste'].text = widget.orderData.taste;
      selectTaste = widget.orderData.taste;
      order['amount'].text = widget.orderData.amount;
      order['price'].text = widget.orderData.price;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isAdd ? 'เพิ่มข้อมูลสินค้า' : 'แก้ไขข้อมูลสินค้า'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.defaultSize * 1),
                    child: Text(
                      'ยี่ห้อ',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * 1,
                          right: SizeConfig.defaultSize * 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all()),
                      child: TextFormField(
                        controller: order['brand'],
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.defaultSize * 1),
                    child: Text(
                      'ประเภท',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 1,
                        right: SizeConfig.defaultSize * 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.grey.withOpacity(0.7)),
                        items: type,
                        onChanged: (String value) {
                          setState(() {
                            order['type'].text = value;
                            selectType = value;
                          });
                          print(order['type'].text);
                        },
                        hint: Text(
                          "กรุณาเลือกประเภท",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        value: selectType,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.defaultSize * 1),
                    child: Text(
                      'รสชาติ',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 1,
                        right: SizeConfig.defaultSize * 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_drop_down_outlined,
                            color: Colors.grey.withOpacity(0.7)),
                        items: taste,
                        onChanged: (String value) {
                          setState(() {
                            order['taste'].text = value;
                            selectTaste = value;
                          });
                          print(order['taste'].text);
                        },
                        hint: Text(
                          "กรุณาเลือกรสชาติ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        value: selectTaste,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.defaultSize * 1),
                    child: Text(
                      'ปริมาณ(g)',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 1,
                        right: SizeConfig.defaultSize * 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all()),
                    child: TextFormField(
                      controller: order['amount'],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 2,
                  left: SizeConfig.defaultSize * 2,
                  right: SizeConfig.defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.defaultSize * 1),
                    child: Text(
                      'ราคา',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * 2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * 1,
                        right: SizeConfig.defaultSize * 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all()),
                    child: TextFormField(
                      controller: order['price'],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * 3,
                  bottom: SizeConfig.defaultSize * 3),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.all(SizeConfig.defaultSize * 1),
                  decoration: BoxDecoration(
                    color: Color(0xff0078FF),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    widget.isAdd ? 'เพิ่มข้อมูลสินค้า' : 'บันทึกข้อมูลสินค้า',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 1.6,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
