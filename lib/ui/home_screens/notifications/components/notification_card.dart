import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';
import 'package:rental_car_app/ui/design/card_shadow.dart';

class NotificationCard extends StatelessWidget {
  final NotificationData notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return CardShadow(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        children: [
          const NotificationIcon(),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notification.title,
                style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 6),
              Text(
                notification.description,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
              const SizedBox(height: 6),
              Text(
                notification.descrition2,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
              const SizedBox(height: 6),
              Text(
                notification.timeStamp,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: AppColors.green,
            shape: BoxShape.circle,
          ),
        ),
        const Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ],
    );
  }
}

class NotificationData {
  final String title;
  final String description;
  final String descrition2;
  final String timeStamp;

  NotificationData({
    required this.title,
    required this.description,
    required this.descrition2,
    required this.timeStamp,
  });
}
