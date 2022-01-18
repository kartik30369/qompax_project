import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'tabs/account_tab.dart';
import 'tabs/main_page_tab.dart';
import 'tabs/pray_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.hand_raised),
                label: 'Молитва',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                label: 'Аккаунт',
              ),
            ],
          ),
          tabBuilder: (context, index) {
            late final CupertinoTabView returnValue;
            switch (index) {
              case 0:
                returnValue = CupertinoTabView(builder: (context) {
                  return const MainPageTab();
                });
                break;
              case 1:
                returnValue = CupertinoTabView(builder: (context) {
                  return const PrayTab();
                });
                break;
              case 2:
                returnValue = CupertinoTabView(builder: (context) {
                  return const AccountTab();
                });
                break;
            }
            return returnValue;
          },
        ));
  }
}
