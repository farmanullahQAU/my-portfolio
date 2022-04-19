import 'package:farmanullah_portfolio/assets_path.dart';
import 'package:farmanullah_portfolio/components/material_button.dart';
import 'package:farmanullah_portfolio/constants/text_const.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../responsive/responsive_wrapper.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _scrollController = ScrollController();



  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                           SliverAppBar(
                             toolbarHeight: 30,
                             backgroundColor: Colors.black,
                             elevation: 0.0,
        
                   pinned: false,
                            snap: true,
                            floating: true,  
                              //    backgroundColor: Colors.transparent,
        
                                  actions: [
                                    Row(
                                      children: [
                                        MaterialButton(
                                          onPressed: (){
        
               
        
                                          },
                                          highlightColor: Colors.white60,
                                          child: Text(
                                            'About Me',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        MaterialButton(
                                          hoverColor: Colors.grey[800],
                                          onPressed: (){},
                                          child: Text(
                                            'Experience',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
        
                                        TextButton(
                                          onPressed: (){
                                            Get.to(()=>MyStatefulWidget());
        
               
        
                                          },
        
                                          child: Text(
                                            'Contact Me',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .15),
                                  ],
                                ),
                  ...slivers(),
                ],
              ),
          ),
        );
      }),
    );
  }

  List<Widget> slivers() => [
        SliverToBoxAdapter(
          key:controller.homeGlobalKey ,
          child: Container(
            padding: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.mirror,
              colors: [
                Colors.black,
                 Colors.black.withOpacity(0.9),

                Colors.black.withOpacity(0.4),
              ],
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 

                  
controller.getNavigationBarItems().map((e) {
final index=e.index;

  return 


  


      Obx(()=>
         Column(
         children: [
      
      
           controller.currentIdex==index?
      
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

//                       MaterialButton(
//                         onPressed: () {
//                           Scrollable.ensureVisible(
//                             aboutGlobalKey.currentContext!,
//                             duration: const Duration(seconds: 1),
//                           );
//                         },
//                         highlightColor: Colors.white60,
//                         child: Text(
//                           'HOME',
//                         style: TextStyles.subtitle1?.copyWith(color: Colors.white),
//                         ),
//                       ),

//                       TextButton(
                      
                      
// style: ButtonStyle(


  
// foregroundColor: MaterialStateProperty.resolveWith<Color>(
// (Set<MaterialState> states) {
// if (states.contains(MaterialState.focused))
//   return Colors.yellow;
// if (states.contains(MaterialState.hovered))
//     return Colors.red;
// if (states.contains(MaterialState.pressed))
//     return Colors.blue;
// return Colors.white; // null throus error in flutter 2.2+.
// }),
// ),
// onPressed: () { },
// child:  Text(
//                           'EXPERIENCE',
//                           style: TextStyle(
//                             letterSpacing: 3,
                          
//                             fontWeight: FontWeight.bold
//                               ),
//                         ),
// ),
//                         TextButton(
                      
                      
// style: ButtonStyle(

  
// foregroundColor: MaterialStateProperty.resolveWith<Color>(
// (Set<MaterialState> states) {
// if (states.contains(MaterialState.focused))
//   return Colors.yellow;
// if (states.contains(MaterialState.hovered))
//     return Colors.red;
// if (states.contains(MaterialState.pressed))
//     return Colors.blue;
// return Colors.white; // null throus error in flutter 2.2+.
// }),
// ),
// onPressed: () { },
// child:  Text(
//                           'ABOUT',
//                           style: TextStyle(
//                             letterSpacing: 3,
                          
//                             fontWeight: FontWeight.bold
//                               ),
//                         ),
// ),
//                       TextButton(
//                         onPressed: () {
//                           Scrollable.ensureVisible(
//                             projectGlobalKey.currentContext!,
//                             duration: const Duration(seconds: 1),
//                           );
//                         },
//                         child: Text(
//                           'EXPERIENCE',
//                           style: TextStyle(
//                             letterSpacing: 3,
                          
//                             fontWeight: FontWeight.bold
//                               ),
//                         ),
//                       ),
                  
                ),


                const Expanded(
                    child: Home(
                )),


              ],
            ),
            height: 600,
            width: Get.width,
          ),
        ),
      
          SliverToBoxAdapter(
          key: controller.projectGlobalKey,
          child: Projects(),
        ),
       SliverToBoxAdapter(
          child: Container(
            height: 500,
            width: Get.width,
            color: Colors.cyan
          ),
        ),
        SliverToBoxAdapter(
          key: controller.aboutGlobalKey,
          child:const About()
        ),
      
      
           SliverToBoxAdapter(
          child: Container(
            height: 500,
            width: Get.width,
            color: Colors.pink,
          ),
        )
      ];
}
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=Get.width;
    return ResponsiveWidget(
      largeScreen: 
      
      
      Container(
color: Colors.white,

    child: Column(
    
      children: [
     
    
      
     Container(

        margin: EdgeInsets.only(left: screenWidth*0.1,top:20,bottom: 20,right: 20),

    
       child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
     
        
        
    
       children: [
     
     
     
         Flexible(
           flex: 1,
           child: AnimatedSize(
                 curve: Curves.easeIn,
                 duration: const Duration(seconds: 1),
                 child: _addImageAvatar(context)
               ),
         ),
const SizedBox(width: 20,),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Text("About me",style: TextStyles.heading3,),
                Text(aboutDescription,textAlign: TextAlign.justify,
                
                style: TextStyles.subtitle1?.copyWith(color: Colors.black87),
                
                ),
              const SizedBox(height: 30,),
                 Container(width: 200,height: 
                 5,color: Colors.red,),
              
                 _addSocilaIcon(),
            
              ],
            ),
          )
      
      
      ,
      
       
     
       ],
       ),
     ),
      ],
    ),
    
    
      ),
    
    smallScreen:


       Container(
         decoration: const BoxDecoration(
           
        color: Colors.white,
           
          //  image: DecorationImage(
    
          
          // opacity: 0.3,
          // fit: BoxFit.cover,
          // image: AssetImage('assets/pic2.jpg'))
          
          
          ),
    child: Column(
    
      children: [
     
    
      
     SizedBox(
    
       child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
     
        
        
    
       children: [
     
     
     
         AnimatedSize(
               curve: Curves.easeIn,
               duration: const Duration(seconds: 1),
               child: _addImageAvatar(context)
             ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Text("About me",style: TextStyles.heading3,),
              Text(aboutDescription,textAlign: TextAlign.center,
              
              style: TextStyles.subtitle1?.copyWith(color: Colors.black87),
              
              ),
            // SizedBox(height: 30,),
            //    Container(width: 200,height: 
            //    5,color: Colors.red,),
            
               Align(
                   alignment: Alignment.center,
                   child: _addSocilaIcon()),
          
            ],
          )
      
      
      ,
      
       
     
       ],
       ),
     ),
      ],
    ),
    
    
      ),
    
    
    
    
    );
  }



  Widget _addImageAvatar(BuildContext context){
return CircleAvatar(
backgroundColor: Colors.red,
 radius: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?155:205,
  child:   CircleAvatar(
    radius: ResponsiveWrapper.of(context).isSmallerThan(TABLET)?150:200,
    
    backgroundImage: Image.asset(
    
    
    "assets/background.jpg",fit: BoxFit.cover,).image,),
);

  }

 Widget _addSocilaIcon() {


    return Row(children: const [
    
    ButtonBar(children: [
    
    FaIcon(FontAwesomeIcons.linkedin,),
    FaIcon(FontAwesomeIcons.twitter,),
    FaIcon(FontAwesomeIcons.mailBulk,),
    FaIcon(FontAwesomeIcons.youtube,),
    
    
    ],)
    
    ],);
  }
}
class Home extends StatelessWidget {
  const Home({Key? key, required }) : super(key: key);

