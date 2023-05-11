import 'package:flutter/cupertino.dart';
import 'package:ios_app/appstore/view/appscreen.dart';
import 'package:ios_app/appstore/view/gameScreen.dart';

class DASHScreen extends StatefulWidget {
  const DASHScreen({Key? key}) : super(key: key);

  @override
  State<DASHScreen> createState() => _DASHScreenState();
}

class _DASHScreenState extends State<DASHScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(currentIndex: 2, items: [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.today_fill), label: "Today"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.rocket_fill), label: "Games"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.layers_alt_fill), label: "Apps"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cloud_upload_fill), label: "Updates"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search), label: "Search"),
      ]),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return index == 1
                ? IOSgameScreen()
                : index == 2
                    ? IOSappScreen()
                    :  Center();
          },
        );
      },
    );
  }
}
