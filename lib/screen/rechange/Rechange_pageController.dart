import 'package:airtelapp_clone/export.dart';

class RechangeController extends GetxController {
  int selectpackage=0;
  Widget buildselectdatapage(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: ToggleSwitch(
        minWidth: width,
        initialLabelIndex: 0,
        totalSwitches: 3,
        inactiveBgColor: grayColor,
        inactiveFgColor: whiteColor,
        activeBgColor: [
          origncolor,
        ],
        borderWidth: 2.0,
        borderColor: [whiteColor],
        labels: ['Trule Unlimited', 'Cricket packs', 'Smart rechage'],
        fontSize: 12,
        onToggle: (index) {
          print('switched to: $index');
          selectpackage=index!;
          //
          print('selected page: $selectpackage');
        },
      ),
    );
  }

  Widget buildpackagepage(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: truleunlimitedlist.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              // height: 150,
              width: width,
              padding: padding,
              child: Column(
                crossAxisAlignment: crossAxisAlignmentcenter,
                mainAxisAlignment: mainAxisAlignmentcenter,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentstart,
                      mainAxisAlignment: mainAxisAlignmentspaceEvenly,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "\u{20B9}\t${truleunlimitedlist[index].price}",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Unlimited calls",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "${truleunlimitedlist[index].data}\tGB",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Data",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "${truleunlimitedlist[index].validity}\tdays",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Validity",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.angleRight,
                            color: titleblue,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: subTitleTextColor,
                    thickness: 1.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      mainAxisAlignment: mainAxisAlignmentspaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: crossAxisAlignmentcenter,
                          mainAxisAlignment: mainAxisAlignmentspaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(
                                    "${truleunlimitedlist[index].imgurl}"),
                              ),
                            ),
                            sizedbox,
                            AutoSizeText(
                              "${truleunlimitedlist[index].ott}",
                              style: titletext.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                              maxFontSize: 10,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          "View details",
                          style: titletext.copyWith(
                              color: blackColor, fontWeight: FontWeight.w700),
                          maxFontSize: 10,
                          minFontSize: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildpackagepage1(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: cricketpackslist.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              // height: 150,
              width: width,
              padding: padding,
              child: Column(
                crossAxisAlignment: crossAxisAlignmentcenter,
                mainAxisAlignment: mainAxisAlignmentcenter,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentstart,
                      mainAxisAlignment: mainAxisAlignmentspaceEvenly,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "\u{20B9}\t${cricketpackslist[index].price}",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Unlimited calls",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "${cricketpackslist[index].data}\tGB",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "per\tData",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "${cricketpackslist[index].validity}\tdays",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Validity",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.angleRight,
                            color: titleblue,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: subTitleTextColor,
                    thickness: 1.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      mainAxisAlignment: mainAxisAlignmentspaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: crossAxisAlignmentcenter,
                          mainAxisAlignment: mainAxisAlignmentspaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                image: AssetImage(
                                    "${cricketpackslist[index].imgurl}"),
                              ),
                            ),
                            sizedbox,
                            AutoSizeText(
                              "${cricketpackslist[index].ott}",
                              style: titletext.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                              maxFontSize: 10,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          "View details",
                          style: titletext.copyWith(
                              color: blackColor, fontWeight: FontWeight.w700),
                          maxFontSize: 10,
                          minFontSize: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  Widget buildpackagepage2(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              // height: 150,
              width: width,
              padding: padding,
              child: Column(
                crossAxisAlignment: crossAxisAlignmentcenter,
                mainAxisAlignment: mainAxisAlignmentcenter,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentstart,
                      mainAxisAlignment: mainAxisAlignmentspaceEvenly,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "\u{20B9}\t99",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "\u{20B9}\t99",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "talktime",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: crossAxisAlignmentstart,
                              mainAxisAlignment: mainAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "28\tdays",
                                  style: titletext.copyWith(
                                    color: blackColor,
                                  ),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                                AutoSizeText(
                                  "Validity",
                                  style: titletext.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w400),
                                  maxFontSize: 12,
                                  minFontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.angleRight,
                            color: titleblue,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: subTitleTextColor,
                    thickness: 1.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      mainAxisAlignment: mainAxisAlignmentspaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: crossAxisAlignmentcenter,
                          mainAxisAlignment: mainAxisAlignmentspaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // child: Image(
                              //   image: AssetImage(
                              //       "${cricketpackslist[index].imgurl}"),
                              // ),
                            ),
                            sizedbox,
                            AutoSizeText(
                              "",
                              style: titletext.copyWith(
                                  color: blackColor,
                                  fontWeight: FontWeight.w400),
                              maxFontSize: 10,
                              minFontSize: 10,
                            ),
                          ],
                        ),
                        AutoSizeText(
                          "View details",
                          style: titletext.copyWith(
                              color: blackColor, fontWeight: FontWeight.w700),
                          maxFontSize: 10,
                          minFontSize: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
