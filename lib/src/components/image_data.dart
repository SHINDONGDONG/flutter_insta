import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ImageData extends StatelessWidget {
  //icon 패쓰를 스트링으로받아준다.
  String icon;
  final double? width;

  ImageData(
      //position
    this.icon, {
    Key? key,
        //딕셔너리
    this.width = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(icon, width: width!/Get.mediaQuery.devicePixelRatio);
    //MediaQuery.of(context).devicePixelRatio
    //devicePixcelRatio를 해야 기기별 width를 잘 만질수있따
  }
}

//iconsPath를 static으로 미리 지정해놓으면 실수할 일이없다.
class iconsPath{
  static String get homeOff => 'lib/assets/images/bottom_nav_home_off_icon.jpg';
  static String get homeOn => 'lib/assets/images/bottom_nav_home_on_icon.jpg';
  static String get searchOff => 'lib/assets/images/bottom_nav_search_off_icon.jpg';
  static String get searchOn => 'lib/assets/images/bottom_nav_search_on_icon.jpg';
  static String get uploadIcon => 'lib/assets/images/bottom_nav_upload_icon.jpg';
  static String get activeOff => 'lib/assets/images/bottom_nav_active_off_icon.jpg';
  static String get activeOn => 'lib/assets/images/bottom_nav_active_on_icon.jpg';
}