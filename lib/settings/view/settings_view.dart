import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/settings/settings.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    final appVersion = bloc.state.appVersion;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle('Ajustes'),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(
              children: [
                const SizedBox(height: 30),
                SettingsSwitch(
                  text: 'Activar widget flotante',
                  value: state.showFloatWidget,
                  onChanged: (value) => bloc.add(
                    SettingsEvent.showFloatWidget(value),
                  ),
                ),
                SettingsSwitch(
                  text: 'Apagar wifi al desconectar',
                  value: state.turnOffWifi,
                  onChanged: (value) => bloc.add(
                    SettingsEvent.turnOffWifi(value),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          );
        },
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              appVersion,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
