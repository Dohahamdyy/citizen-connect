import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/user_icon.svg',
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).pushNamed('/recent');
                    },
                    child: SvgPicture.asset(
                      'assets/images/recent_icon.svg',
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).pushNamed('/notifications');
                    },
                    child: SvgPicture.asset(
                      'assets/images/notification_icon.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Ahmed',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColors.yellowColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                'See something wrong? Let’s report it',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF626262),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
