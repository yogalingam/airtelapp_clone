import 'package:airtelapp_clone/export.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;

  Widget buildbottomBar(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return CustomNavigationBar(
      elevation: 10,
      iconSize: 20.0,
      selectedColor: origncolor,
      strokeColor: origncolor,
      unSelectedColor: grayColor,
      backgroundColor: whiteColor,
      borderRadius: Radius.zero,
      items: [
        CustomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.chartPie),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.wifi_protected_setup),
        ),
        CustomNavigationBarItem(
          icon: Icon(
            Icons.wifi,
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.userAlt,
          ),
        ),
      ],
      currentIndex: tabIndex,
      onTap: (index) {
        tabIndex = index;
        update();
      },
      isFloating: false,
    );
  }

  Widget buidpages() {
    return IndexedStack(
      index: tabIndex,
      children: [
        Home(),
        Rechange(),
        Modem(),
        profile(),
      ],
    );
  }
}
