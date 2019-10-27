/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-27 16:10:52
 * @modify date 2019-10-27 16:10:52
 * @desc [authentication_event mapping for authentication_state by mapEventToState]
 */

import 'package:bloc/bloc.dart';
import 'package:flutter_starter_kit/src/blocs/Authentication/bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    yield AuthenticationAuthenticated();
  }
}
