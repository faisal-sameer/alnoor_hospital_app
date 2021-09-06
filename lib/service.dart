import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    var mdh = MediaQuery.of(context).size.height;
    var mdw = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "الخدمات",
          style: TextStyle(
              color: Colors.green, fontSize: 30, fontWeight: FontWeight.w800),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("LoginPage");
            },
            icon: Icon(
              Icons.logout,
              color: Colors.green,
              size: 40,
            )),
      ),
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: mdh,
            width: mdw,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wp6432069.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
                height: mdh,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print("index");
                      },
                      child: Container(
                        height: 150,
                        width: 115,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1.0),
                              child: Image.asset(
                                'assets/images/4934522.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "نتائج المختبر",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/398031.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("index");
                      },
                      child: Container(
                        height: 150,
                        width: 115,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                'assets/images/883407.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "الأدوية",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/398031.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("Appointments");
                      },
                      child: Container(
                        height: 150,
                        width: 115,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset(
                                'assets/images/medical-appointment.png',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "المواعيد الطبية",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/398031.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ],
                )),
          ),
        ]),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  FancyBottomBar bottomBar() {
    return FancyBottomBar(
      selectedIndex: pos,
      items: [
        FancyItem(
          textColor: Colors.green,
          title: 'الخدمات',
          icon: Icon(Icons.design_services),
        ),
        FancyItem(
          textColor: Colors.green,
          title: 'الصفحة الرئيسية',
          icon: Icon(Icons.home),
        ),
        FancyItem(
          textColor: Colors.green,
          title: 'الملف الشخصي',
          icon: Icon(Icons.person),
        ),
      ],
      onItemSelected: (index) {
        if (index == 1) {
          Navigator.of(context).pushNamed("homepage");
        }
        if (index == 2) {
          Navigator.of(context).pushNamed("Profile");
        }
        setState(() {
          pos = index;
        });
      },
    );
  }
}
