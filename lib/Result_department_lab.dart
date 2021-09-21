import 'package:flutter/material.dart';

class Result_department_lab extends StatefulWidget {
  const Result_department_lab({Key? key}) : super(key: key);

  @override
  _Result_department_labState createState() => _Result_department_labState();
}

class _Result_department_labState extends State<Result_department_lab> {
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
          "نتائج المختبر ",
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
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("OrderResultNumber");
                },
                child: Card(
                  elevation: 5,
                  child: ListTile(
                    dense: true,
                    title: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "رقم الطلب : 30141",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "القسم : الطوارئ والاسعاف",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "تاريخ الطلب : 11-1-1443",
                          style: TextStyle(fontSize: 15),
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
