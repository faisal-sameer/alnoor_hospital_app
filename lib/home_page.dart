import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pos = 1;

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: Scaffold(
            appBar: AppBar(
              elevation: 2,
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
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: mdh,
                        width: mdw,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/wp6432069.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: mdh,
                        child:
                            ListView(scrollDirection: Axis.vertical, children: [
                          Card(
                            color: Colors.green[700],
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/398031.jpg"),
                                      fit: BoxFit.cover)),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      " الاسم : عبدالعزيز حمزة الحربي",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      "رقم الملف : 154884",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      "رقم الهوية/الاقامة : 109999999999",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Card(
                            child: Column(children: [
                              ListTile(
                                title: Text(
                                  "الخدمات",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                            elevation: 8,
                            shadowColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 200,
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
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
                                            image: AssetImage(
                                                "assets/images/398031.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                          padding:
                                              const EdgeInsets.only(left: 10),
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
                                            image: AssetImage(
                                                "assets/images/398031.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                          padding:
                                              const EdgeInsets.only(left: 1.0),
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
                                            image: AssetImage(
                                                "assets/images/398031.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Card(
                            child: Column(children: [
                              ListTile(
                                title: Text(
                                  "عن المستشفى",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                            elevation: 8,
                            shadowColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Card(
                            color: Colors.green[700],
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/398031.jpg"),
                                      fit: BoxFit.cover)),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      "تم تأسيس مستشفى النور التخصصي بأمر من خادم الحرمين الشريفين كمستشفى للرعاية الصحية في عام 1403 هـ لخدمة المواطنين والمقيمين والحجاج للمدينة المقدسة والمنطقة المحيطة بها. وهو مستشفى حكومي تحت إشراف مديرية الشؤون الصحية في مكة المكرمة . ويقع في قلب المدينة بالقرب من المشاعر المقدسة (مزدلفة) وعلى مسافة 3.5 كيلومتر من المسجد الحرام.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: FancyBottomBar(
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
                setState(() {
                  pos = index;
                });
              },
            ),
          ),
        ));
  }
}
