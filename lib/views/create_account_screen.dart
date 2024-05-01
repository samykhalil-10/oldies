// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/login_screen.dart';
import 'package:oldies/widgets/create_account_form.dart';
import 'package:oldies/widgets/det_button.dart';
import 'package:oldies/widgets/have_an_account.dart';
import 'package:oldies/widgets/nav.dart';

class CreateAccount extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>OldiesCubit(),
      child: BlocConsumer<OldiesCubit,OldiesStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state)=> Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding:  EdgeInsets.only(
                      top: 60,
                      left: 20,
                      right: 20
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Register Account',
                          style: Styles.style32,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Fill your details or continue with\nsocial media',
                          style: Styles.style16white,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        CreateAccountForm(),
                        SizedBox(
                          height: 20,
                        ),
                        defaultButton(
                            function: () {
                              if(formKey.currentState!.validate())
                              {
                                navigateAndFinish(context, Login_Screen());

                              }
                            },
                            text: 'Sign Up'),
                        SizedBox(
                          height: 25,
                        ),
                        defaultWhiteButton(function: () {},
                            text: 'Sign In with Google'),
                        SizedBox(
                          height: 60,
                        ),
                        HaveAnAccount(),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}