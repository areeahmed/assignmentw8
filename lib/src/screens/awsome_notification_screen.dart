import 'package:flutter/material.dart';

class AwsomeNotification extends StatefulWidget {
  AwsomeNotification({Key? key}) : super(key: key);

  @override
  State<AwsomeNotification> createState() => _AwsomeNotificationState();
}

class _AwsomeNotificationState extends State<AwsomeNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'on time notify',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Date Time notify',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Cancel Notify',
            ),
          ),
        ],
      ),
    );
  }
}
