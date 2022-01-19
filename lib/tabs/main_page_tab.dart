import 'package:flutter/cupertino.dart';

class MainPageTab extends StatefulWidget {
  const MainPageTab({Key? key}) : super(key: key);

  @override
  State<MainPageTab> createState() => _MainPageTabState();
}

class _MainPageTabState extends State<MainPageTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Главная'),
          ),
          SliverToBoxAdapter(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Записаться на приём'),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: CupertinoButton.filled(
                      onPressed: () {},
                      child: const Text('Записаться на молебен'),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
