import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final _state, _title, _drawerItem;

  MainAppBar({state, title, drawerItem})
      : _state = state,
        _title = title,
        _drawerItem = drawerItem;

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _drawerItem,
      child: IconButton(
          visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
          padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
          icon: Container(
            alignment: Alignment.center,
            child: Text(_title),
            decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.all(width: 1.0, color: Colors.white),
                shape: BoxShape.circle),
          ),
          onPressed: () {
            switch (_title) {
              case 'S':
                _state.size = 100.0;
                break;
              case 'M':
                _state.size = 300.0;
                break;
              case 'L':
                _state.size = 500.0;
                break;
              case '+':
                _state.size = _state.size + 50.0;
                break;
              case '-':
                _state.size = _state.size - 50.0;
                break;
            }
          }),
    );
  }
}
