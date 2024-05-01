// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/widgets/def_form.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context)=> OldiesCubit(),
      child: BlocConsumer<OldiesCubit,OldiesStates>(

          listener: (BuildContext context, OldiesStates state) {  },
          builder: (BuildContext context, OldiesStates state) {
            var appCubit = OldiesCubit.get(context);
            return Column(
              children: [
                defaultFormField(
                    prefix: Icons.email_outlined,
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your email address';
                      }
                      return null;
                    },
                    label: 'Email Address'),
                SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    isPassword: OldiesCubit.get(context).showPassword,
                    suffixPressed:()
                    {
                      OldiesCubit.get(context).switchPasswordVisibility();
                    }
                    ,
                    prefix: Icons.lock_outline,
                    suffix:appCubit.showPassword ? Icons.visibility_off:
                    Icons.visibility,
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your password';
                      }
                      return null;
                    },
                    onTap: () {},
                    label: 'Password'
                )
              ],
            );
          }


      ),
    );
  }
}