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
              child: ListView(children: [
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 0;
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17.0, right: 4),
                            child: Text(
                              " السابق",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17.0, right: 4),
                            child: Text(
                              " الحالية",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: selected == 1 ? newAppointment() : pastAppointment(),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Card pastAppointment() {
    return Card(
      color: Colors.green[700],
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage("assets/images/398031.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "اليوم : 1/9/2022 ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "الوقت : 10:00 AM",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "القسم : الأسنان",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "الطبيب : حنان الريمي ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      elevation: 10,
      shadowColor: Colors.black,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  Card newAppointment() {
    return Card(
      color: Colors.green[700],
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage("assets/images/398031.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "اليوم : 1/9/2022 ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "الوقت : 10:00 AM",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "القسم : الأسنان",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "الطبيب : خالد بطحي",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      elevation: 10,
      shadowColor: Colors.black,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
