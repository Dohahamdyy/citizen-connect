import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();




  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50.0,
              ),
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
              const Text(
                'Sign up',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onFieldSubmitted: (value)
                      {
                        print(value);
                    
                      },
                      onChanged: (value)
                      {
                        print(value);
                      },
                      decoration: const InputDecoration(
                        hintText: 'Name',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      onFieldSubmitted: (value)
                      {
                        print(value);
                                  
                      },
                      onChanged: (value)
                      {
                        print(value);
                      },
                      decoration: const InputDecoration(
                        hintText: 'Surname',
                      ),
                    ),
                  ),
              
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value)
                {
                  print(value);

                },
                onChanged: (value)
                {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Email / Phone number',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
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
                  hintText: 'ID',
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value)
                {
                  print(value);

                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Password',
                  prefixIcon : Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: confirmpasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (value)
                {
                  print(value);

                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Confirm password',
                  prefixIcon : Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ] ),
        ),
      ),
    );
  }
}