  @override
  Widget build(BuildContext context) {
final screenWidth=Get.width;
    return ResponsiveWidget(
smallScreen: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       
        
     
        children: [

       
      
       
            RichText(
              text: TextSpan(
            text: "I'M ",
            style: TextStyles.heading4?.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: "${myName.toUpperCase()} ",
                  style: TextStyles.heading4
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 10),
            child: Text(designation.toUpperCase(),style: TextStyles.heading6?.copyWith(color: Colors.red),),
          ),
          const SizedBox(height: 20,),


          SizedBox(
            
            child: Text(
              homeDesctiption,
              style: TextStyles.subtitle1?.copyWith(color: Colors.white),
              textAlign:
              
            
               TextAlign.center,
            ),
          ),
      const SizedBox(height: 20,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
          
             children: [
        
        
                SizedBox(
                 width: 200,
                 height: 50,
                 child:MaterialButtonWidget(
                   borderColor: Colors.red,
                   color: Colors.redAccent.shade400,
                   hoverColor: Colors.black,
                   
                   
                   child:const Text("Hire me",style: TextStyle(color: Colors.white),),onPressed: (){},)
                ),
      const SizedBox(height: 20,),

                   SizedBox(
                     width: 200,
                     height: 50,
                     child:MaterialButtonWidget(
                       
                       
                       borderColor: Colors.white,
                       color: Colors.black,
                       hoverColor: Colors.black45,
                       child:SizedBox(
      
                       width: 100,
                       child: Row(
                         
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: const [
                     
                     FaIcon(FontAwesomeIcons.github,color: Colors.white,),
      
                     SizedBox(width: 10,),
                     
                     Text("Github",style: TextStyle(color: Colors.white),),
                     
                     
                     
                       ]),
                     ),onPressed: (){},)
                   ),
             ],
           ),
        ],
      ),

      largeScreen: Container(
        margin: EdgeInsets.only(left: screenWidth*0.1),
        child: Column(
         
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
          
     
          children: [
        
         
            RichText(
              text: TextSpan(
            text: "I'M ",
            style: TextStyles.heading4?.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: "${myName.toUpperCase()} ",
                  style: TextStyles.heading4
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 10),
            child: Text(designation.toUpperCase(),style: TextStyles.heading6?.copyWith(color: Colors.red),),
          ),
            SizedBox(
              width: screenWidth*0.4,
              child: Text(
                homeDesctiption,
                style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                textAlign:
                
              
                 TextAlign.start,
              ),
            ),

            const SizedBox(height: 20,),
             Row(
            
               children: [
          
          
                  SizedBox(
                   width: 200,
                   height: 50,
                   child:MaterialButtonWidget(
                     borderColor: Colors.red,
                     color: Colors.redAccent.shade400,
                     hoverColor: Colors.black,
                     
                     
                     child:const Text("Hire me",style: TextStyle(color: Colors.white),),onPressed: (){},)
                  ),
        const SizedBox(width: 10,),

                     SizedBox(
                       width: 200,
                       height: 50,
                       child:MaterialButtonWidget(
                         
                         
                         borderColor: Colors.white,
                         color: Colors.black,
                         hoverColor: Colors.black45,
                         child:SizedBox(
        
                         width: 100,
                         child: Row(
                           
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: const [
                       
                       FaIcon(FontAwesomeIcons.github,color: Colors.white,),
        
                       SizedBox(width: 10,),
                       
                       Text("Github",style: TextStyle(color: Colors.white),),
                       
                       
                       
                         ]),
                       ),onPressed: (){},)
                     ),
               ],
             ),
          ],
        ),
      ),
    );



  }

}
  /*

 class HomePageContents extends StatelessWidget {
  const HomePageContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<HomeController>().getVisibility();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => AnimatedOpacity(
                curve: Curves.easeInCirc,
                opacity: Get.find<HomeController>().visible,
                duration: const Duration(milliseconds: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: RichText(
                      text: TextSpan(
                        text: "Hi, I'm ",
                        style: TextStyles.heading4
                            ?.copyWith(fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Farman Ullah',
                              style: TextStyles.heading4?.copyWith(
                                  fontWeight: FontWeight.bold, color: Colors.cyan)),
                        ],
                      ),
                    )),
                    FittedBox(
                      child: Text(
                        "Senior Flutter Developer ",


                        style: 
                        
                        ResponsiveWrapper.of(context).isSmallerThan(TABLET)?
                        
                        TextStyles.heading4?.copyWith(
                            color: Colors.cyan, fontWeight: FontWeight.bold):
                             TextStyles.heading2?.copyWith(
                            color: Colors.cyan, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
  
  children: <Widget>[
     Flexible(
       child: FittedBox(
             child: Text(
              'I BUILD TOP QUALITY ',
              style: TextStyles.heading4?.copyWith(color: Colors.white
              ,fontWeight: FontWeight.bold)
    ),
       ),
     ),
    DefaultTextStyle(
       style: TextStyles.heading4!.copyWith(color: Colors.cyan
      ,fontWeight: FontWeight.bold),
      child: AnimatedTextKit(
            totalRepeatCount: 3,
            animatedTexts: [
              RotateAnimatedText('ANDROID'),
              RotateAnimatedText('iOS'),
              RotateAnimatedText('& WEB APPS'),
            ],
            onTap: () {
              print("Tap Event");
            },
      ),
    ),
  ],
),
                    ),
                 
               Container(
                 width: 100,
                 height: 50,
                 color: Colors.cyan.shade900,
                 
                 child: TextButton(onPressed: (){

                   Get.find<HomeController>().currentIdex=3;
                 }, child: Text("Hire me"
                 
                 ,style: TextStyles.subtitle1?.copyWith(color: Colors.white),
                 
                 )))
    
    
                  ],
                ),
              ),
            ),
SizedBox(height: 40,),
            
Padding(
  padding: const EdgeInsets.only(left:20.0),
  child: 
  
    Row(
  
    crossAxisAlignment: CrossAxisAlignment.end,
  
    children: [
  
  
  
  _addIcons("https://www.fiverr.com/s2/74e6e04f96",Image.asset('assets/fiverr-min.png',width: 65,) ),
  
      SizedBox(width: 30,),
  
  _addIcons("https://github.com/farmanullahQAU",FaIcon(FontAwesomeIcons.github,size: 50,color: Colors.white) ),
  
  
  
  
  
  
  
      SizedBox(width: 30,),
  
      _addIcons("https://www.linkedin.com/in/farman4", FaIcon(FontAwesomeIcons.linkedin,size: 50,color: Colors.white,))
  
  
  
  
  
  
  
  ],),

),


        
        
        
        
          ],
        ),
      ),
    );
  }
Widget _addIcons(String url, Widget icon){

  return TextButton
  
  
  (
    onPressed: () async {


          if (await canLaunch(url)) {
                await launch(url, forceWebView: true);
              } else {
                throw 'Could not launch $url';
              }
    },
    child: icon);

}

}


  
*/

