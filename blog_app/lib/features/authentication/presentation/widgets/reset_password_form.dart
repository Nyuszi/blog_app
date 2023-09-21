import 'package:flutter/material.dart';

class ResetPasswordForm extends StatelessWidget {
  final VoidCallback onLoginPressed;
  final VoidCallback onSignupPressed;
  final VoidCallback onPasswordReserPressed;
  final GlobalKey formKey;

  final TextEditingController emailTextEditingController;

  const ResetPasswordForm({
    super.key,
    required this.formKey,
    required this.emailTextEditingController,
    required this.onLoginPressed,
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
            onSaved: (value) {
              emailTextEditingController.text = value!;
            },
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              onPasswordReserPressed();
            },
            child: const Text('Reset Password'),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton(
            onPressed: () => onLoginPressed(),
            child: const Text('Login'),
          ),
          const SizedBox(height: 16.0),
          OutlinedButton(
            onPressed: () => onSignupPressed(),
            child: const Text('Signup'),
          ),
        ],
      ),
    );
  }
}
