import 'package:airtelapp_clone/export.dart';

class Rechange extends StatefulWidget {
  const Rechange({Key? key}) : super(key: key);

  @override
  State<Rechange> createState() => _RechangeState();
}

class _RechangeState extends State<Rechange> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RechangeController>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GetBuilder<RechangeController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: backgrounddec,
                  ),
                  Container(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      child: Column(
                        mainAxisAlignment: mainAxisAlignmentcenter,
                        crossAxisAlignment: crossAxisAlignmentcenter,
                        children: <Widget>[
                          controller.buildselectdatapage(context),
                          sizedbox,
                          controller.selectpackage == 0
                              ? controller.buildpackagepage(context)
                              : controller.selectpackage == 1
                                  ? controller.buildpackagepage1(context)
                                  : controller.buildpackagepage2(context),
                          sizedbox,
                          sizedbox,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
