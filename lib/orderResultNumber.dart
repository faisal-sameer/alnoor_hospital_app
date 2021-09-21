import 'package:flutter/material.dart';

class OrderResultNumber extends StatefulWidget {
  const OrderResultNumber({Key? key}) : super(key: key);

  @override
  _OrderResultNumberState createState() => _OrderResultNumberState();
}

class _OrderResultNumberState extends State<OrderResultNumber> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "رقم الطلب : 34816",
          style: TextStyle(
              color: Colors.green, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.cancel,
              color: Colors.green,
              size: 40,
            )),
      ),
      body: Stack(children: [
        Container(
          height: mdh,
          width: mdw,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wp6432069.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: mdh,
          child: ListView(
            children: [
              Card(
                elevation: 5,
                child: ListTile(
                  dense: true,
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "الاسم : Hps Ag",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "النتيجة : سلبية ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "تاريخ  : 11-1-1443",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "المعدل الطبيعي : - ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "تفاصيل المجموعات : ---",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("Result");
                },
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    dense: true,
                    title: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "الاسم : CBC",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "النتيجة : سلبية ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "تاريخ  : 11-1-1443",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "المعدل الطبيعي : - ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "تفاصيل المجموعات : CBC",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
