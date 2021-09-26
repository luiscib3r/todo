import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.faIcon,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final IconData? faIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: icon != null
                  ? Icon(
                      icon,
                      color: Colors.blue,
                    )
                  : faIcon != null
                      ? FaIcon(
                          faIcon,
                          color: Colors.blue,
                        )
                      : const SizedBox.shrink(),
            ),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
