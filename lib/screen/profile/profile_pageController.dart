import 'package:airtelapp_clone/export.dart';

class profileController extends GetxController {
  Widget buildprofile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      child: Container(
        width: width,
        // height: 50,
        child: Column(
          mainAxisAlignment: mainAxisAlignmentcenter,
          crossAxisAlignment: crossAxisAlignmentcenter,
          children: [
            ListTile(
              title: AutoSizeText(
                "Subscriber ID",
                style: titletext.copyWith(
                  color: subTitleTextColor,
                  fontWeight: FontWeight.normal,
                ),
                maxFontSize: 10,
                minFontSize: 10,
              ),
              subtitle: AutoSizeText(
                "1598 2364 8564 2456 159",
                style: titletext.copyWith(
                  color: blackColor,
                ),
                maxFontSize: 12,
                minFontSize: 12,
              ),
            ),
            ListTile(
              title: AutoSizeText(
                "Upcoming billing date",
                style: titletext.copyWith(
                  color: subTitleTextColor,
                  fontWeight: FontWeight.normal,
                ),
                maxFontSize: 10,
                minFontSize: 10,
              ),
              subtitle: AutoSizeText(
                "5 Nov, 2018",
                style: titletext.copyWith(
                  color: blackColor,
                ),
                maxFontSize: 12,
                minFontSize: 12,
              ),
              trailing: AutoSizeText(
                "more details\t>>",
                style: titletext.copyWith(
                  color: origncolor,
                  fontWeight: FontWeight.normal,
                ),
                maxFontSize: 12,
                minFontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profilelist(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: profilecategorylist.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFECEFF1)),
                child: Icon(
                  profilecategorylist[index].icon,
                  color: origncolor,
                  size: 20,
                ),
              ),
              title: AutoSizeText(
                "${profilecategorylist[index].name}",
                style: titletext.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.normal,
                ),
                maxFontSize: 12,
                minFontSize: 12,
              ),
              trailing: Icon(
                FontAwesomeIcons.angleRight,
                size: 20,
                color: subTitleTextColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
