import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';
import 'package:flutter_demo/ui/widgets/check_circle.dart';
import 'package:flutter_demo/ui/utils/colors.dart';

class MyReportScreen extends StatelessWidget {
  const MyReportScreen({super.key});

  final Color greyColor = const Color(0xFF878787);
  final Color greenColor = const Color(0xFF18DC2B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// ==========================
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomBackButton(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Report',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                          ),
                        ),
                        Text(
                          'Status',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                /// ==========================
                Row(
                  children: [
                    SizedBox(
                      width: 117,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ493GtLWapSE6i91zkiS8FqcQfTR8eGwYHESQB3X4ZQ&s',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Graffiti',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: greyColor,
                              size: 14,
                            ),
                            Text(
                              'Asyut | ',
                              style: TextStyle(
                                color: greyColor,
                                fontSize: 13,
                              ),
                            ),
                            Icon(
                              Icons.calendar_month,
                              color: greyColor,
                              size: 14,
                            ),
                            Text(
                              ' 21 MAR 2024',
                              style: TextStyle(
                                color: greyColor,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 5),

                /// ==========================
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Report Details',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Report ID',
                            style: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                            ),
                          ),
                          Text(
                            'TRK452126545',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Report category',
                            style: TextStyle(
                              fontSize: 15,
                              color: greyColor,
                            ),
                          ),
                          Text(
                            'Environmental',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),

                /// ==========================
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Report Status',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            const CheckCircle(type: 1),
                            Container(
                              width: 5,
                              height: 80,
                              color: greenColor,
                            ),
                            const CheckCircle(type: 2),
                            Container(
                              width: 5,
                              height: 80,
                              color: greenColor,
                            ),
                            const CheckCircle(type: 3),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reported',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '26 Apr 2024, 0.26 pm',
                              style: TextStyle(
                                fontSize: 13,
                                color: greyColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              height: 70,
                            ),
                            Text(
                              'Approved',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '26 Apr 2024, 0.26 pm',
                              style: TextStyle(
                                fontSize: 13,
                                color: greyColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                              height: 70,
                            ),
                            Text(
                              'Submitted',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
