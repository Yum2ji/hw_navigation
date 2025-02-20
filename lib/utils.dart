import 'package:flutter/cupertino.dart';
import 'package:hw_navigation/features/darkmodes/view_models/playback_config_vm.dart';
import 'package:provider/provider.dart';

bool isDarkMode(BuildContext context) =>
    (  MediaQuery.of(context).platformBrightness== Brightness.dark  || context.read<PlaybackConfigViewModel>().darkmode ) ;
