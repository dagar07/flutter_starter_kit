/**
 * @author [Tilak]
 * @email [tpymca07@gmail.com]
 * @create date 2019-10-27 16:15:36
 * @modify date 2019-10-27 16:15:36
 * @desc [Authentication_state to maintaine login and logout user data to handle autherization]
 */
import 'package:equatable/equatable.dart';

class AuthenticationState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationAuthenticated';
}

class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}