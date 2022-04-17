import 'package:airtelapp_clone/export.dart';

final Color appBackgroundColor = Color(0xFFf2f2f2);
final Color topBarBackgroundColor = Color(0xFFFFD974);
final Color selectedTabBackgroundColor = Color(0xFFFFC442);
final Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
final Color subTitleTextColor = Color(0xFF9F988F);
final Color blackColor = Color(0xDD000000);
final Color whiteColor = Color(0xFFFFFFFF);
// final Color PinkColor = Color(0xFFC51162);
final Color PinkColor = Color(0xFFd43640);
final Color greencolor = Color(0xFF00E676);
final Color litegreencolor = Color(0xFF009688);
final Color litegreencolor1 = Color(0xFF26A69A);
final Color origncolor = Color(0xFFD6001B);
final Color titleblue = Color(0xFF01579b);
final Color grayColor =Color(0xFF999999);
final mainAxisAlignmentcenter = MainAxisAlignment.center;
final mainAxisAlignmentstart = MainAxisAlignment.start;
final mainAxisAlignmentend = MainAxisAlignment.end;
final mainAxisAlignmentspaceBetween = MainAxisAlignment.spaceBetween;
final mainAxisAlignmentspaceAround = MainAxisAlignment.spaceAround;
final mainAxisAlignmentspaceEvenly = MainAxisAlignment.spaceEvenly;

final crossAxisAlignmentstart = CrossAxisAlignment.start;
final crossAxisAlignmentcenter = CrossAxisAlignment.center;
final crossAxisAlignmentend = CrossAxisAlignment.end;

final sizedbox = SizedBox(
  height: 10,
  width: 10,
);
final backgrounddec =BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFE9F1F6),
      Color(0xFFE9F1F6),
      Color(0xFFE9F1F6),
      Color(0xFFE9F1F6),
    ],
    stops: [0.1, 0.4, 0.7, 0.9],
  ),
);
final applogo = AssetImage("assets/applogo.png");
final redapplogo = AssetImage("assets/applogored.png");
final english = AssetImage("assets/english.png");
final telugu = AssetImage("assets/telugu.png");
final tamil = AssetImage("assets/tamil.png");
final offer = AssetImage("assets/offer.png");
final padding = EdgeInsets.all(10);

final titletext = TextStyle(
  fontWeight: FontWeight.bold,
  color: whiteColor,
  fontFamily: "Poppins",
);
final subtitle = TextStyle(
  fontWeight: FontWeight.normal,
  color: whiteColor,
  fontFamily: "Poppins",
);
final btndecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color:origncolor ,
  border: Border.all(
    color: whiteColor,
    width: 2.0,
  ),
);
