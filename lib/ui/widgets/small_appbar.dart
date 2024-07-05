import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';

class SmallAppbar extends StatelessWidget {
  const SmallAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomBackButton(color: Colors.white),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const SizedBox(width: 80),
      ],
    );
  }
}