class Projects extends StatelessWidget {
final List<String> flutterSkills=[
"flutter mobile android/iOS",
"flutter web",
"Responsive ui"

];


   Projects({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  final screenWidth=Get.width;
    return ResponsiveWidget(
      largeScreen: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            
            
            


            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(Image.asset(firebaseLogoPath,),"FLUTTER","dsdsdsdsddddddddddddddddddddddddsdsds",_buildFlutterSkills()),),
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(FlutterLogo(),"FIREBASE","doododoododddddddddddddddddddddddddddddddddddddddddddddddddd",_buildFlutterSkills())),
          
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(Image.asset("assets/getx_logo.png",),"GETX","dsdferrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrerereeeeeeeeeeeee",_buildFlutterSkills())),
          
          
                  ],
                ),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(Image.asset(firebaseLogoPath,),"FLUTTER","dsdsdsdsddddddddddddddddddddddddsdsds",_buildFlutterSkills()),),
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(FlutterLogo(),"FIREBASE","doododoododddddddddddddddddddddddddddddddddddddddddddddddddd",_buildFlutterSkills())),
          
                  Flexible(
                    flex: 1,
                    child: _addSkillCard(Image.asset("assets/getx_logo.png",),"GETX","dsdferrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrerereeeeeeeeeeeee",_buildFlutterSkills())),
          
          
                  ],
                ),

              ],
            ),

