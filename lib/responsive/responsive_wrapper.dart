// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ResponsiveWidget extends StatelessWidget {
//   final Widget? desktopScreen;
//   final Widget? tabletScreen;
//   final Widget? mobileScreen;

//   final double screenWidth;

//   const ResponsiveWidget(
//       {Key? key,  this.desktopScreen, this.tabletScreen,  this.mobileScreen,required this.screenWidth})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     if (screenWidth > 950) {
//       return desktopScreen ?? tabletScreen ?? mobileScreen!;
//     }
//     if (screenWidth > 600) {
//       return tabletScreen ?? mobileScreen ?? desktopScreen!;
//     }

//     return mobileScreen ?? tabletScreen ?? desktopScreen!;
//   }
// }



import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}