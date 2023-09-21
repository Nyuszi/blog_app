part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.init() = _AuthStateInit;

  const factory AuthState.singup() = _AuthStateSingup;
  const factory AuthState.forgotPassword() = _AuthStateForgotPassword;

  const factory AuthState.loading() = _AuthStateLoading;

  const factory AuthState.loggedIn(UserProfile user) = _AuthStateLoggedIn;

  const factory AuthState.error(String error) = _AuthStateError;
}
