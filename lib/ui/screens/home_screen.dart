import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/widgets/custom_appbar.dart';

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
              const CustomAppbar(),
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
              const SizedBox(height: 20),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Icon(Icons.mic, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// ===================
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              // SizedBox(
              //   height: 150,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 4,
              //     itemBuilder: (context, i) => const CategoryItem(),
              //   ),
              // ),
              const Row(
                children: [
                  CategoryItem(
                    title: 'Other',
                    image: 'assets/images/add_icon.png',
                    backgroundColor: Colors.green,
                  ),
                  CategoryItem(
                    title: 'Environmental',
                    image: 'assets/images/env_icon.png',
                    backgroundColor: Colors.yellow,
                  ),
                  CategoryItem(
                    title: 'Electric',
                    image: 'assets/images/elec_icon.png',
                    backgroundColor: Colors.orangeAccent,
                  ),
                  CategoryItem(
                    title: 'Road',
                    image: 'assets/images/road_icon.png',
                    backgroundColor: Colors.yellow,
                  ),
                ],
              ),
              Divider(height: 52, color: Colors.grey.shade400),

              /// ===================
              const Text(
                'Recent Complaints',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, i) => const RecentComplaintItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentComplaintItem extends StatelessWidget {
  const RecentComplaintItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          /// replace container with image
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: AppColors.yellowColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Traffic | 2days',
                style: TextStyle(fontSize: 14, color: AppColors.greyColor),
              ),
              Text(
                'Damaged traffic signal',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {},
            child: const Row(
              children: [
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.yellowColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 15,
                  color: AppColors.yellowColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
    required this.backgroundColor,
  });

  final String title;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/progress'),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 65,
              height: 65,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Image.asset(image),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
