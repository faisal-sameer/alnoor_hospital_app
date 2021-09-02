import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int pos = 1;
  String _urlFacebook = 'https://ar-ar.facebook.com/Nsh.med.sa/';
  String _urlYoutube =
      'https://www.youtube.com/channel/UCbVYoq083BJtkv17n1eZztg';
  String _urlTwitter = 'https://twitter.com/nsh_med';
  String _urlInstagram = 'https://www.instagram.com/nsh_med/';
  void _launchURLFacbook() async => await canLaunch(_urlFacebook)
      ? await launch(_urlFacebook)
      : throw 'Could not launch $_urlFacebook';

  void _launchURLYoutube() async => await canLaunch(_urlYoutube)
      ? await launch(_urlYoutube)
      : throw 'Could not launch $_urlYoutube';
  void _launchURLTwitter() async => await canLaunch(_urlTwitter)
      ? await launch(_urlTwitter)
      : throw 'Could not launch $_urlTwitter';
  void _launchURLInstagram() async => await canLaunch(_urlInstagram)
      ? await launch(_urlInstagram)
      : throw 'Could not launch $_urlInstagram';
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
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: _launchURLFacbook,
                                  child: Card(
                                    color: Colors.blue[700],
                                    child: Container(
                                      child: Column(children: [
                                        ListTile(
                                          trailing: Icon(Icons.facebook),
                                          title: Text(
                                            "FaceBook",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    elevation: 8,
                                    shadowColor: Colors.black,
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: _launchURLYoutube,
                                  child: Card(
                                    color: Colors.red[700],
                                    child: Container(
                                      child: Column(children: [
                                        ListTile(
                                          trailing:
                                              Icon(FontAwesomeIcons.youtube),
                                          title: Text(
                                            "YouTube",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    elevation: 8,
                                    shadowColor: Colors.black,
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: _launchURLTwitter,
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.black,
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    color: Colors.blue[100],
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Column(children: [
                                        ListTile(
                                          trailing:
                                              Icon(FontAwesomeIcons.twitter),
                                          title: Text(
                                            "Twitter",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                InkWell(
                                  onTap: _launchURLInstagram,
                                  child: Card(
                                    elevation: 8,
                                    shadowColor: Colors.black,
                                    shape: BeveledRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purple,
                                              Colors.yellow,
                                            ],
                                          )),
                                      child: Column(children: [
                                        ListTile(
                                          trailing:
                                              Icon(FontAwesomeIcons.instagram),
                                          title: Text(
                                            "Instagram",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
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
                if (index == 1) {
                  Navigator.of(context).pushNamed("homepage");
                }
                setState(() {
                  pos = index;
                });
              },
            ),
          ),
        ));
  }
}
