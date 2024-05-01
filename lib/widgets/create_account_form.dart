// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/widgets/def_form.dart';

class CreateAccountForm extends StatelessWidget {
  CreateAccountForm({super.key});
  var nameController = TextEditingController();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>OldiesCubit(),
      child: BlocConsumer<OldiesCubit,OldiesStates>(

        listener: (BuildContext context, OldiesStates state) {  },
        builder: (BuildContext context, OldiesStates state) {
          var appCubit = OldiesCubit.get(context);
          return  SingleChildScrollView(
            child: Column(
              children: [
                defaultFormField(
                    prefix: Icons.person_outline,
                    controller: nameController,
                    type: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your name';
                      }
                      return null;

                    },
                    label: 'Your Name'),
                const SizedBox(
                  height: 25,
                ),
                defaultFormField(
                    prefix: Icons.email_outlined,
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your E-mail';
                      }
                      return null;
                    },
                    label: 'Email Address'),
                const SizedBox(
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
                        return 'password is to short';
                      }
                      return null;
                    },
                    onTap: ()
                    {


                    },
                    label: 'Password')
              ],
            ),
          );  },
      ),
    );
  }
}
