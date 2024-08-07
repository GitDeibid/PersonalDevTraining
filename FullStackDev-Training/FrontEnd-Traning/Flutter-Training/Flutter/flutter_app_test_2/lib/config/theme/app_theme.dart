import 'package:flutter/material.dart';


const Color _customColor = Color(0xFFC62626);
const List<Color> _colorTheme = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.brown,
];

class AppTheme{

  final  int selectedColor;

  AppTheme({this.selectedColor=0}):assert(
    selectedColor >=0 && selectedColor <= _colorTheme.length-1,

    'The colors index must be between 0 and ${_colorTheme.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      //brightness: Brightness.dark
    );
  }

}