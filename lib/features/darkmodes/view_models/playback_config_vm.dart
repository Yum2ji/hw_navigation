import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw_navigation/features/darkmodes/models/playback_config_model.dart';
import 'package:hw_navigation/features/darkmodes/repos/dark_playback_config_repo.dart';

/* class PlaybackConfigViewModel extends ChangeNotifier {
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
 */

class PlaybackConfigViewModel extends Notifier<PlaybackConfigModel> {
  final DarkPlaybackConfigRepository _repository;
  PlaybackConfigViewModel(this._repository);

  void setDarkMode(bool value) {
    _repository.setDarkMode(value);
    state = PlaybackConfigModel(darkmode: value);
  }

  @override
  PlaybackConfigModel build() {
    return PlaybackConfigModel(
      darkmode: _repository.isDarkMode(),
    );
  }
}

final playbackConfigProvider =
    NotifierProvider<PlaybackConfigViewModel, PlaybackConfigModel>(
      () => throw UnimplementedError(),
    );
