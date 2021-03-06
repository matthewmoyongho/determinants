import 'package:determinants/app/screens/two_dimension/form_fields.dart';
import 'package:flutter/material.dart';

class TwoDimension extends StatefulWidget {
  @override
  _TwoDimensionState createState() => _TwoDimensionState();
}

class _TwoDimensionState extends State<TwoDimension> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "DETERMINANT OF NxN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.blue[800]])),
            ),
            Material(
              elevation: 2,
              child: ListTile(
                title: Text("Two by Two (2X2"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/two_dimension');
                },
              ),
            ),
            Divider(
              height: 10,
            ),
            Material(
              elevation: 2,
              child: ListTile(
                  title: Text("Three by Three (3X3)"),
                  tileColor: Colors.white12,
                  selectedTileColor: Colors.blue[900],
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  }),
            ),
            Divider(
              height: 10,
            ),
            Material(
              elevation: 2,
              child: ListTile(
                title: Text("Four by Four (4X4)"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/four_dimension');
                },
              ),
            ),
            Divider(
              height: 10,
            ),
            Material(
              elevation: 2,
              child: ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
              ),
            ),
            Divider(
              height: 10,
            ),
            Material(
              elevation: 2,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                },
                title: Text("back"),
                leading: Icon(Icons.flip_to_back),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  //change this
                  FormFields(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
