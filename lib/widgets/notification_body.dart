import 'package:flutter/material.dart';

import '../utils/styles.dart';

class NotificationBody extends StatelessWidget {
  NotificationBody({
    super.key,
    required this.image,
    required this.typeName,
    required this.time,
    required this.typeCoast,
    required this.typeOldCoast,

  });


  final String image;
  final String typeName;
  final String time;
  final String typeCoast;
  final String typeOldCoast;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) =>
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    width: 355,
                    height: 105,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 88,
                          height: 88,
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 152,
                                child: Text(
                                  typeName,
                                  style: Styles.style14blue,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      typeOldCoast,
                                      style: Styles.style14black,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      typeCoast,
                                      style: Styles.style14gray,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              time,
                              style: Styles.style14gray,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}