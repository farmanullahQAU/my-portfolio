import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color:primaryColor,
        ),
        child: Text('Drawer Header'),
      ),
      ..._addMenuButtons()
    ],
  ),
);
  }

 _addMenuButtons() {

return Get.find<MenuController>().getNavigationBarItems().map((item) {


  return Obx( ()=>
     ListTile(
       selected: Get.find<MenuController>().currentIdex==item.index,
       selectedColor: Colors.white,
       selectedTileColor: Colors.black,
       title:item.item,
    
    onTap: item.onTap,
    
    ),
  );
}).toList();

  }
}