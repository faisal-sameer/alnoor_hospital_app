import 'package:flutter/material.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
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
              Navigator.of(context).pushNamed("Service");
            },
            icon: Icon(
              Icons.arrow_back,
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
          ],
        ),
      ),
    );
  }
}
