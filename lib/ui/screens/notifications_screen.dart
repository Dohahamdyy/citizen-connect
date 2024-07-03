import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/back_button.dart';
import '../widgets/custom_appbar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Row(
              children: [
                CustomBackButton(),
                SizedBox(width: 40),
                Text('Notifications',
                style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w700
                ),),
              ],

            ),
            const SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const Notificationitem();
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}

class Notificationitem extends StatelessWidget {
  const Notificationitem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaS8oW4uUughq2Emgve5CMzxday5deaQUjQg&s',
                      height: 15,
                      width: 15,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Report',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '1 min',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Thank you for using the application ,Your report has been submitted',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
