import 'package:airtelapp_clone/export.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GetBuilder<LoginController>(builder: (controller) {
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
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFD6001B),
                          Color(0xFFD6001B),
                          Color(0xFFD6001B),
                          Color(0xFFD6001B),
                        ],
                        stops: [0.1, 0.4, 0.7, 0.9],
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 40.0,
                      ),
                      child: Column(
                        mainAxisAlignment: mainAxisAlignmentcenter,
                        crossAxisAlignment: crossAxisAlignmentcenter,
                        children: <Widget>[
                          SizedBox(
                            height: height / 20,
                          ),
                          controller.buildApplogo(context),
                          sizedbox,
                          controller.buildwelcom(context),
                          sizedbox,
                          controller.buildexpaintext(context),
                          sizedbox,
                          sizedbox,
                          sizedbox,
                          controller.buildsignupbtn(context),
                          SizedBox(
                            height: height / 30,
                          ),
                          controller.buildLoginbtn(context),
                          sizedbox,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10, child: controller.buildlanguagebtn(context)),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
