import 'package:flutter/material.dart';
import 'package:daves_cakes/models/cake.dart';
class CakeManager extends ChangeNotifier {
// 1


 String _selectedCake = 'yes';
 String get selectedCake => _selectedCake;


void identify(Cake _cakee){
  _selectedCake = _cakee.label ;
  notifyListeners();
}
}