import 'package:blog_app/features/authentication/data/repositories/auth_repository.dart';
import 'package:blog_app/features/authentication/data/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/core_data/entitties/user_profile.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthCubit(
    this._authRepository,
    this._userRepository,
  ) : super(const AuthState.init());

  final formKey = GlobalKey<FormBuilderState>();
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  bool isAdmin = false;

  Future<void> login() async {
    final username = emailTextEditingController.text;
    final password = passwordTextEditingController.text;

    try {
      await _authRepository.signIn(
        email: username,
        password: password,
      );
      final user = await _authRepository.getCurrentUser();
      if (user != null) {
        final userProfile = await _userRepository.getUserProfile(user.uid);
        if (userProfile != null) {
          emit(AuthState.loggedIn(userProfile));
        }
      } else {
        handleError('Failed to fetch user');
      }
    } catch (e) {
      handleError('Login failed: $e');
    }
  }

  Future<void> signup() async {
    final email = emailTextEditingController.text;
    final password = passwordTextEditingController.text;

    try {
      await _authRepository.signUp(
        email: email,
        password: password,
      );
      final user = await _authRepository.getCurrentUser();
      if (user != null) {
        final userProfile = UserProfile(
          id: user.uid,
          email: email,
          isAdmin: isAdmin,
        );
        await _userRepository.createUserProfile(userProfile: userProfile);
        emit(AuthState.loggedIn(userProfile));
      } else {
        handleError('Failed to fetch user');
      }
    } catch (e) {
      handleError('Signup failed: $e');
    }
  }

  Future<void> resetPassword() async {
    final username = emailTextEditingController.text;
    try {
      await _authRepository.sendPasswordResetEmail(email: username);
      emit(const AuthState.forgotPassword());
    } catch (e) {
      handleError('Password reset failed: $e');
    }
  }

  void handleError(String message) async {
    emit(AuthState.error(message));
  }

  navigateSignup() {
    emit(const AuthState.singup());
  }

  navigatePasswordReset() {
    emit(const AuthState.forgotPassword());
  }

  navigateLogin() {
    emit(const AuthState.init());
  }

  void onAdminTogle(bool isAdmin) {
    emit(const AuthState.loading());
    this.isAdmin = isAdmin;
    emit(const AuthState.singup());
  }
}
