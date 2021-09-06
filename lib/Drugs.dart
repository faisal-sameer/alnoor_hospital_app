import 'package:flutter/material.dart';

class Drugs extends StatefulWidget {
  const Drugs({Key? key}) : super(key: key);

  @override
  _DrugsState createState() => _DrugsState();
}

class _DrugsState extends State<Drugs> {
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    var mdh = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("الادوية"),
        centerTitle: true,
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
      body: Stack(children: [
        Container(
          height: mdh,
          width: mdw,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/wp6432069.jpg"),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: mdh,
          child: ListView(
            children: [
              for (var i = 0; i < 10; i++)
                Card(
                  elevation: 5,
                  child: ListTile(
                    trailing: Text(
                      "Prednisolone Acetate ${i} ",
                      style: TextStyle(fontSize: 20),
                    ),
                    dense: true,
                    title: Text(
                      "239416${i}  :",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                )
            ],
          ),
        ),
      ]),
    ));
  }
}