decoration: BoxDecoration(



                 gradient: LinearGradient(colors: [Colors.red.shade400,Color.fromARGB(255, 151, 6, 4)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,





)


),          ),
      
      
      
      addLeftSideTriangles(),


     addLeftCornerTriangles(),

  



    //        Transform.rotate(
     
     
    //  angle: 40,
    //  child: Container(
    //    height: 200.0,
    //    color: Colors.white.withOpacity(0.2),
    //  ),
    //  ),
     
        ],
      ),
    );

    
  }

  Stack addLeftSideTriangles() {
    return Stack(
      children: [

 Container(
   padding: EdgeInsets.only(top: 20,left: 0),
   
          child: CustomPaint(size: Size(130,130), painter: DrawTriangle(Colors.black))),
 
        CustomPaint(size: Size(120, 120), painter: DrawTriangle(Colors.red)),
      ],
    );
  }

  Positioned addLeftCornerTriangles() {
    return Positioned(
     right: 0,
     bottom: 0,
     child: Stack(
       alignment: Alignment.bottomRight,
        children: [
      Padding(
        padding: const EdgeInsets.only(bottom:20.0),
        child: Transform.rotate(
          angle: 53.4,
          child: Container(
               
                child: CustomPaint(size: Size(130,130), painter: DrawTriangle(Colors.black))),
        ),
      ),
          Transform.rotate(
            
            angle: 53.4,
            child: CustomPaint(size: Size(120, 120), painter: DrawTriangle(Colors.red))),
   
      
        ],
      ),
   );
  }

  

  Widget _addSkillCard(Widget icon, String title, String description,[Widget? skills]){
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
            SizedBox(height: 20,),

        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 60,
          child: SizedBox(
            
            width: 100,
            height: 100,
            child: icon),
        ),

          SizedBox(height: 20,),
Text(title,style: TextStyles.skillsTitleTextStyle),
          SizedBox(height: 20,),


Container(child: skills,)



  ],
);

  }

  Widget _buildFlutterSkills(){

    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: flutterSkills.map((skill) => Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Text(skill,style: TextStyles.skillsDescTextStyle,),
            ),

            FaIcon(FontAwesomeIcons.checkCircle,size: 25,color: Colors.white,)
          ],
        ),
      )).toList(),);

  }

}
class DrawTriangle extends CustomPainter {
Color color;
  DrawTriangle(this.color);
  @
override

  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, Paint()..color =color);
  }
  @
override

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    value: 0.1,
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          TextButton(onPressed: (){

_controller.addStatusListener((status) {

_controller.dispose();

 });

          }, child: Text("kkk")),
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: FlutterLogo(size: 150.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}