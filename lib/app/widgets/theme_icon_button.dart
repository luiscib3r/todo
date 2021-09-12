import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';

class ThemeIconButton extends StatelessWidget {
  const ThemeIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeBloc>();

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return IconButton(
          icon: const Icon(Icons.wb_sunny),
          onPressed: () {
            if (state.themeMode == ThemeMode.dark) {
              bloc.add(const ThemeEvent.setLight());
            } else {
              bloc.add(const ThemeEvent.setDark());
            }
          },
        );
      },
    );
  }
}
