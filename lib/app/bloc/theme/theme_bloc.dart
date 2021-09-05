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
    on<_SetLight>(_setLight);
    on<_SetDark>(_setDark);

    _loadFromStorage();
  }

  final SharedPreferences _storage;

  Future<void> _loadFromStorage() async {
    final theme = _storage.getInt('theme');

    if (theme != null) {
      if (theme == ThemeMode.light.index) {
        add(const _SetLight());
      }
    }
  }

  Future<void> _setDark(
    _SetDark event,
    Emitter<ThemeState> emit,
  ) async {
    emit(const ThemeState(themeMode: ThemeMode.dark));

    await _storage.setInt('theme', ThemeMode.dark.index);
  }

  Future<void> _setLight(
    _SetLight event,
    Emitter<ThemeState> emit,
  ) async {
    emit(const ThemeState(themeMode: ThemeMode.light));

    await _storage.setInt('theme', ThemeMode.light.index);
  }
}
