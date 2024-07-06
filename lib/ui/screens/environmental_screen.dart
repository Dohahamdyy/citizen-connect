import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/widgets/timeline_card_item.dart';

import '../widgets/custom_appbar.dart';

class EnvironmentalScreen extends StatelessWidget {
  const EnvironmentalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const CustomAppbar(
                title: 'Environmental',
                withBackButton: true,
              ),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 12,
                      color: AppColors.greyColor,
                    ),
                    Text(
                      'User123',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return const TimelineCardItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
