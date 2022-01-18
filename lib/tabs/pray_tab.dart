import 'package:flutter/cupertino.dart';

class PrayTab extends StatelessWidget {
  const PrayTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Аккаунт'),
          ),
        ],
      ),
    );
  }
}
