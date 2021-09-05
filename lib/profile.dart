import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page.dart';
import 'package:fancy_bar/fancy_bar.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int pos = 2;
  int selected = 1;

  @override
  void initState() {
    setState(() {
      selected = 1;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        title: Text(
          "الصفحة الشخصية",
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
                        child: Icon(
                          FontAwesomeIcons.searchLocation,
                          size: 35,
                          color: Colors.white,
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
                        child: Icon(
                          FontAwesomeIcons.addressCard,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: Icon(
                          FontAwesomeIcons.users,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: selected == 0
                    ? userAddress()
                    : selected == 1
                        ? userInfomation(mdh)
                        : userRelatives(),
              ),
            ]),
          ),
        ]),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  Card userInfomation(double mdh) {
    return Card(
      color: Colors.green[700],
      child: SingleChildScrollView(
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
                  "رقم الملف الطبي : 1005454",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "الاسم : عبدالعزيز حمزة الحربي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "العمر : 70 سنة ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "الجنسية : سعودي",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "فصيلة الدم : A+",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "الجنس : ذكر",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "الحالة الاجتماعية : اعزب ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "تاريح الميلاد : 1417/12/31",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "رقم الهوية/الاقامة : 109999999999",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "نوع الهوية : بطاقة احوال ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "رقم الجوال 1 : 059XXXXXXXXXX",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "رقم الجوال 2 : 058XXXXXXXXXX",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "حالة الملف : فعال ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      elevation: 10,
      shadowColor: Colors.black,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  Card userAddress() {
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
                "المنطقة : مكة ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "المدينة : مكة المكرمة ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "الحي : الستين",
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

  Card userRelatives() {
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
                "الاسم : فيصل سمير جمبي ",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "رقم الجوال  : 058XXXXXXXXXX",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                "صلة القرابة : أب",
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
        if (index == 0) {
          Navigator.of(context).pushNamed("Service");
        }
        if (index == 1) {
          Navigator.of(context).pushNamed("homepage");
        }
        setState(() {
          pos = index;
        });
      },
    );
  }
}
