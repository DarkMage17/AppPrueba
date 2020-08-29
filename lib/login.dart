import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String user;
  TextEditingController controller = new TextEditingController();

  void click() {
    user = controller.text;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage(user)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Type your username: ",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.done),
                  splashColor: Colors.blue,
                  tooltip: "Submit",
                  onPressed: click,
                ))),
      ),
    );
  }
}
