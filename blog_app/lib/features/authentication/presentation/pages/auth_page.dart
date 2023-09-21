import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/router.gr.dart';
import '../bloc/auth_cubit.dart';
import '../widgets/blog_logo.dart';
import '../widgets/login_form.dart';
import '../widgets/reset_password_form.dart';
import '../widgets/signup_form.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 16,
            ),
            const BlogLogo(),
            SizedBox(
              child: BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  state.maybeWhen(
                    loggedIn: (user) =>
                        AutoRouter.of(context).replace(const FeedRoute()),
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                      context.read<AuthCubit>().navigateLogin();
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: state.maybeWhen(
                      init: () => LoginForm(
                        onLoginPressed: () => context.read<AuthCubit>().login(),
                        onSignupPressed: () =>
                            context.read<AuthCubit>().navigateSignup(),
                        onPasswordReserPressed: () =>
                            context.read<AuthCubit>().navigatePasswordReset(),
                        formKey: context.read<AuthCubit>().formKey,
                        emailTextEditingController: context
                            .read<AuthCubit>()
                            .emailTextEditingController,
                        passwordTextEditingController: context
                            .read<AuthCubit>()
                            .passwordTextEditingController,
                      ),
                      singup: () => SignupForm(
                        onLoginPressed: () =>
                            context.read<AuthCubit>().navigateLogin(),
                        onSignupPressed: () =>
                            context.read<AuthCubit>().signup(),
                        onPasswordReserPressed: () =>
                            context.read<AuthCubit>().navigatePasswordReset(),
                        formKey: context.read<AuthCubit>().formKey,
                        emailTextEditingController: context
                            .read<AuthCubit>()
                            .emailTextEditingController,
                        passwordTextEditingController: context
                            .read<AuthCubit>()
                            .passwordTextEditingController,
                        onAdminTogle: (bool isAdmin) {
                          context.read<AuthCubit>().onAdminTogle(isAdmin);
                        },
                        isAdmin: context.read<AuthCubit>().isAdmin, 
                      ),
                      forgotPassword: () => ResetPasswordForm(
                        onLoginPressed: () =>
                            context.read<AuthCubit>().navigateLogin(),
                        onSignupPressed: () =>
                            context.read<AuthCubit>().navigateSignup(),
                        onPasswordReserPressed: () =>
                            context.read<AuthCubit>().resetPassword(),
                        formKey: context.read<AuthCubit>().formKey,
                        emailTextEditingController: context
                            .read<AuthCubit>()
                            .emailTextEditingController,
                      ),
                      loading: () => const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: CircularProgressIndicator(),
                      ),
                      orElse: () {
                        return Container();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
