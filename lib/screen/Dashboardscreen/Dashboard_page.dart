import 'package:airtelapp_clone/export.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int colorcodeindex=0;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GetBuilder<DashboardController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            title: Container(
              child: Image(
                image: redapplogo,
                width: 100,
                height: 50,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bell,
                  size: 25,
                  color: grayColor,
                ),
              ),
            ],
          ),
          bottomNavigationBar:controller.buildbottomBar(context),
          body: controller.buidpages(),
        ),
      );
    });
  }
}
