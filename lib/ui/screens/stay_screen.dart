import 'package:flutter/material.dart';

class StayScreen extends StatelessWidget {
  const StayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Garbage.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Stay empowered',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    ' make your neighborhood a cleaner,',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    'Safer place!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(80),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amberAccent,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            'Continue',
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
            ),
          ),
        ],
      ),
    );
  }
}
