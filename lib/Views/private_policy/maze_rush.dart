

import 'package:flutter/material.dart';

class PrivatPolicyMazeRush extends StatelessWidget {
  const PrivatPolicyMazeRush({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Text(
'''Maze Rush Privacy Policy
        
The Game Maze Rush does not collect personal data from any user. 
The Application does not require registration, does not require the input of an email, 
address, name or other data, and does not offer paid content. 
All data collected by the Application is anonymous and cannot be used to identify individual players across sessions.

Non-Personal Information

The Game collects non-personally-identifying information of the sort that web browsers, 
servers, and services like Google Play typically make available. 
This includes certain technical information, such as users’ operating system version, device model, 
IP address, etc. This non-personal information is used to help us improve our services and operate the Application.

Third party services

The Game uses services provided by Google Play to enable users to download and install the Application on their device. 
As such, the privacy policy of Google governs the collection and use of users’ information when the Application is downloaded from its store.

Your Consent

By using the Game, you consent to this privacy policy.

Changes to this Privacy Policy

We may amend this privacy policy from time to time. 
Amendments will become effective upon posting of the revised version on this website. 
Your continued use of the Application after any such changes constitutes your acceptance of the new privacy policy.

Contact Us

If you have any questions or concerns regarding this policy, please contact us at 7255591@gmail.com''', maxLines: 100,),
      ),
    );
  }
}