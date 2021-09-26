import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/app/app.dart';
import 'package:todo/home/home.dart';
import 'package:todo/l10n/l10n.dart';
import 'package:todo/settings/bloc/bloc.dart';

class UpdateUssdView extends StatelessWidget {
  const UpdateUssdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final bloc = context.read<UpdateUssdBloc>();

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(l10n.updateUssdCodes),
        actions: [
          IconButton(
            onPressed: () {
              bloc.add(const UpdateUssdEvent.loadData());
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: BlocBuilder<UpdateUssdBloc, UpdateUssdState>(
        builder: (context, state) {
          final message =
              state.success ? l10n.updateCodeSuccess : l10n.updateCodeError;

          return Center(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: state.loading
                        ? const CircularProgressIndicator()
                        : Container(
                            margin: const EdgeInsets.all(30),
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                message,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.clip,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  child: MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      HomePage.open(context);
                    },
                    elevation: 0.5,
                    child: Text(
                      l10n.accept.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
