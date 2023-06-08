import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //윌 팝 스코프 뒤로가기 버튼을 누르면 앱을 종료 시키는 기능.
    //onwillpop이 true이면 종료시킨다.
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: ImageData(iconsPath.homeOff),
                  label: 'home'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.searchOff),
                label: 'search'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.uploadIcon),
                label: 'upload'
              ),
              BottomNavigationBarItem(
                icon: ImageData(iconsPath.activeOff),
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
