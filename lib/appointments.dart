import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "المواعيد ",
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
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: mdh,
              width: mdw,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/wp6432069.jpg"),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView(
                children: [
                  for (var i = 0; i < 10; i++)
                    Card(
                      elevation: 5,
                      child: ListTile(
                        dense: true,
                        title: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "الاسم : عبد العزيز",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "اليوم : 1/3/1443",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "الوقت : 10:00",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "القسم : الأسنان",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "عيادة : الأسنان",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "الطبيب : خالد البطحي",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "الحالة : منتهي",
                              style: TextStyle(fontSize: 15),
                            ),
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
          ],
        ),
      ),
    );
  }
}
