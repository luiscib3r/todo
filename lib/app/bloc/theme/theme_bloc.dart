import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(
    this._storage,
  ) : super(ThemeState.initial()) {
    _loadFromStorage();
  }

  final SharedPreferences _storage;

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.when(
      setDark: _setDark,
      setLight: _setLight,
    );
  }

  Future<void> _loadFromStorage() async {
    final theme = _storage.getInt('theme');

    if (theme != null) {
      if (theme == ThemeMode.light.index) {
        add(const _SetLight());
      }
    }
  }

  Stream<ThemeState> _setDark() async* {
    yield const ThemeState(themeMode: ThemeMode.dark);

    await _storage.setInt('theme', ThemeMode.dark.index);
  }

  Stream<ThemeState> _setLight() async* {
    yield const ThemeState(themeMode: ThemeMode.light);

    await _storage.setInt('theme', ThemeMode.light.index);
  }
}
