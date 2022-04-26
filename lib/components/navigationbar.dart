import 'package:farmanullah_portfolio/responsive/responsive_wrapper.dart';
import 'package:farmanullah_portfolio/views/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../menue_controller.dart';

class Header extends GetView<HomeController> {
//to controll menu only for mobile view
  final VoidCallback? onTap;
  const Header({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    ResponsiveWidget(
//for mobile show menu button
      smallScreen: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            height: 40,
            width: 45,
            child: TextButton(
          
              style: ButtonStyle(
          
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
          
                
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)
              )
            )
          ),
              onPressed:onTap,
              child: Icon(Icons.menu,color: Colors.white,)),
          )),
      ),

        //for large screen show row 
      largeScreen: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
    
    
                        Get.find<MenuController>().getNavigationBarItems().map((e) {
                        final index=e.index;
    
                        return
    
    
    
    
    
                          Obx(()=>
                              Column(
                                children: [
    
    
                                    Get.find<MenuController>().currentIdex==index?
    
                                  Container(
                                      decoration: const BoxDecoration(
    
                                          color: Colors.red,
    
                                          shape: BoxShape.circle),
    
                                      width: 8,height: 8):Container(),
                                  const SizedBox(height: 8,),
    
                                  TextButton(
    
    
                                    style: ButtonStyle(
    
    
    
                                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                            if (states.contains(MaterialState.focused)) {
                                              return Colors.yellow;
                                            }
                                            if (states.contains(MaterialState.hovered)) {
                                              return Colors.red;
                                            }
                                            if (states.contains(MaterialState.pressed)) {
                                              return Colors.blue;
                                            }
                                            return Colors.white; // null throus error in flutter 2.2+.
                                          }),
                                    ),
                                    onPressed: e.onTap,
                                    child:
    
    
                                    e.item!,
    
    
    
    
                                  ),
                                ],
                              ),
                          );
                      }
    
    
    
    
    
                      ).toList()
    
    
    
                  ),
    );
      
  }
}