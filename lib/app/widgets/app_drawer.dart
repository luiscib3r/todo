import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/gen/assets.gen.dart';
import 'package:todo/l10n/l10n.dart';
import 'package:todo/settings/settings.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Drawer(
        child: Stack(
          children: [
            ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Assets.images.logo.image(
                            width: 75,
                            height: 75,
                          ),
                        ),
                        Text(
                          l10n.appName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppDrawerTile(
                  title: l10n.accounts,
                  icon: Icons.account_circle_outlined,
                  onTap: () {},
                ),
                AppDrawerTile(
                  title: l10n.settings,
                  icon: Icons.settings_outlined,
                  onTap: () {
                    SettingsPage.open(context);
                  },
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topRight,
              child: ThemeIconButton(),
            ),
          ],
        ),
      ),
    );
  }
}
