import 'package:airtelapp_clone/export.dart';

class ModemController extends GetxController {
  Widget builddatalist(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Container(
        width: width,
        // height: height / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignmentstart,
          crossAxisAlignment: crossAxisAlignmentstart,
          children: [
            Container(
              width: width,
              padding: padding,
              child: Row(
                mainAxisAlignment: mainAxisAlignmentspaceBetween,
                crossAxisAlignment: crossAxisAlignmentcenter,
                children: [
                  AutoSizeText(
                    "Kalutara",
                    style: titletext.copyWith(
                      color: blackColor,
                    ),
                    maxFontSize: 12,
                    minFontSize: 12,
                  ),
                  AutoSizeText(
                    "Change tower",
                    style: titletext.copyWith(
                        color: PinkColor, fontWeight: FontWeight.normal),
                    maxFontSize: 12,
                    minFontSize: 12,
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              padding: padding,
              child: Row(
                mainAxisAlignment: mainAxisAlignmentspaceBetween,
                crossAxisAlignment: crossAxisAlignmentcenter,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: mainAxisAlignmentcenter,
                      crossAxisAlignment: crossAxisAlignmentcenter,
                      children: [
                        AutoSizeText(
                          "Last updated on 1:15 PM, Fri, Nov 1, 2019",
                          style: titletext.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400),
                          maxFontSize: 10,
                          minFontSize: 10,
                        ),
                        AutoSizeText(
                          "Updates every 60mins automatically",
                          style: titletext.copyWith(
                              color: blackColor, fontWeight: FontWeight.w400),
                          maxFontSize: 10,
                          minFontSize: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFF1CBD0)),
                    child: Icon(
                      FontAwesomeIcons.redoAlt,
                      color: origncolor,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dataaveragelist.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: dataaveragelist[index].bg,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: dataaveragelist[index].bordercolor,
                            width: 1.0,
                          )),
                      child: Row(
                        mainAxisAlignment: mainAxisAlignmentspaceBetween,
                        crossAxisAlignment: crossAxisAlignmentcenter,
                        children: [
                          Icon(
                            dataaveragelist[index].icon,
                            color: dataaveragelist[index].bordercolor,
                            size: 15,
                          ),
                          AutoSizeText(
                            "${dataaveragelist[index].title}",
                            style: titletext.copyWith(
                                color: dataaveragelist[index].bordercolor,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 10,
                            minFontSize: 10,
                          ),
                          AutoSizeText(
                            "${dataaveragelist[index].value}",
                            style: titletext.copyWith(
                                color: dataaveragelist[index].bordercolor,
                                fontWeight: FontWeight.w400),
                            maxFontSize: 10,
                            minFontSize: 10,
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
      ),
    );
  }

  Widget builduseddevice(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: Container(
        width: width,
        // height: height / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignmentstart,
          crossAxisAlignment: crossAxisAlignmentstart,
          children: [
            Container(
              width: width,
              padding: padding,
              child: AutoSizeText(
                "Connected devices",
                style: titletext.copyWith(
                  color: blackColor,
                ),
                maxFontSize: 12,
                minFontSize: 12,
              ),
            ),
            Divider(
              height: 1,
              color: subTitleTextColor,
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Listdevice.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFECEFF1)),
                        child: Icon(
                          Listdevice[index].icon,
                          color: origncolor,
                          size: 20,
                        ),
                      ),
                      title: AutoSizeText(
                        "${Listdevice[index].name}",
                        style: titletext.copyWith(
                          color: blackColor,
                        ),
                        maxFontSize: 12,
                        minFontSize: 12,
                      ),
                      subtitle: AutoSizeText(
                        "${Listdevice[index].deviceid}",
                        style: titletext.copyWith(
                            color: blackColor, fontWeight: FontWeight.w400),
                        maxFontSize: 10,
                        minFontSize: 10,
                      ),
                      trailing: AutoSizeText(
                        "Disconnect",
                        style: titletext.copyWith(
                          color: PinkColor,
                          fontWeight: FontWeight.w700,
                        ),
                        maxFontSize: 12,
                        minFontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
