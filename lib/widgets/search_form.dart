// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  SearchForm({super.key});
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 350,
          child: SearchBar(
            controller: searchController,
            hintText: 'Looking for sandwich',
            leading: Icon(
              Icons.search_outlined,

            ),
            onTap: (){},
            //onChanged:(){},


          ),
        ),

      ],
    );
  }
}