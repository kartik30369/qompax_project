import 'package:flutter/cupertino.dart';

class PrayTab extends StatefulWidget {
  const PrayTab({Key? key}) : super(key: key);

  @override
  State<PrayTab> createState() => _PrayTabState();
}

class _PrayTabState extends State<PrayTab> {
  late TextEditingController _textController;
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Молитва'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: CupertinoTextFormFieldRow(
                  prefix: Text('Введите имя:'),
                  textInputAction: TextInputAction.next,
                  placeholder: 'Введите имя',
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CupertinoButton(
                    alignment: Alignment.topRight,
                    child: const Text('Отправить'),
                    onPressed: () {
                      _textController.clear();
                    }),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
