import 'package:flutter/cupertino.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({Key? key}) : super(key: key);

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
