// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthStateInitCopyWith<$Res> {
  factory _$$_AuthStateInitCopyWith(
          _$_AuthStateInit value, $Res Function(_$_AuthStateInit) then) =
      __$$_AuthStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateInitCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateInit>
    implements _$$_AuthStateInitCopyWith<$Res> {
  __$$_AuthStateInitCopyWithImpl(
      _$_AuthStateInit _value, $Res Function(_$_AuthStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateInit implements _AuthStateInit {
  const _$_AuthStateInit();

  @override
  String toString() {
    return 'AuthState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInit implements AuthState {
  const factory _AuthStateInit() = _$_AuthStateInit;
}

/// @nodoc
abstract class _$$_AuthStateSingupCopyWith<$Res> {
  factory _$$_AuthStateSingupCopyWith(
          _$_AuthStateSingup value, $Res Function(_$_AuthStateSingup) then) =
      __$$_AuthStateSingupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateSingupCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateSingup>
    implements _$$_AuthStateSingupCopyWith<$Res> {
  __$$_AuthStateSingupCopyWithImpl(
      _$_AuthStateSingup _value, $Res Function(_$_AuthStateSingup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateSingup implements _AuthStateSingup {
  const _$_AuthStateSingup();

  @override
  String toString() {
    return 'AuthState.singup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateSingup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return singup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return singup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (singup != null) {
      return singup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return singup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return singup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (singup != null) {
      return singup(this);
    }
    return orElse();
  }
}

abstract class _AuthStateSingup implements AuthState {
  const factory _AuthStateSingup() = _$_AuthStateSingup;
}

/// @nodoc
abstract class _$$_AuthStateForgotPasswordCopyWith<$Res> {
  factory _$$_AuthStateForgotPasswordCopyWith(_$_AuthStateForgotPassword value,
          $Res Function(_$_AuthStateForgotPassword) then) =
      __$$_AuthStateForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateForgotPasswordCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateForgotPassword>
    implements _$$_AuthStateForgotPasswordCopyWith<$Res> {
  __$$_AuthStateForgotPasswordCopyWithImpl(_$_AuthStateForgotPassword _value,
      $Res Function(_$_AuthStateForgotPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateForgotPassword implements _AuthStateForgotPassword {
  const _$_AuthStateForgotPassword();

  @override
  String toString() {
    return 'AuthState.forgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _AuthStateForgotPassword implements AuthState {
  const factory _AuthStateForgotPassword() = _$_AuthStateForgotPassword;
}

/// @nodoc
abstract class _$$_AuthStateLoadingCopyWith<$Res> {
  factory _$$_AuthStateLoadingCopyWith(
          _$_AuthStateLoading value, $Res Function(_$_AuthStateLoading) then) =
      __$$_AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateLoading>
    implements _$$_AuthStateLoadingCopyWith<$Res> {
  __$$_AuthStateLoadingCopyWithImpl(
      _$_AuthStateLoading _value, $Res Function(_$_AuthStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthStateLoading implements _AuthStateLoading {
  const _$_AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoading implements AuthState {
  const factory _AuthStateLoading() = _$_AuthStateLoading;
}

/// @nodoc
abstract class _$$_AuthStateLoggedInCopyWith<$Res> {
  factory _$$_AuthStateLoggedInCopyWith(_$_AuthStateLoggedIn value,
          $Res Function(_$_AuthStateLoggedIn) then) =
      __$$_AuthStateLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile user});

  $UserProfileCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthStateLoggedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateLoggedIn>
    implements _$$_AuthStateLoggedInCopyWith<$Res> {
  __$$_AuthStateLoggedInCopyWithImpl(
      _$_AuthStateLoggedIn _value, $Res Function(_$_AuthStateLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_AuthStateLoggedIn(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get user {
    return $UserProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthStateLoggedIn implements _AuthStateLoggedIn {
  const _$_AuthStateLoggedIn(this.user);

  @override
  final UserProfile user;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateLoggedIn &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateLoggedInCopyWith<_$_AuthStateLoggedIn> get copyWith =>
      __$$_AuthStateLoggedInCopyWithImpl<_$_AuthStateLoggedIn>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return loggedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _AuthStateLoggedIn implements AuthState {
  const factory _AuthStateLoggedIn(final UserProfile user) =
      _$_AuthStateLoggedIn;

  UserProfile get user;
  @JsonKey(ignore: true)
  _$$_AuthStateLoggedInCopyWith<_$_AuthStateLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthStateError>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateError implements _AuthStateError {
  const _$_AuthStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      __$$_AuthStateErrorCopyWithImpl<_$_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() singup,
    required TResult Function() forgotPassword,
    required TResult Function() loading,
    required TResult Function(UserProfile user) loggedIn,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? singup,
    TResult? Function()? forgotPassword,
    TResult? Function()? loading,
    TResult? Function(UserProfile user)? loggedIn,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? singup,
    TResult Function()? forgotPassword,
    TResult Function()? loading,
    TResult Function(UserProfile user)? loggedIn,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateInit value) init,
    required TResult Function(_AuthStateSingup value) singup,
    required TResult Function(_AuthStateForgotPassword value) forgotPassword,
    required TResult Function(_AuthStateLoading value) loading,
    required TResult Function(_AuthStateLoggedIn value) loggedIn,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthStateInit value)? init,
    TResult? Function(_AuthStateSingup value)? singup,
    TResult? Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult? Function(_AuthStateLoading value)? loading,
    TResult? Function(_AuthStateLoggedIn value)? loggedIn,
    TResult? Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateInit value)? init,
    TResult Function(_AuthStateSingup value)? singup,
    TResult Function(_AuthStateForgotPassword value)? forgotPassword,
    TResult Function(_AuthStateLoading value)? loading,
    TResult Function(_AuthStateLoggedIn value)? loggedIn,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthStateError implements AuthState {
  const factory _AuthStateError(final String error) = _$_AuthStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
