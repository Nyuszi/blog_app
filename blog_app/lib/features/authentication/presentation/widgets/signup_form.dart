import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onSignupPressed;
  final Function(bool isAdmin) onAdminTogle;
  final bool isAdmin;
  final VoidCallback onPasswordReserPressed;
  final GlobalKey formKey;
  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;

  const SignupForm({
    super.key,
    required this.formKey,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
    required this.onLoginPressed,
    required this.onSignupPressed,
    required this.onPasswordReserPressed,
    required this.onAdminTogle,
    required this.isAdmin,
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
          const SizedBox(height: 16.0),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Confirm your password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please confirm your password';
              } else if (value != passwordTextEditingController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          const SizedBox(height: 32.0),
          Row(
            children: <Widget>[
              Checkbox(
                value: isAdmin,
                onChanged: (value) {
                  print(value);
                  if (value != null) {
                    onAdminTogle(value);
                  }
                },
              ),
              const Text('Admin Signup'),
            ],
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              onSignupPressed();
            },
            child: const Text('Signup'),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton(
            onPressed: () => onLoginPressed(),
            child: const Text('Login'),
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
