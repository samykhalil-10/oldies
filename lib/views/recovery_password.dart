// ignore_for_file: must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/widgets/def_form.dart';
import 'package:oldies/widgets/det_button.dart';
import 'package:oldies/widgets/nav.dart';
import 'package:oldies/widgets/otp_screen.dart';

class RecoveryPassword extends StatelessWidget {
  RecoveryPassword({super.key});

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Forgot Password',
                style: Styles.style32,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Enter your Email account to reset\nyour password',
                style: Styles.style16gray,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
              ),
              defaultFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                validator: (value){},
                label: 'Email Address',
                prefix: Icons.email_outlined,
              ),
              SizedBox(
                height: 20,
              ),
              defaultButton(
                function: ()
              {
                ShowPopupScreen(context);
              },
                text: 'Reset password',
              )
            ],
          ),
        ),
      ),
    );
  }
  void ShowPopupScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 335,
          height: 195,
          child: AlertDialog(
            icon: CircleAvatar(
                backgroundColor:Colors.deepOrange ,
                child: Icon(Icons.email_outlined,
                  color: Colors.white,
                )),
            title: Text('Check your email',
              style: Styles.style16,
            ),
            content: Text('We have send password recovery code in your email',
              style: Styles.style16gray,
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  navigateTo(context, OtpScreen()); // Close the dialog
                },
                child: Text('Got IT'),
              ),
            ],
          ),
        );
      },
    );
  }
}