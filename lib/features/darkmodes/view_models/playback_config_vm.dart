import 'package:flutter/material.dart';
import 'package:hw_navigation/features/darkmodes/models/playback_config_model.dart';
import 'package:hw_navigation/features/darkmodes/repos/dark_playback_config_repo.dart';

class PlaybackConfigViewModel extends ChangeNotifier {
  final DarkPlaybackConfigRepository _repository;

  late final PlaybackConfigModel _model = PlaybackConfigModel(
    darkmode: _repository.isDarkMode(),
  );

  PlaybackConfigViewModel(this._repository);

  void setDarkmode(bool value){
    _repository.setDarkMode(value);
    _model.darkmode = value;
    notifyListeners();
  }

  bool get darkmode => _model.darkmode;

}


