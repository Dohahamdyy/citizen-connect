import 'package:flutter/material.dart';

class LoginScreenNew extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


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
              SizedBox(
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
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
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
                decoration: InputDecoration(
                  labelText: 'Email Adress',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
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
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon : Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: ()
                      {
          
                      },
                      child: Text('Forgot password?'),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 50.0,
                  vertical: 20.0
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.circular(30)),
                height: 40.0,
                child: MaterialButton(
                    onPressed: ()
                    {
                      print(emailController.text);
                      print(passwordController.text);

                    },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
