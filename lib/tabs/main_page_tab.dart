import 'package:flutter/cupertino.dart';

class MainPageTab extends StatelessWidget {
  const MainPageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Главная'),
        ),
      ],
    );
  }
}
