import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:noor_app/verify_Code.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailFaild = new TextEditingController();
  TextEditingController passwordLogin = new TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.green;
    }

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 68.0,
        child: Image.asset('assets/images/Itcnter_logo265X167.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: emailFaild,
      decoration: InputDecoration(
        hintText: 'رقم الهوية',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );

    final password = TextFormField(
        controller: passwordLogin,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'رقم الجوال',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ));

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Verify_Code()),
          );
        },
        padding: EdgeInsets.all(12),
        color: Colors.green,
        child: Text('تسجيل الدخول', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
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
                          image: AssetImage("assets/images/wp6432069.jpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView(
                    children: [
                      logo,
                      SizedBox(height: 48.0),
                      email,
                      SizedBox(height: 8.0),
                      password,
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          children: [
                            Text(
                                "أوافق على الشروط والأحكام، وأقر بصحة البيانات أعلاه"),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.0),
                      loginButton,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
