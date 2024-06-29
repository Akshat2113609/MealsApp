import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';
import 'package:myapp/screens/categories.dart';
import 'package:myapp/screens/meals.dart';
class TabsScreen extends StatefulWidget{
  const TabsScreen({super.key});
      State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}
class _TabsScreenState extends State<TabsScreen>{
  int _selectedPageIndex=0;
  void _selectPage(int index){
    setState(() {
      _selectedPageIndex=index;
    });
  }
@override
 Widget build(context){
  Widget activePage= const CategoriesScreen();
  var activePageTitle='Categories';

  if(_selectedPageIndex==1){
    activePage=MealsScreen(title: 'favourites', meals: []);
    activePageTitle='your favourites';
  }
  return Scaffold(
    appBar: AppBar(
      title: Text(activePageTitle),
    ),
    body:activePage,
    bottomNavigationBar:BottomNavigationBar(
      onTap: _selectPage,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.set_meal),
        label:'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.heat_pump_sharp),
        label:'favourites'),
      ]
    ),
  );
 }
}