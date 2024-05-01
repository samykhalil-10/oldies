import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/create_account_screen.dart';
import 'package:oldies/widgets/nav.dart';

class NewUserText extends StatelessWidget {
  const NewUserText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('New User ?',
          style: Styles.style20black,
        ),
        TextButton(onPressed: ()
        {
          navigateTo(context, CreateAccount());
        }, child: Text('Create Account',
          style: Styles.style16gray,
        ))
      ],
    );
  }
}