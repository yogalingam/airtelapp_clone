import 'package:airtelapp_clone/export.dart';

class HomeController extends GetxController {
  Widget buildplan(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignmentstart,
        mainAxisAlignment: mainAxisAlignmentcenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Container(
              child: AutoSizeText(
                "Popular plans",
                style: titletext.copyWith(
                  color: blackColor,
                ),
                minFontSize: 18,
                maxFontSize: 18,
              ),
            ),
          ),
          Container(
            height: 170,
            width: width,
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Popularplanlist.length,
              reverse: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 3,
                  child: Container(
                    height: 150,
                    width: 240,
                    child: Column(
                      mainAxisAlignment: mainAxisAlignmentcenter,
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      children: [
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                                text: "${Popularplanlist[index].data}",
                                style: titletext.copyWith(
                                  color: Color(0xFF009DFF),
                                  fontSize: 20,
                                )),
                            TextSpan(
                                text: "\tper day",
                                style: subtitle.copyWith(
                                  color: Color(0xFF009DFF),
                                  fontSize: 20,
                                )),
                          ],
                        )),
                        sizedbox,
                        Container(
                          child: Row(
                            mainAxisAlignment: mainAxisAlignmentcenter,
                            crossAxisAlignment: crossAxisAlignmentcenter,
                            children: [
                              AutoSizeText(
                                "\u{20B9}\t${Popularplanlist[index].price}",
                                maxFontSize: 18,
                                minFontSize: 18,
                                style: titletext.copyWith(
                                  color: Color(0xFF666666),
                                ),
                              ),
                              sizedbox,
                              AutoSizeText(
                                "Validty:\t${Popularplanlist[index].vaildty}\tDays",
                                maxFontSize: 14,
                                minFontSize: 14,
                                style: subtitle.copyWith(
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: grayColor,
                        ),
                        sizedbox,
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: width,
                            child: Row(
                              mainAxisAlignment: mainAxisAlignmentend,
                              crossAxisAlignment: crossAxisAlignmentcenter,
                              children: [
                                AutoSizeText(
                                  "view detail",
                                  maxFontSize: 18,
                                  minFontSize: 18,
                                  style: subtitle.copyWith(
                                    color: origncolor,
                                  ),
                                ),
                                sizedbox,
                                Icon(
                                  FontAwesomeIcons.anglesRight,
                                  size: 20,
                                  color: origncolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOffer(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        // height: 100,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: padding,
        child: Row(
          crossAxisAlignment: crossAxisAlignmentcenter,
          mainAxisAlignment: mainAxisAlignmentspaceEvenly,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: whiteColor,
              backgroundImage: offer,
            ),
            sizedbox,
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: mainAxisAlignmentcenter,
                  crossAxisAlignment: crossAxisAlignmentstart,
                  children: [
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "New Offers",
                            style: titletext.copyWith(
                              color: blackColor,
                              fontSize: 16,
                            )),
                        TextSpan(
                            text: "\tOnly for you, avail today",
                            style: subtitle.copyWith(
                              color: subTitleTextColor,
                              fontSize: 14,
                            )),
                      ],
                    )),
                    sizedbox,
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "02 Hrs",
                            style: titletext.copyWith(
                              color: origncolor,
                              fontSize: 20,
                            )),
                        TextSpan(
                            text: "\t30 Min",
                            style: titletext.copyWith(
                              color: origncolor,
                              fontSize: 20,
                            )),
                        TextSpan(
                            text: "\t54 Sec",
                            style: titletext.copyWith(
                              color: origncolor,
                              fontSize: 20,
                            )),
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  int selectedmonth =0;

  Widget buildmonthlyPrice(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      color: whiteColor,
      padding: padding,
      child: Column(
        crossAxisAlignment: crossAxisAlignmentcenter,
        mainAxisAlignment: mainAxisAlignmentcenter,
        children: [
          Container(
            width: width,
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: monthlyplanlist.length,
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () {
                    selectedmonth =index;
                    update();
                  },
                  child: AutoSizeText(
                    "${monthlyplanlist[index].month}",
                    style: subtitle.copyWith(
                      color:selectedmonth==index?origncolor: grayColor,
                      fontWeight: FontWeight.w600,
                    ),
                    maxFontSize: 14,
                    minFontSize: 14,
                  ),
                );
              },
            ),
          ),
          Container(
              width: width,
              child: Column(
                children: List.generate(
                  month1list.length,
                  (index) => ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      color: Color(0xFFF7F6FB),
                      child: Center(
                          child: AutoSizeText(
                        "\t\t${month1list[index].mbs}\nMB/s",
                        style: subtitle.copyWith(
                          color: Color(0xFF009DFF),
                          fontWeight: FontWeight.w600,
                        ),
                        maxFontSize: 14,
                        minFontSize: 14,
                      )),
                    ),
                    title: AutoSizeText(
                      "${month1list[index].data}",
                      style: titletext.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                      maxFontSize: 14,
                      minFontSize: 14,
                    ),
                    subtitle: AutoSizeText(
                      "\u{20B9}${month1list[index].price}",
                      style: titletext.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                      maxFontSize: 14,
                      minFontSize: 14,
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.angleRight,
                      size: 25,
                      color: origncolor,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget buildnotify(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 40,
      color: Color(0xFF92D9AD),
      child: Center(
        child: AutoSizeText("Your internet speed is Good now !",
          style: titletext.copyWith(
            color: blackColor,
            fontWeight: FontWeight.w600,
          ),
          maxFontSize: 14,
          minFontSize: 14,
        ),
      ),
    );
  }

  List<ChartData> data = [
    ChartData('used', 35),
    ChartData('remaining data', 28),
      ];
  Widget buildusage(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: width,
        // height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignmentcenter,
          crossAxisAlignment: crossAxisAlignmentcenter,
          children: [
            Container(
              width: width,
              height: 40,
padding: padding,
              child: AutoSizeText("Data Usage",
                style: titletext.copyWith(
                  color: blackColor,
                ),
                maxFontSize: 14,
                minFontSize: 14,
              ),
            ),
            SfCircularChart(

                palette: <Color>[origncolor, subTitleTextColor,],
                series: <CircularSeries<ChartData, String>>[

                  PieSeries<ChartData, String>(

                    dataSource: data,

                    animationDuration: 4500,
                    animationDelay: 2000,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                  )
                ]
            ),
            sizedbox, sizedbox,
            Container(
              width: width,
              height: 40,

              child: Center(
                child: AutoSizeText("Renews in 4 Hrs",
                  style: titletext.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                  ),
                  maxFontSize: 14,
                  minFontSize: 14,
                ),
              ),
            ),
            Container(
              width: width,
              height: 40,

              child: Center(
                child: AutoSizeText("Tap to view detailed usage details >>",
                  style: titletext.copyWith(
                    color: PinkColor,
                    fontWeight: FontWeight.w600,
                  ),
                  maxFontSize: 14,
                  minFontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}