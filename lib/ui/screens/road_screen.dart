import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/screens/home_screen.dart';

import '../widgets/custom_appbar.dart';

class RoadScreen extends StatelessWidget {
  const RoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const CustomAppbar(title: 'Road'),
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
                      ),
                      Text(
                        'User123',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:10),
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const Carditem();
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class Carditem extends StatelessWidget {
  const Carditem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/images/card.png'),
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
                      style: TextStyle(fontSize: 13, color: Colors.redAccent),
                    ),
                  ],
                ),
                Icon(Icons.check_circle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
