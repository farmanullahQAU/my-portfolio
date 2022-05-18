import 'package:farmanullah_portfolio/constants/constants.dart';
import 'package:farmanullah_portfolio/constants/text_const.dart';
import 'package:farmanullah_portfolio/menue_controller.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
  
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
       DrawerHeader(
         margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color:primaryColor,
        ),
        child: Column(
          children: [
            Text(myName,style: TextStyles.subtitle1,),
            SizedBox(height: 10,),
            Text(designation,style: TextStyles.body1?.copyWith(color: Colors.white,fontStyle:FontStyle.italic ),)
          ],
        ),
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