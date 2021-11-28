import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _drawerItem = {"Allow Resize?": true, "Alow change primer color?": true};

  var _red;
  var _green;
  var _blue;

  var _size = 400.0;
  get size => _size;
  set size(value) => setState(() => _size = value);

  get red => _red;
  set red(value) => setState(() => _red = value);
  get green => _green;
  set green(value) => setState(() => _green = value);
  get blue => _blue;
  set blue(value) => setState(() => _blue = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Icon'),
        backgroundColor: Colors.brown,
        actions: [
          MainAppBar(
            state: this,
            title: "-",
            drawerItem: null,
          ),
          MainAppBar(
            state: this,
            title: "S",
            drawerItem: null,
          ),
          MainAppBar(
            state: this,
            title: "M",
            drawerItem: null,
          ),
          MainAppBar(
            state: this,
            title: "L",
            drawerItem: null,
          ),
          MainAppBar(
            state: this,
            title: "+",
            drawerItem: null,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView.builder(
            itemCount: _drawerItem.length,
            itemBuilder: (context, index) {
              return Card(
                child: CheckboxListTile(
                    title: Text(_drawerItem.keys.elementAt(index)),
                    value: _drawerItem.values.elementAt(index),
                    onChanged: (value) {
                      setState(
                        () {
                          _drawerItem[_drawerItem.keys.elementAt(index)] =
                              value;
                        },
                      );
                    }),
              );
            }),
      ),
      body: MainBody(state: this),
      bottomNavigationBar: MainBottomBar(),
    );
  }
}
