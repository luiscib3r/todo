import 'package:flutter/material.dart';

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue,
      ),
      isScrollable: true,
      labelPadding: const EdgeInsets.only(top: 0.5, bottom: 0.5),
      unselectedLabelColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.blue,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabs: const [
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.phone_android_rounded,
            size: 38,
          ),
        ),
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.data_usage_rounded,
            size: 38,
          ),
        ),
        SizedBox(
          height: 64,
          width: 68,
          child: Icon(
            Icons.wifi,
            size: 38,
          ),
        ),
      ],
    );
  }
}
