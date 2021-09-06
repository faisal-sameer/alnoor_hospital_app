import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
              Icons.arrow_back,
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
              for (var i = 0; i < 10; i++)
                Card(
                  elevation: 5,
                  child: ListTile(
                    dense: true,
                    title: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        " LEUCOCYTES${i} : WBC(total)",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Result: ${i}.6${i} ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Normal Range: ${i}.67 ",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
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
