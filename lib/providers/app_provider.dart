import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  // --------------- Theme ---------------
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();

    saveTheme();
  }

  void saveTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', _isDarkMode);
  }

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    notifyListeners();
  }
  // --------------- End Theme ---------------

  // --------------- Language ----------------
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();

    saveLocale();
  }

  void saveLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('locale', _locale.languageCode);
  }

  void loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('locale');
    if (languageCode != null) {
      _locale = Locale(languageCode);
      notifyListeners();
    }
  }
  // --------------- End Language ---------------

  // --------------- Bottom Navigation Bar ---------------
  int _bottomNavigationBarIndex = 0;

  int get bottomNavigationBarIndex => _bottomNavigationBarIndex;

  void setBottomNavigationBarIndex(int index) {
    _bottomNavigationBarIndex = index;
    notifyListeners();
  }
  // --------------- End Bottom Navigation Bar ---------------
}
