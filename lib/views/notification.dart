import 'package:flutter/material.dart';
import 'package:oldies/widgets/notification_body.dart';
import '../utils/styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar:AppBar(
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.delete_outline)),
          )
        ],
        title: Center(
          child: Text(
            'Offers',
            style: Styles.style18,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0,
                left: 20
            ),
            child: Text('Recent',
              style: Styles.style18,
            ),
          ),
          NotificationBody(
            image: 'assets/images/notification1.png',
            typeName: 'We Have New Products With Offers',
            typeOldCoast: '\$79.00',
            typeCoast: '\$89.00',
            time: '7 min ago',
          ),
          NotificationBody(
            image: 'assets/images/notification2.png',
            typeName: 'We Have New Products With Offers',
            typeOldCoast: '\$129.95',
            typeCoast: '\$149.00',
            time: '7 min ago',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Yesterday',
              style: Styles.style18,
            ),
          ),
          NotificationBody(
            image: 'assets/images/notification3.png',
            typeName: 'We Have New Products With Offers',
            typeOldCoast: '\$129.00',
            typeCoast: '\$139.00',
            time: '7 min ago',
          ),
          NotificationBody(
            image: 'assets/images/notification4.png',
            typeName: 'We Have New Products With Offers',
            typeOldCoast: '\$100.00',
            typeCoast: '\$120.00',
            time: '7 min ago',
          ),
        ],
      ),
    );
  }
}