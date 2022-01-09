import 'package:farmanullah_portfolio/binder.dart';
import 'package:farmanullah_portfolio/route_names.dart';
import 'package:farmanullah_portfolio/views/home_view.dart';
import 'package:get/get.dart';

List<GetPage> pages = [
  GetPage(name: RouteNames.HOME, page: () => HomeView(), binding: Binder()),

  // GetPage(name: RouteNames.LOGIN, page: () => LoginView(), binding: Binder()),
  // GetPage(name: RouteNames.HOME, page: () => HomeView(), binding: Binder()),
  // GetPage(name: RouteNames.SIGNUP, page: () => SignUpView(), binding: Binder()),
  // GetPage(
  //     name: RouteNames.COUPONS, page: () => CouponView(), binding: Binder()),
  // GetPage(
  //     name: RouteNames.FAVORITE,
  //     page: () => FavoriteCouponsView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.CATEGORIES,
  //     page: () => CategoryView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.ABOUTCOMMUNITY,
  //     page: () => AboutComunityView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.SUBSCRIPTION,
  //     page: () => SubscriptionView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.CONTACTUS,
  //     page: () => ContactUsView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.COUPONFILTER,
  //     page: () => FilterCouponView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.COUPONDETAIL,
  //     page: () => CouponDetailsPage(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.REDEEMED,
  //     page: () => RedeemedCouponsView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.SUCCESS,
  //     page: () => CongratulationView(),
  //     binding: Binder()),
  // GetPage(
  //     name: RouteNames.CONTACTUS,
  //     page: () => ContactUsView(),
  //     binding: Binder()),
];
