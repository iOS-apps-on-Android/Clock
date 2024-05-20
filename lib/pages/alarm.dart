import 'package:flutter/cupertino.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmState();
}

class _AlarmState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        scrollBehavior: const CupertinoScrollBehavior(),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text("Alarm"),
            backgroundColor: const Color.fromARGB(169, 0, 0, 0),
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
                return DecoratedBox(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: CupertinoColors.darkBackgroundGray)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
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
                            ),
                            Text("Label"),
                          ],
                        ),
                        CupertinoSwitch(value: true, onChanged: (_) {})
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
