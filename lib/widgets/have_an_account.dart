import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/login_screen.dart';
import 'package:oldies/widgets/nav.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('Already Have Account?',
          style: Styles.style20black,
        ),
        TextButton(onPressed: ()
        {
          navigateTo(context, Login_Screen());
        }, child: Text('Log In',
          style: Styles.style16gray,
        ))
      ],
    );
  }
}