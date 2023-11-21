import 'package:flutter/material.dart';

class Notification {
  final String title;
  final String message;

  Notification({required this.title, required this.message});
}
class notification extends StatelessWidget {
  final List<Notification> notifications = [
    Notification(title: 'Notification 1',
        message: 'This is the first notification'),

    Notification(title: 'Notification 2',
        message: 'This is the second notification'),

    Notification(title: 'Notification 3',
        message: 'This is the third notification'),

    Notification(title: 'Notification 4',
        message: 'This is the third notification'),

    Notification(title: 'Notification 5',
        message: 'This is the third notification'),

    Notification(title: 'Notification 6',
        message: 'This is the third notification'),

    Notification(title: 'Notification 7',
        message: 'This is the third notification'),

    Notification(title: 'Notification 8',
        message: 'This is the third notification'),

    Notification(title: 'Notification 9',
        message: 'This is the third notification'),

    Notification(title: 'Notification 10',
        message: 'This is the third notification'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return ListTile(
              minVerticalPadding: 20,
              title: Text(notifications[index].title),
              subtitle: Text(notifications[index].message),

            );
          },
        ),
      ),
    );
  }
}
