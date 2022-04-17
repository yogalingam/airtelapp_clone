import 'package:airtelapp_clone/export.dart';

List<popularpaln> Popularplanlist = [
  popularpaln(
    id: 1,
    price: 499,
    data: 5,
    vaildty: 28,
  ),
  popularpaln(
    id: 2,
    price: 799,
    data: 10,
    vaildty: 28,
  ),
  popularpaln(
    id: 3,
    price: 1199,
    data: 15,
    vaildty: 28,
  ),
  popularpaln(
    id: 4,
    price: 1499,
    data: 20,
    vaildty: 28,
  ),
  popularpaln(
    id: 5,
    price: 1799,
    data: 25,
    vaildty: 28,
  ),
  popularpaln(
    id: 6,
    price: 1999,
    data: 30,
    vaildty: 28,
  ),
  popularpaln(
    id: 7,
    price: 2299,
    data: 40,
    vaildty: 28,
  ),
  popularpaln(
    id: 8,
    price: 2499,
    data: 50,
    vaildty: 28,
  ),
];

List<monthlyplandata> monthlyplanlist = [
  monthlyplandata(
    id: 1,
    month: "1 Month",
  ),
  monthlyplandata(
    id: 2,
    month: "3 Month",
  ),
  monthlyplandata(
    id: 3,
    month: "6 Month",
  ),
  monthlyplandata(
    id: 4,
    month: "8 Month",
  ),
  monthlyplandata(
    id: 5,
    month: "12 Month",
  ),
];

List<monthlyplan> month1list = [
  monthlyplan(
    data: "10 GB",
    price: 559,
    mbs: 5,
  ),
  monthlyplan(
    data: "20 GB",
    price: 1199,
    mbs: 5,
  ),
  monthlyplan(
    data: "30 GB",
    price: 1599,
    mbs: 5,
  ),
];

List<datapackage> truleunlimitedlist = [
  datapackage(
    id: 1,
    price: 455,
    data: 6,
    validity: 84,
    imgurl: "assets/prime logo.png",
    ott: "Amazon Prime Video ME-Free Trial",
  ),
  datapackage(
    id: 2,
    price: 299,
    data: 28,
    validity: 28,
    imgurl: "assets/xstream.png",
    ott: "Xstream Mobile pack",
  ),
  datapackage(
    id: 3,
    price: 1799,
    data: 365,
    validity: 28,
    imgurl: "assets/prime logo.png",
    ott: "Amazon Prime Video ME-Free Trial",
  ),
  datapackage(
    id: 4,
    price: 148,
    data: 15,
    validity: 28,
    imgurl: "assets/xstream.png",
    ott: "Xstream Mobile pack",
  ),
];
List<datapackage> cricketpackslist = [
  datapackage(
    id: 1,
    price: 499,
    data: 2,
    validity: 28,
    imgurl: "assets/Hotstar.png",
    ott: "Disney+Hotstar mobile",
  ),
  datapackage(
    id: 2,
    price: 2999,
    data: 2,
    validity: 365,
    imgurl: "assets/Hotstar.png",
    ott: "Disney+Hotstar mobile",
  ),
  datapackage(
    id: 3,
    price: 838,
    data: 2,
    validity: 56,
    imgurl: "assets/Hotstar.png",
    ott: "Disney+Hotstar mobile",
  ),
  datapackage(
    id: 4,
    price: 599,
    data: 3,
    validity: 28,
    imgurl: "assets/Hotstar.png",
    ott: "Disney+Hotstar mobile",
  ),
  datapackage(
    id: 5,
    price: 3359,
    data: 2,
    validity: 365,
    imgurl: "assets/Hotstar.png",
    ott: "Disney+Hotstar mobile",
  ),
];

List<datapackagemodem> dataaveragelist = [
  datapackagemodem(
    id: 1,
    title: "Signal strenth",
    icon: FontAwesomeIcons.wifi,
    value: "85 %",
    bg: Color(0xB3FFFFFF),
    bordercolor: Color(0xFFDE1818),
  ),
  datapackagemodem(
    id: 2,
    title: "Ping rate",
    icon: FontAwesomeIcons.tachometer,
    value: "14 ms",
    bg: Color(0xB3FFFFFF),
    bordercolor: Color(0xFF009DFF),
  ),
  datapackagemodem(
    id: 3,
    title: "Download speed",
    icon: FontAwesomeIcons.chevronCircleDown,
    value: "210.8 mb/s",
    bg: Color(0xB3FFFFFF),
    bordercolor: Color(0xFFFFCE00),
  ),
  datapackagemodem(
    id: 4,
    title: "Upload speed",
    icon: FontAwesomeIcons.chevronCircleUp,
    value: "11.8 mb/s",
    bg: Color(0xB3FFFFFF),
    bordercolor: Color(0xFFFF00EE),
  ),
];

List<devices> Listdevice = [
  devices(
    id: 1,
    name: "iphone 6",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.mobileAlt,
  ),
  devices(
    id: 2,
    name: "window pc",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.laptop,
  ),
  devices(
    id: 3,
    name: "Mac Book",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.laptop,
  ),
  devices(
    id: 4,
    name: "vivo v20 pro",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.mobileAlt,
  ),
  devices(
    id: 5,
    name: "iWatch series 6",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.mobileAlt,
  ),
  devices(
    id: 6,
    name: "samsung Android Tv",
    deviceid: "9518 6253 1223 00XC",
    icon: FontAwesomeIcons.tv,
  ),
];

List<profilecategory> profilecategorylist = [
  profilecategory(
    id: 1,
    name: "Bills & Payments",
    icon: FontAwesomeIcons.fileInvoiceDollar,
  ),
  profilecategory(
    id: 2,
    name: "Portal settings",
    icon: FontAwesomeIcons.tasksAlt,
  ),
  profilecategory(
    id: 3,
    name: "Broadband settigns",
    icon: FontAwesomeIcons.houseSignal,
  ),
  profilecategory(
    id: 4,
    name: "Support",
    icon: FontAwesomeIcons.envelopeSquare,
  ),
  profilecategory(
    id: 5,
    name: "Sigout",
    icon: FontAwesomeIcons.signOut,
  ),
];
