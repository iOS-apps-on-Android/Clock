import "package:clock/pages/alarm.dart";
import "package:clock/pages/stopwatch.dart";
import "package:clock/pages/timer.dart";
import "package:clock/pages/world_clock.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: CupertinoColors.darkBackgroundGray,
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: TabScaffold(),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeOrange,
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          primaryColor: CupertinoColors.white,
          textStyle: TextStyle(
            fontFamily: 'CupertinoSystemText',
          ),
        ),
      ),
    );
  }
}

class TabScaffold extends StatefulWidget {
  const TabScaffold({super.key});

  @override
  State<TabScaffold> createState() => _TabScaffoldState();
}

class _TabScaffoldState extends State<TabScaffold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 54,
        backgroundColor: CupertinoColors.darkBackgroundGray,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(CupertinoIcons.globe),
            ),
            label: "World Clock",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(CupertinoIcons.alarm_fill),
            ),
            label: "Alarm",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(CupertinoIcons.stopwatch_fill),
            ),
            label: "Stopwatch",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Icon(CupertinoIcons.timer),
            ),
            label: "Timer",
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return <Widget>[const WorldClockPage(), const AlarmPage(), const StopwatchPage(), const TimerPage()][index];
          },
        );
      },
    );
  }
}
