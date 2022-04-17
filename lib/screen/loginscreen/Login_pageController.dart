import 'package:airtelapp_clone/export.dart';

class LoginController extends GetxController {
  Widget buildApplogo(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: applogo,
      )),
    );
  }

  Widget buildwelcom(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: AutoSizeText(
        "Welcome",
        textAlign: TextAlign.center,
        style: titletext,
        maxFontSize: 24,
        minFontSize: 24,
      ),
    );
  }

  Widget buildexpaintext(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: AutoSizeText(
        "Enjoy the worlds fastest and best network",
        textAlign: TextAlign.center,
        style: subtitle,
        maxFontSize: 12,
        minFontSize: 12,
      ),
    );
  }

  Widget buildsignupbtn(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        buildsignupbottomsheet(context);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          width: width,
          height: 40,
          decoration: btndecoration,
          child: Center(
            child: AutoSizeText(
              "Signup",
              style: titletext,
              maxFontSize: 18,
              minFontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginbtn(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        // Get.bottomSheet();
        buildloginbottomsheet(context);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          width: width,
          height: 40,
          decoration: btndecoration.copyWith(
            color: whiteColor,
          ),
          child: Center(
            child: AutoSizeText(
              "Login",
              style: titletext.copyWith(
                color: origncolor,
              ),
              maxFontSize: 18,
              minFontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildlanguagebtn(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 30,
      child: Row(
        mainAxisAlignment: mainAxisAlignmentcenter,
        crossAxisAlignment: crossAxisAlignmentcenter,
        children: [
          Container(
            width: 100,
            child: Center(
              child: AutoSizeText(
                "Language",
                style: subtitle,
                maxFontSize: 12,
                minFontSize: 12,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.bottomSheet(buildlanguagebottomsheet(context));
            },
            child: Container(
              width: 120,
              decoration: btndecoration.copyWith(
                color: Color(0xFFC9051E),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: Center(
                child: AutoSizeText(
                  "English",
                  style: titletext,
                  maxFontSize: 14,
                  minFontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildlanguagebottomsheet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: 200,
      width: width,
      decoration: btndecoration.copyWith(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: whiteColor,
      ),
      child: Column(
        children: [
          sizedbox,
          Container(
            width: width,
            child: Center(
              child: AutoSizeText(
                "Select Language",
                style: subtitle.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                ),
                maxFontSize: 14,
                minFontSize: 14,
              ),
            ),
          ),
          sizedbox,
          sizedbox,
          Container(
            width: width,
            height: 140,
            child: Row(
              mainAxisAlignment: mainAxisAlignmentspaceEvenly,
              crossAxisAlignment: crossAxisAlignmentcenter,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: crossAxisAlignmentcenter,
                    mainAxisAlignment: mainAxisAlignmentcenter,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: whiteColor,
                        backgroundImage: english,
                      ),
                      sizedbox,
                      Container(
                        width: 100,
                        child: Center(
                          child: AutoSizeText(
                            "English",
                            style: subtitle.copyWith(
                              color: origncolor,
                            ),
                            maxFontSize: 14,
                            minFontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: crossAxisAlignmentcenter,
                    mainAxisAlignment: mainAxisAlignmentcenter,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: whiteColor,
                        backgroundImage: telugu,
                      ),
                      sizedbox,
                      Container(
                        width: 100,
                        child: Center(
                          child: AutoSizeText(
                            "සිංහල",
                            style: subtitle.copyWith(
                              color: Color(0xFF999999),
                            ),
                            maxFontSize: 14,
                            minFontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: crossAxisAlignmentcenter,
                    mainAxisAlignment: mainAxisAlignmentcenter,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: whiteColor,
                        backgroundImage: tamil,
                      ),
                      sizedbox,
                      Container(
                        width: 100,
                        child: Center(
                          child: AutoSizeText(
                            "தமிழ்",
                            style: subtitle.copyWith(
                              color: Color(0xFF999999),
                            ),
                            maxFontSize: 14,
                            minFontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future buildloginbottomsheet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return showModalBottomSheet<dynamic>(
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )),
        backgroundColor: whiteColor,
        builder: (BuildContext context) {
          return Container(
            height: height / 1.6,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 50.0,
              ),
              child: Column(
                crossAxisAlignment: crossAxisAlignmentcenter,
                mainAxisAlignment: mainAxisAlignmentcenter,
                children: [
                  Container(
                    width: width,
                    child: AutoSizeText(
                      "Login",
                      style: titletext.copyWith(
                        color: origncolor,
                      ),
                      maxFontSize: 18,
                      minFontSize: 18,
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    child: AutoSizeText(
                      "Lets get started",
                      style: subtitle.copyWith(
                        color: Color(0xFF999999),
                      ),
                      maxFontSize: 18,
                      minFontSize: 18,
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile number",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    child: AutoSizeText(
                      "Forgot password ?",
                      textAlign: TextAlign.right,
                      style: subtitle.copyWith(
                        color: Color(0xFF333333),
                      ),
                      maxFontSize: 18,
                      minFontSize: 18,
                    ),
                  ),
                  sizedbox,
                  InkWell(
                    onTap: () {
                      Get.offAll(Dashboard());
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        width: width,
                        height: 50,
                        decoration: btndecoration.copyWith(
                          color: origncolor,
                          border: Border.all(
                            color: origncolor,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            "Login",
                            style: titletext.copyWith(
                              color: whiteColor,
                            ),
                            maxFontSize: 18,
                            minFontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future buildsignupbottomsheet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return showModalBottomSheet<dynamic>(
        useRootNavigator: true,
        isScrollControlled: true,
        context: context,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )),
        backgroundColor: whiteColor,
        builder: (BuildContext context) {
          return Container(
            height: height / 1.2,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 50.0,
              ),
              child: Column(
                crossAxisAlignment: crossAxisAlignmentcenter,
                mainAxisAlignment: mainAxisAlignmentcenter,
                children: [
                  Container(
                    width: width,
                    child: AutoSizeText(
                      "Signup",
                      style: titletext.copyWith(
                        color: origncolor,
                      ),
                      maxFontSize: 18,
                      minFontSize: 18,
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    child: AutoSizeText(
                      "Register with  airtel account number, to start your account !",
                      style: subtitle.copyWith(
                        color: Color(0xFF999999),
                      ),
                      maxFontSize: 12,
                      minFontSize: 12,
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile number",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "NIC number",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email address",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ),
                  sizedbox,
                  Container(
                    width: width,
                    height: 50,
                    decoration: btndecoration.copyWith(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFE5F1F9),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm password",
                        contentPadding: EdgeInsets.only(left: 20),
                        hintStyle: subtitle.copyWith(
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                  ), sizedbox,
                  Container(
                    width: width,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: mainAxisAlignmentstart,
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      children: [
                        Icon(
                          Icons.crop_square,
                          size: 25,
                          color: origncolor,
                        ),
                        Container(

                          child: AutoSizeText(
                            "Terms & conditions",
                            style: subtitle.copyWith(
                              color: Color(0xFF999999),
                            ),
                            maxFontSize: 12,
                            minFontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ), sizedbox,
                  InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        width: width,
                        height: 50,
                        decoration: btndecoration.copyWith(
                          color: origncolor,
                          border: Border.all(
                            color: origncolor,
                            width: 2.0,
                          ),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            "Signup",
                            style: titletext.copyWith(
                              color: whiteColor,
                            ),
                            maxFontSize: 18,
                            minFontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
