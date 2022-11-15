import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/home_screens/notifications/components/notification_card.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<NotificationData> notifications = [
    NotificationData(
      description: "Hurry Up! Don't sit at home",
      descrition2: 'today. Best car rental deal today',
      timeStamp: '3 min ago',
      title: '40% off today',
    ),
    NotificationData(
      description: 'Congratulation. Your audi A8 L',
      descrition2: 'booked successfully.',
      timeStamp: '3 min ago',
      title: 'Booking successful',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          const Text('Today', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          NotificationCard(notification: notifications[0]),
          const SizedBox(height: 16),
          NotificationCard(notification: notifications[1]),
        ],
      ),
    );
  }
}
