import 'package:airtelapp_clone/export.dart';

class AppPage{
  static var list=[
    GetPage(
        name: AppRoutes.Onboard,
        page: ()=>Onboard(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.Login,
        page: ()=>Login(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.Dashboard,
        page: ()=>Dashboard(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.Home,
        page: ()=>Home(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.Rechange,
        page: ()=>Rechange(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.Modem,
        page: ()=>Modem(),
      binding:AppPageBinding(),
    ),GetPage(
        name: AppRoutes.profile,
        page: ()=>profile(),
      binding:AppPageBinding(),
    ),
  ];
}