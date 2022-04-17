import 'package:airtelapp_clone/export.dart';

class AppPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Onboard());
    Get.put(OnboardController());
    Get.lazyPut<OnboardController>(() => OnboardController());
    Get.put(Login());
    Get.put(LoginController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.put(Dashboard());
    Get.put(DashboardController());
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.put(Home());
    Get.put(HomeController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.put(Rechange());
    Get.put(RechangeController());
    Get.lazyPut<RechangeController>(() => RechangeController());
    Get.put(Modem());
    Get.put(ModemController());
    Get.lazyPut<ModemController>(() => ModemController());
    Get.put(profile());
    Get.put(profileController());
    Get.lazyPut<profileController>(() => profileController());
  }
}