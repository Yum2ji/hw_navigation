import 'package:shared_preferences/shared_preferences.dart';

class DarkPlaybackConfigRepository {
  static const String _darkMode = "dark";

  final SharedPreferences _preferences;

  DarkPlaybackConfigRepository(this._preferences);

  Future<void> setDarkMode(bool value) async{
    _preferences.setBool(_darkMode, value);
  }


  bool isDarkMode(){
    return _preferences.getBool(_darkMode) ?? false;
  }
  
}