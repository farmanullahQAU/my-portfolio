import 'package:farmanullah_portfolio/assets_path.dart';
import 'package:farmanullah_portfolio/constants/text_const.dart';
import 'package:farmanullah_portfolio/textstyles.dart';
import 'package:farmanullah_portfolio/views/intro_view.dart';
import 'package:farmanullah_portfolio/views/projects/projects_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../responsive/responsive_wrapper.dart';
import 'about/about_view.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {



   HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth=Get.width;
// if(controller.scrollController!=null)
//     if(controller.scrollController.position.haveDimensions)
// {
//   print("yyyyyyyy");
// }
// else print("nnnnnnnn");
    return Scaffold(

      
      floatingActionButton: _buildFab(),
      
      backgroundColor: Colors.black,
      body:
       SingleChildScrollView(

          physics: const ScrollPhysics(),
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/pic2.jpg'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: CustomScrollView(
              physics: ScrollPhysics(),
                controller: controller.scrollController,
                slivers: [

                           SliverAppBar(
                             backgroundColor: Colors.black,
                             elevation: 0.0,

                             pinned: false,
                             snap: false,
                             floating: false,
                             expandedHeight: 160.0,
                             flexibleSpace: const FlexibleSpaceBar(
                               title: Text('SliverAppBar'),
                               background: FlutterLogo(),
                             ),
                              //    backgroundColor: Colors.transparent,

                                  actions: [
                                    // Row(
                                    //   children: [
                                    //     MaterialButton(
                                    //       onPressed: (){
                                    //
                                    //
                                    //
                                    //       },
                                    //       highlightColor: Colors.white60,
                                    //       child: Column(
                                    //         children: [
                                    //
                                    //
                                    //           Text(
                                    //             'About Meee',
                                    //             style: TextStyle(
                                    //                 color: Colors.white, fontWeight: FontWeight.bold),
                                    //           ),
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     MaterialButton(
                                    //       hoverColor: Colors.grey[800],
                                    //       onPressed: (){
                                    //
                                    //         Get.to(()=>Carroussel());
                                    //       },
                                    //       child: Text(
                                    //         'Experience',
                                    //         style: TextStyle(
                                    //             color: Colors.white, fontWeight: FontWeight.bold),
                                    //       ),
                                    //     ),
                                    //
                                    //     TextButton(
                                    //       onPressed: (){
                                    //         Get.to(()=>MyStatefulWidget());
                                    //
                                    //
                                    //
                                    //       },
                                    //
                                    //       child: Text(
                                    //         'Contact Me',
                                    //         style: TextStyle(
                                    //             color: Colors.white, fontWeight: FontWeight.bold),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .15),
                                  ],
                                ),






                  ...slivers(screenWidth),
                ],
              ),
          ),

           ),
    );
  }

  List<Widget> slivers(double screenWidth) => [
        SliverToBoxAdapter(
          key:controller.homeGlobalKey ,
          child: Container(
            height: Get.height,
color: Colors.black,
            child:Column(
              children: [
                SizedBox(height: 20,),
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
SizedBox(height: 20,),
                IntroView(screenWidth: screenWidth,),
              ],
            ),
            padding: const EdgeInsets.only(top: 30),
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            //   tileMode: TileMode.mirror,
            //   colors: [
            //     Colors.red,
            //      Colors.red.withOpacity(0.9),
            //
            //     Colors.red.withOpacity(0.4),
            //   ],
            // )
            //
          //   ),


          ),
        ),
    SliverToBoxAdapter(
      child: Container(height: 500,color: Colors.blue,width: screenWidth,),
    ),


    SliverToBoxAdapter(
      child: Container(height: 500,color: Colors.green,width: screenWidth,),
    ),
         SliverToBoxAdapter(
          key: controller.aboutGlobalKey,
          child:const About()
        ),
    SliverToBoxAdapter(
      child: Container(height: 500,color: Colors.blue,width: screenWidth,),
    ),
       SliverToBoxAdapter(child: ProjectView(screenWidth: screenWidth,)),
    SliverToBoxAdapter(
      child: Container(height: 500,color: Colors.red,width: screenWidth,),

    ),
    SliverToBoxAdapter(
      child: Container(height: 500,color: Colors.orange,width: screenWidth,),
    ),


      
       
      
      
           SliverToBoxAdapter(
          child: Container(
            height: 500,
        decoration: BoxDecoration(




                 gradient: LinearGradient(
                   tileMode: TileMode.clamp,
                   
                   colors: [
                   
                   
                  Color.fromRGBO(207, 0, 15, 1),
Colors.red
,
                   
                  Color.fromARGB(228, 214, 29, 1),

                   
                   
                   
                   ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
              ]





)

),

          ),
        ),
           SliverToBoxAdapter(
          key: controller.projectGlobalKey,
          child: Projects(),
        ),

    SliverToBoxAdapter(child: Container(height: 700,width: screenWidth,color: Colors.red,),)
       
      ];





  Widget _buildFab() {
    return StreamBuilder<bool>(
      stream: controller.scrollStream.stream,
      builder: (_, AsyncSnapshot<bool> data) {

        final bool? showFab = data.hasData && data.data==true;
        return AnimatedOpacity(
          opacity:showFab!=null? showFab ? 1 : 0:0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: showFab==true
                ? controller.scrollToTop
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: Icon(Icons.arrow_upward),
          ),
        );
      },
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

// decoration: BoxDecoration(



//                  gradient: LinearGradient(colors: [
                   
                   
//                   Color.fromRGBO(207, 0, 15, 1),
                   
//                   Color.fromRGBO(207, 0, 15, 1),
//                   Color.fromRGBO(242, 38, 19, 1),


                   
                   
                   
//                    ],
//             begin: Alignment.center,
//             end: Alignment.centerRight,





// )


// ),    
color: Colors.black.withOpacity(0.5),
      ),
      
      
      
      // addLeftSideTriangles(),


    //  addLeftCornerTriangles(),

  



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

        // CircleAvatar(
        //   backgroundColor: Colors.white,
        //   radius: 60,
        //   child: SizedBox(
        //
        //     width: 100,
        //     height: 100,
        //     child: icon),
        // ),

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



   _controller.addStatusListener((AnimationStatus status) {

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



class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController? controller;
  int currentpage = 0;

  @override
  initState() {
    super.initState();
    controller = PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentpage = value;
                });
              },
              controller: controller,
              itemBuilder: (context, index) => builder(index)),
        ),
      ),
    );
  }

  builder(int index) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        double value = 1.0;
        if (controller!.position.haveDimensions) {
          value = (controller!.page! - index);
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        color: index % 2 == 0 ? Colors.blue : Colors.red,
      ),
    );
  }

}