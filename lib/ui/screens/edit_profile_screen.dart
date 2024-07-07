import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/utils/common.dart';
import 'package:flutter_demo/ui/widgets/small_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _phoneController = TextEditingController();
  bool _enablePush = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SmallAppbar(title: 'Edit My Profile'),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Account Settings',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    TextFormField(
                                      decoration: textFieldDecoration.copyWith(
                                        labelText: 'Phone',
                                      ),
                                      controller: _phoneController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                    ),
                                    const SizedBox(height: 20),
                                    TextFormField(
                                      decoration: textFieldDecoration.copyWith(
                                        labelText: 'Email Address',
                                      ),
                                      controller: _phoneController,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Push Notifications',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Switch(
                                          value: _enablePush,
                                          onChanged: (value) {
                                            setState(() => _enablePush = !_enablePush);
                                          },
                                          activeColor: const Color(0xFF01BF92),
                                          thumbColor: WidgetStateProperty.all(Colors.white),
                                          inactiveTrackColor: Colors.grey.shade300,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 60),
                                    Center(
                                      child: Material(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: Colors.amberAccent,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 40),
                                              child: Text(
                                                'Update Profile',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfilePictureUpdater(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePictureUpdater extends StatefulWidget {
  const ProfilePictureUpdater({super.key});

  @override
  ProfilePictureUpdaterState createState() => ProfilePictureUpdaterState();
}

class ProfilePictureUpdaterState extends State<ProfilePictureUpdater> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          _imageFile != null
              ? CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(_imageFile!) as ImageProvider,
                )
              : SvgPicture.asset(
                  'assets/images/user_icon.svg',
                  width: 100,
                ),
          Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: _pickImage,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.yellowColor,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
