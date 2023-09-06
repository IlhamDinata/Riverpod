import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkModeNotifier extends StateNotifier<bool> {
  SharedPreferences? prefs;

  DarkModeNotifier() : super(false) {
    _init();
  }

  Future _init() async {
    prefs = await SharedPreferences.getInstance();
    final darkMode = prefs?.getBool("darkMode") ?? false;
    state = darkMode;
  }

  void toggle() async {
    state = !state;
    prefs?.setBool("darkMode", state);
  }
}

final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>(
  (ref) => DarkModeNotifier(),
);