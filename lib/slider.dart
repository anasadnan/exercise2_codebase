import 'package:flutter/material.dart';

class Sliders extends StatelessWidget {
  final _state, _color, _colorCode;

  Sliders({state, color, colorCode})
      : _state = state,
        _color = color,
        _colorCode = colorCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Slider(
          min: 0.0,
          max: 255.0,
          value: _color.toDouble(),
          activeColor: Colors.brown,
          inactiveColor: Colors.brown,
          onChanged: (double value) {
            if (_colorCode == "red") {
              _state.red = value;
            } else if (_colorCode == "green") {
              _state.green = value;
            } else {
              _state.blue = value;
            }
          },
        ),
      ),
    );
  }
}
