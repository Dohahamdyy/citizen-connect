import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowColor,
      appBar: AppBar(
        leading: const CustomBackButton(),
        backgroundColor: AppColors.yellowColor,
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          const Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPCLWMmAY6mvPuZuQSP7ifTYm6osktNLg_Rg&s'),
              radius: 40,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(40),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'User123',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    ProfileItem(
                      title: 'Edit Profile',
                      icon: 'assets/images/Icon Profile.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    ProfileItem(
                      title: 'Terms and conditions',
                      icon: 'assets/images/Icon Security.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    ProfileItem(
                      title: 'Settings',
                      icon: 'assets/images/Icon Setting.png',
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    ProfileItem(
                      title: 'Logout',
                      icon: 'assets/images/Icon Logout.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        children: [
          Image.asset(icon),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
