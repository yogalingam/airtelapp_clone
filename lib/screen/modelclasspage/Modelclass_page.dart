import 'package:airtelapp_clone/export.dart';

class popularpaln {
  final int id;
  final int data;
  final int price;
  final int vaildty;

  popularpaln({
    required this.id,
    required this.data,
    required this.price,
    required this.vaildty,
  });
}

class monthlyplan {
  final int price;
  final String data;
  final int mbs;

  monthlyplan({
    required this.price,
    required this.data,
    required this.mbs,
  });
}

class monthlyplandata {
  final int id;
  final String month;

  monthlyplandata({
    required this.id,
    required this.month,
  });
}

class datapackage {
  final int id;
  final int price;
  final int data;
  final int validity;
  final String imgurl;
  final String ott;

  datapackage({
    required this.id,
    required this.price,
    required this.data,
    required this.validity,
    required this.imgurl,
    required this.ott,
  });
}

class datapackagemodem {
  final int id;
  final IconData icon;
  final String title;
  final String value;
  final Color bg;
  final Color bordercolor;

  datapackagemodem({
    required this.id,
    required this.icon,
    required this.title,
    required this.value,  required this.bg,
    required this.bordercolor,
  });
}

class devices{
  final int id;
  final String name;
  final String deviceid;
  final IconData icon;
  devices({
    required this.id,
    required this.icon,
    required this.name,
    required this.deviceid,
  });
}

class profilecategory{
  final int id;
  final IconData icon;
  final String  name;
  profilecategory({
    required this.id,
    required this.icon,
    required this.name,
});
}