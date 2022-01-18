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
          SliverToBoxAdapter(
            child: Row(children: <Widget>[
              Flexible(
                  child: CupertinoTextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
              )),
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
          ),
        ],
      ),
    );
  }
}
