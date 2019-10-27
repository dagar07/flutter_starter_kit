/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-27 16:58:02
 * @modify date 2019-10-27 16:58:02
 * @desc [Provide all Screens or Pages on basis of login user]
 */
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter_kit/src/blocs/Authentication/bloc.dart';
import 'package:flutter_starter_kit/src/pages/Home/Home.dart';

class Pages extends StatelessWidget {
  // if you need any thing update like
  // app update, that work goes here
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        print(state);
        return Home();
      },
    );
  }
}