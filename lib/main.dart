import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw_navigation/features/darkmodes/repos/dark_playback_config_repo.dart';
import 'package:hw_navigation/features/darkmodes/view_models/playback_config_vm.dart';
import 'package:hw_navigation/features/main_navigation/main_navigation_screen.dart';
import 'package:hw_navigation/router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final repository = DarkPlaybackConfigRepository(preferences);

/*   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlaybackConfigViewModel(repository),
        ),
      ],
      child: const NavigationApp(),
    ),
  ); */

    runApp(
       ProviderScope(
        overrides:[
          playbackConfigProvider.overrideWith(
            () => PlaybackConfigViewModel(repository),
          ),
        ],
        child : const NavigationApp(),
      ),
  );
}

class NavigationApp extends ConsumerWidget {
  const NavigationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ref.watch(playbackConfigProvider).darkmode
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.light,
        useMaterial3: true,
        bottomAppBarTheme: const BottomAppBarTheme(
          color: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          indicatorColor: Colors.grey.shade800,
          unselectedLabelColor: Colors.grey.shade500,
          labelColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        tabBarTheme: TabBarTheme(
          indicatorColor: Colors.grey.shade300,
          unselectedLabelColor: Colors.grey.shade800,
          labelColor: Colors.grey.shade300,
        ),
     
      ),
      //home: const MainNavigationScreen(),
    );
  }
}
