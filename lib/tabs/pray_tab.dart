import 'package:flutter/cupertino.dart';

class PrayTab extends StatelessWidget {
  const PrayTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        children: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Молитва'),
          ),
          CupertinoTextFormFieldRow(
            prefix: const Text('Username'),
            onSaved: (String? value) {},
            validator: (String? value) {
              return (value != null && value.contains('@'))
                  ? 'Do not use the @ char.'
                  : null;
            },
          )
        ],
      ),
    );
  }
}
