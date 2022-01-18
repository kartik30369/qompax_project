import 'package:flutter/cupertino.dart';

class MainPageTab extends StatefulWidget {
  const MainPageTab({Key? key}) : super(key: key);

  @override
  State<MainPageTab> createState() => _MainPageTabState();
}

class _MainPageTabState extends State<MainPageTab> {
  late TextEditingController _textController;
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Введите имя');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(slivers: <Widget>[
      const CupertinoSliverNavigationBar(
        largeTitle: Text('Главная'),
      ),
      Row(children: <Widget>[
        CupertinoTextField(
          controller: _textController,
          onSubmitted: _handleSubmitted,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: CupertinoButton(
              child: const Icon(
                CupertinoIcons.arrow_right_circle_fill,
              ),
              onPressed: () {
                _textController.clear();
              }),
        )
      ]),
    ]));
  }
}
