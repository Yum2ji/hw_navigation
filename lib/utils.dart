import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw_navigation/features/darkmodes/view_models/playback_config_vm.dart';
import 'package:provider/provider.dart';

bool isDarkMode(WidgetRef ref,  context) => 
    // MediaQuery.of(context).platformBrightness== Brightness.dark ;
    //(  MediaQuery.of(context).platformBrightness== Brightness.dark  || context.read<PlaybackConfigViewModel>().darkmode ) ;
  (  MediaQuery.of(context).platformBrightness== Brightness.dark  || ref.watch(playbackConfigProvider).darkmode ) ;