import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.title, this.subtitle});

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/images/user_icon.svg',
        ),
        const SizedBox(width: 20),
        if (title != null)
          Column(
            children: [
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        const Spacer(),
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/recent'),
          child: SvgPicture.asset(
            'assets/images/recent_icon.svg',
          ),
        ),
        const SizedBox(width: 10),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/notifications');
          },
          child: SvgPicture.asset(
            'assets/images/notification_icon.svg',
          ),
        ),
      ],
    );
  }
}
