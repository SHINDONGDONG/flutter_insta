import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta/controller/bottom_nav_controller.dart';
import 'package:flutter_insta/src/components/image_data.dart';
import 'package:get/get.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //윌 팝 스코프 뒤로가기 버튼을 누르면 앱을 종료 시키는 기능.
    //onwillpop이 true이면 종료시킨다.
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            //Bottom 을 고정시킨다.
            type: BottomNavigationBarType.fixed,
            //아래의 두개를 모두 false로하면 label을 숨길 수 있다.
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: (value) {

            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageData(iconsPath.homeOff),
                  activeIcon: ImageData(iconsPath.homeOn),
                  label: 'home'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.searchOff),
                  activeIcon: ImageData(iconsPath.searchOn),
                label: 'search'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.uploadIcon),
                label: 'upload'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.activeOff),
                  activeIcon: ImageData(iconsPath.activeOn),
                label: 'active'
              ),
              BottomNavigationBarItem(
                label: 'home',
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
