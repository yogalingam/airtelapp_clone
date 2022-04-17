import 'package:airtelapp_clone/export.dart';

class Modem extends StatefulWidget {
  const Modem({Key? key}) : super(key: key);

  @override
  State<Modem> createState() => _ModemState();
}

class _ModemState extends State<Modem> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ModemController>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GetBuilder<ModemController>(builder: (controller) {
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

                          controller.builddatalist(context),  sizedbox,  sizedbox,
                          controller.builduseddevice(context),  sizedbox,  sizedbox,
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
