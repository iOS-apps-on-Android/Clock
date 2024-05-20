import 'package:flutter/cupertino.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: <Widget>[
                  const AspectRatio(
                    aspectRatio: 1,
                    child: Placeholder(),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CupertinoButton(
                          pressedOpacity: 0.8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(51, 51, 51, 1),
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(51, 51, 51, 1),
                                  border: Border.all(color: CupertinoColors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const SizedBox(
                                  height: 72,
                                  width: 72,
                                  child: Center(
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(
                                        color: CupertinoColors.white,
                                      ),
                                      textScaler: TextScaler.linear(1.2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        CupertinoButton(
                          pressedOpacity: 0.8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(10, 42, 18, 1),
                              borderRadius: BorderRadius.circular(999),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(10, 42, 18, 1),
                                  border: Border.all(color: CupertinoColors.black, width: 2.0),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: const SizedBox(
                                  height: 72,
                                  width: 72,
                                  child: Center(
                                    child: Text(
                                      "Start",
                                      style: TextStyle(
                                        color: CupertinoColors.activeGreen,
                                      ),
                                      textScaler: TextScaler.linear(1.2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: CupertinoColors.separator, width: 1.0),
                  ),
                ),
                child: SingleChildScrollView(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      {
                        "lap": 1,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 2,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 3,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 4,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 5,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 6,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 7,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 8,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 9,
                        "time": "00:00.69",
                      },
                      {
                        "lap": 10,
                        "time": "00:00.69",
                      },
                    ].map((e) {
                      return DecoratedBox(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: CupertinoColors.darkBackgroundGray,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Lap ${e["lap"]}",
                                textScaler: const TextScaler.linear(1.25),
                              ),
                              Text(
                                e["time"].toString(),
                                textScaler: const TextScaler.linear(1.25),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
