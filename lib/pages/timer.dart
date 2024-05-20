import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool timerRunning = false;

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
                  AspectRatio(
                    aspectRatio: 1,
                    child: Builder(
                      builder: (BuildContext context) {
                        if (timerRunning) {
                          return Center(
                            child: CircularCountDownTimer(
                              width: MediaQuery.of(context).size.width - 72,
                              height: MediaQuery.of(context).size.width - 72,
                              duration: 5,
                              fillColor: Colors.transparent,
                              ringColor: CupertinoColors.activeOrange,
                              strokeWidth: 8,
                              strokeCap: StrokeCap.round,
                              isReverseAnimation: true,
                              isReverse: true,
                            ),
                          );
                        } else {
                          return Center(
                            child: CupertinoTimerPicker(
                              onTimerDurationChanged: (value) {},
                            ),
                          );
                        }
                      },
                    ),
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
                                      "Cancel",
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
            child: CupertinoListSection.insetGrouped(
              children: const <CupertinoListTile>[
                CupertinoListTile.notched(
                  title: Text(
                    "Timer",
                    textScaler: TextScaler.linear(1.25),
                  ),
                  additionalInfo: Text(
                    "Radar",
                    textScaler: TextScaler.linear(1.25),
                  ),
                  trailing: CupertinoListTileChevron(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
