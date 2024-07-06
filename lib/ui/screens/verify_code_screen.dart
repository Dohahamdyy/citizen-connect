import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  TextEditingController? _controller;
  String otpCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  CustomBackButton(),
                ],
              ),
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  'Verify Code',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text(
                'Please enter the 4 digit code sent to your email ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF626262),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: PinCodeTextField(
                        enableActiveFill: true,
                        appContext: context,
                        pastedTextStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 6,
                        animationDuration: Duration.zero,
                        animationType: AnimationType.none,
                        controller: _controller,
                        beforeTextPaste: (text) =>
                            (num.tryParse(text!) != null && text.length == 6),
                        errorTextSpace: 2,
                        pinTheme: PinTheme(
                          disabledColor: AppColors.yellowColor,
                          activeColor: AppColors.greyColor,
                          inactiveColor: Colors.grey.shade500,
                          activeFillColor: AppColors.greyColor.withOpacity(0.2),
                          selectedColor: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(15),
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          shape: PinCodeFieldShape.box,
                          borderWidth: 1,
                          errorBorderColor: Colors.red,
                          fieldHeight: 50,
                          fieldWidth: 50,
                        ),
                        // controller: controller,
                        keyboardType: TextInputType.number,
                        autoFocus: true,
                        onCompleted: (v) => otpCode = v,
                        onChanged: (value) => otpCode = value,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Image.asset(
                'assets/images/verify_icon.png',
              ),
              Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amberAccent,
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn’t receive the code?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF5F5F5F),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.yellowColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.yellowColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
