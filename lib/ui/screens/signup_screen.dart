import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/utils/common.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 12,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.keyboard_backspace_rounded,
                        color: Colors.black,
                        size: 36,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Row(
                  children: [
                    SizedBox(width: 12),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'First name',
                        ),
                        controller: _firstnameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'Last name',
                        ),
                        controller: _lastnameController,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty || !emailRegex.hasMatch(value)) {
                            return 'Email is required';
                          }
                          return null;
                        },
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'Phone number',
                        ),
                        controller: _phoneController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'Password',
                        ),
                        controller: _passwordController,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        decoration: textFieldDecoration.copyWith(
                          labelText: 'Confirm Password',
                        ),
                        controller: _confirmPasswordController,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(30),
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amberAccent,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.of(context).pushNamed('/main');
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 60),
                            child: Text(
                              'Create account',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: AppColors.yellowColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
