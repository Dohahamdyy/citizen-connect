 import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/utils/colors.dart';
import 'package:flutter_demo/ui/widgets/back_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        leading: Stack(
          children: [
            Positioned(
              bottom: 12,
              child: Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.keyboard_backspace_rounded,
                color: Colors.black,
                size: 36,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.yellowColor,
        title: Text('Profile',
        style: TextStyle(fontWeight: FontWeight.w700),),
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Container(
              child: Center(
                child: CircleAvatar(backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPCLWMmAY6mvPuZuQSP7ifTYm6osktNLg_Rg&s'),
                  radius: 40.0,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding:  EdgeInsets.all(40),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child:
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text('User123',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),),
                      ),
                      SizedBox(height: 25.0,),
                      Row(children: [
                        Image.asset('assets/images/Icon Profile.png'),
                        SizedBox(width: 10.0,),
                        Text('Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize:20.0 ),),
                      ],),
                      SizedBox(height: 20.0,),
                      Row(children: [
                        Image.asset('assets/images/Icon Security.png'),
                        SizedBox(width: 10.0,),
                        Text('Terms and conditions',
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize:20.0 ),),
                      ],),
                      SizedBox(height: 20.0,),
                      Row(children: [
                        Image.asset('assets/images/Icon Setting.png'),
                        SizedBox(width: 10.0,),
                        Text('Settings',
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize:20.0 ),),
                      ],),
                      SizedBox(height: 20.0,),
                      Row(children: [
                        Image.asset('assets/images/Icon Logout.png'),
                        SizedBox(width: 10.0,),
                        Text('Logout',
                          style: TextStyle(fontWeight: FontWeight.w500,
                              fontSize:20.0 ),),
                      ],),
                  
                  
                  
                  
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),

    );
  }
}
