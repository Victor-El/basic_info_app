import 'package:flutter/material.dart';

void main() => runApp(ProfileApp());

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      home: HomeRoute(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomeRoute extends StatelessWidget {
  final String appName = "Profile App";

  Widget profileRow(String key, String value) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2.0,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 2.0))
                ],
                color: Colors.green.shade700,
              ),
              child: Text(
                key,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: "monospace",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(-2.0, -2.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2.0,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 2.0))
                ],
                gradient: LinearGradient(
                    colors: [Colors.green.shade400, Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: "monospace",
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Container(
        color: Colors.grey.shade200,
        padding: EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: <Widget>[
              profileRow("Name:", "Elezua Victor"),
              profileRow("Username:", "Elezua Victor"),
              profileRow("Email:", "victorelezua@gmail.com"),
              profileRow("Track:", "Mobile"),
            ],
          ),
        ),
      ),
    );
  }
}
