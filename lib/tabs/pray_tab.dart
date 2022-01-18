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
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Молитва'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: CupertinoTextField(
                  textInputAction: TextInputAction.next,
                  restorationId: 'first_name_text_field',
                  placeholder: 'Введите имя',
                  keyboardType: TextInputType.text,
                  clearButtonMode: OverlayVisibilityMode.editing,
                  autocorrect: false,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CupertinoButton(
                    child: const Icon(
                      CupertinoIcons.arrow_right_circle_fill,
                    ),
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
