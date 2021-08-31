import 'package:flutter/material.dart';

class Verify_Code extends StatefulWidget {
  const Verify_Code({Key? key}) : super(key: key);

  @override
  _Verify_CodeState createState() => _Verify_CodeState();
}

class _Verify_CodeState extends State<Verify_Code> {
  TextEditingController codeFaild = new TextEditingController();
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

    final code = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      controller: codeFaild,
      decoration: InputDecoration(
        hintText: 'كود التحقق ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );

    final verifyButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("homepage");

          print("Verify");
        },
        padding: EdgeInsets.all(12),
        color: Colors.green,
        child:
            Text('تحقق', style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
    final resendButton = Padding(
      padding: EdgeInsets.all(12),
      child: InkWell(
        onTap: () {
          print('Resend');
        },
        child: Text(
          'اعادة ارسال الكود',
          style: TextStyle(color: Colors.blue, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed("LoginPage");
            },
            icon: Icon(
              Icons.arrow_back,
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
                          image: AssetImage("assets/images/wp6432069.jpg"),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ListView(
                    children: [
                      logo,
                      SizedBox(height: 48.0),
                      code,
                      SizedBox(height: 8.0),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(height: 24.0),
                      verifyButton,
                      resendButton
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
