import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.green,
                  size: 30,
                )),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: mdh,
                      width: mdw,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/backup.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: mdh,
                      child:
                          ListView(scrollDirection: Axis.vertical, children: [
                        Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  " الاسم : عبدالعزيز حمزة الحربي",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "رقم الملف : 154884",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "رقم الهوية/الاقامة : 109999999999",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          elevation: 8,
                          shadowColor: Colors.white,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
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
                          shadowColor: Colors.white,
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
                                        height: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/medical-appointment.png',
                                        height: 60,
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "المواعيد الطبية",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
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
                                        height: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/883407.png',
                                        height: 60,
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "الأدوية",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
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
                                        height: 5,
                                      ),
                                      Image.asset(
                                        'assets/images/4934522.png',
                                        height: 60,
                                        width: 60,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "نتائج المختبر",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
