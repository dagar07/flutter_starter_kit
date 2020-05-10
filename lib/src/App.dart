/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-27 16:27:16
 * @modify date 2019-10-27 16:27:16
 * @desc [starting point for dev, qa and Prod file anc accept URL for all of these from app Config]
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/blocs/Authentication/bloc.dart';
import 'package:flutter_starter_kit/src/pages/Pages.dart';

import 'config/theme_config.dart';

class App extends StatelessWidget {
  /// theme data used to provide global colors
  final ThemeData _themeData = buildAppTheme();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => AuthenticationBloc()
          ..add(AppStarted())
        ),
        // you can provide other global bloc here
      ],
      child: MaterialApp(
        title: 'Flutter & Bloc',
        theme: _themeData,
        home: Pages(),
        // routes: AppRoutes(), // some other screen like login, global error modal, logout Modal
      ),
    );
  }
}