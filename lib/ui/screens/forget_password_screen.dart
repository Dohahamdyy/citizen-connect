import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';

class Forgetpasswordscreen extends StatelessWidget {
  const Forgetpasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              const SizedBox(height: 10),
              const Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/reset_password.png',
                ),
              ),
              const SizedBox(height: 15),
               const Center(
                child: Text(
                  'Please enter your email address, you will receive a link to creat a new password',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF535353),
                  ),
                ),
              ),
              TextFormField(
                onFieldSubmitted: (value)
                {
                  print(value);

                },
                onChanged: (value)
                {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(
                    Icons.email,
                  ),

                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 20.0
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(30)),
                height: 50.0,
                child: MaterialButton(
                  onPressed: ()
                  {
                  },
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

            ],
          )),
    ));
  }
}
