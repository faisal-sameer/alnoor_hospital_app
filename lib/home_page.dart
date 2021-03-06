import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pos = 1;
  String _url = 'https://goo.gl/maps/KTMei9BVfHk4Y2Cs8';
  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(90.0),
              child: AppBar(
                actions: [
                  Image.asset(
                    'assets/images/842px-Saudi_Ministry_of_Health_Logo.svg.png',
                    width: 90,
                    height: 75,
                  )
                ],
                toolbarHeight: 100,
                centerTitle: true,
                title: Image.asset(
                  'assets/images/Clus_1.png',
                  width: 100,
                  height: 85,
                ),
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
            ),
            body: SafeArea(
              child: Directionality(
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
                          child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
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
                                            " ?????????? : ?????????????????? ???????? ????????????",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            "?????? ?????????? : 154884",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        ListTile(
                                          title: Text(
                                            "?????? ????????????/?????????????? : 109999999999",
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
                                        "??????????????",
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed("Appointments");
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
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
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
                                                "???????????????? ????????????",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                          Navigator.of(context)
                                              .pushNamed("Drugs");
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
                                                padding: const EdgeInsets.only(
                                                    left: 10),
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
                                                "??????????????",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                          Navigator.of(context)
                                              .pushNamed("Result");
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
                                                padding: const EdgeInsets.only(
                                                    left: 1.0),
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
                                                "?????????? ??????????????",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                        "???? ????????????????",
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
                                            "???? ?????????? ???????????? ?????????? ?????????????? ???????? ???? ???????? ?????????????? ???????????????? ?????????????? ?????????????? ???????????? ???? ?????? 1403 ???? ?????????? ?????????????????? ?????????????????? ?????????????? ?????????????? ?????????????? ???????????????? ?????????????? ??????. ?????? ???????????? ?????????? ?????? ?????????? ???????????? ???????????? ???????????? ???? ?????? ?????????????? . ???????? ???? ?????? ?????????????? ???????????? ???? ?????????????? ?????????????? (????????????) ???????? ?????????? 3.5 ?????????????? ???? ???????????? ????????????.",
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
                                InkWell(
                                  onTap: _launchURL,
                                  child: Card(
                                    child: Column(children: [
                                      ListTile(
                                        trailing: Icon(Icons.location_on),
                                        title: Text(
                                          "?????????? ???????? ????????????????",
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
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("Contact");
                                  },
                                  child: Card(
                                    child: Column(children: [
                                      ListTile(
                                        trailing: Icon(Icons.contact_support),
                                        title: Text(
                                          "?????????????? ??????????????",
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
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: bottomBar(),
          ),
        ));
  }

  FancyBottomBar bottomBar() {
    return FancyBottomBar(
      selectedIndex: pos,
      items: [
        FancyItem(
          textColor: Colors.green,
          title: '??????????????',
          icon: Icon(Icons.design_services),
        ),
        FancyItem(
          textColor: Colors.green,
          title: '???????????? ????????????????',
          icon: Icon(Icons.home),
        ),
        FancyItem(
          textColor: Colors.green,
          title: '?????????? ????????????',
          icon: Icon(Icons.person),
        ),
      ],
      onItemSelected: (index) {
        if (index == 0) {
          Navigator.of(context).pushNamed("Service");
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
