import 'package:flutter/cupertino.dart';

class WorldClockPage extends StatefulWidget {
  const WorldClockPage({super.key});

  @override
  State<WorldClockPage> createState() => _WorldClockState();
}

class _WorldClockState extends State<WorldClockPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        scrollBehavior: const CupertinoScrollBehavior(),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text("World Clock"),
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0.75),
            border: const Border(bottom: BorderSide(color: CupertinoColors.separator)),
            stretch: true,
            trailing: CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              alignment: Alignment.centerRight,
              child: const Icon(
                CupertinoIcons.add,
                color: CupertinoColors.activeOrange,
              ),
            ),
            leading: CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              child: const Text(
                "Edit",
                style: TextStyle(
                  color: CupertinoColors.activeOrange,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.darkBackgroundGray)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.75,
                              child: Text("Today, +0HRS"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "New York",
                              textScaler: TextScaler.linear(1.5),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "9:00",
                              style: TextStyle(fontWeight: FontWeight.w200),
                              textScaler: TextScaler.linear(4),
                            ),
                            Text(
                              "AM",
                              style: TextStyle(fontWeight: FontWeight.w300, height: 2),
                              textScaler: TextScaler.linear(2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
