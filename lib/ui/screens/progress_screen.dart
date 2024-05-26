import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';
import 'package:flutter_demo/ui/widgets/check_circle.dart';
import 'package:image_picker/image_picker.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  XFile? pickedImage;
  String? description;
  String? location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              /// ==========================
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  Center(
                    child: Image.asset(
                      'assets/images/vector.png',
                      width: 178,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              /// ==========================
              Row(
                children: [
                  Column(
                    children: [
                      CheckCircle(type: pickedImage == null ? 2 : 1),
                      Container(
                        width: 5,
                        height: 80,
                        color: pickedImage == null ? Colors.grey.shade300 : AppColors.greenColor,
                      ),
                      CheckCircle(type: description == null ? 2 : 1),
                      Container(
                        width: 5,
                        height: 80,
                        color: description == null ? Colors.grey.shade300 : AppColors.greenColor,
                      ),
                      CheckCircle(type: location == null ? 2 : 1),
                    ],
                  ),
                  const SizedBox(width: 15),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Take/ Upload the photo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                        height: 85,
                      ),
                      Text(
                        'Write your description',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                        height: 85,
                      ),
                      Text(
                        'Locate your location',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.yellowColor,
                      ),
                      child: MaterialButton(
                        onPressed: () async {
                          if (pickedImage == null) {
                            final image = await ImagePicker().pickImage(source: ImageSource.camera);
                            if (image != null) {
                              print('Image path: ${image.path}');
                              setState(() => pickedImage = image);
                            }
                          } else if (description == null) {
                            final desc =
                                await Navigator.of(context).pushNamed('/description') as String?;
                            if (desc != null) {
                              print('Description: $desc');
                              setState(() => description = desc);
                            }
                          } else if (location != null) {}
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 100),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
