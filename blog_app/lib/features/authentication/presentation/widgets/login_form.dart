import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onSignupPressed;
  final VoidCallback onPasswordReserPressed;
  final GlobalKey formKey;
  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;

  LoginForm({
    super.key,
    required this.onLoginPressed,
    required this.formKey,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
    required this.onSignupPressed,
    required this.onPasswordReserPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailTextEditingController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: passwordTextEditingController,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              onLoginPressed();
            },
            child: const Text('Login'),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton(
            onPressed: () => onSignupPressed(),
            child: const Text('Signup'),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton(
            onPressed: () => onPasswordReserPressed(),
            child: const Text('Password reset'),
          ),
        ],
      ),
    );
  }
}
