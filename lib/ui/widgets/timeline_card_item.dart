import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';

class TimelineCardItem extends StatelessWidget {
  const TimelineCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          Image.asset(
            'assets/images/card.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Graffiti',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'MAR 2023 | Asyut',
                      style: TextStyle(fontSize: 13, color: Color(0xFFAB6585)),
                    ),
                  ],
                ),
                Icon(
                  Icons.check_circle,
                  color: AppColors.greenColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
