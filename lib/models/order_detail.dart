class OrderDetail {
  String brand;
  String type;
  String taste;
  String amount;
  String price;

  OrderDetail({
    this.brand,
    this.type,
    this.taste,
    this.amount,
    this.price,
  });

  // OrderDetail.fromJson(Map<String, dynamic> json) {
  //   brand = json['account_number'] ?? '-';
  //   type = double.tryParse((json['avail_bal_amt'] ?? 0.0).toString()) ?? 0.0;
  //   taste = json['thai_name'] ?? '-';
  //   amount = json['eng_name'] ?? '-';
  //   price = json['eng_name'] ?? '-';
  // }

  // OrderDetail.fromDataJson(Map<String, dynamic> data) {
  //   brand = data['data']['account_number'];
  //   type = data['data']['avail_bal_amt'];
  //   taste = data['data']['thai_name'];
  //   amount = data['data']['eng_name'];
  //   price = data['data']['eng_name'];
  // }
}
