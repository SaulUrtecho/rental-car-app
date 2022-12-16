import 'package:flutter/material.dart';
import 'package:rental_car_app/data/remote/repositories/notifications_repository.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class UbicationRow extends StatelessWidget {
  const UbicationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Row(
            children: const [
              Icon(
                IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                color: AppColors.green,
              ),
              Text('New Jersey 45463')
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () async {
                      await Navigator.of(context).pushNamed(Routes.notifications.name);
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: AppColors.green,
                    ),
                  ),
                  Positioned(
                    right: 4,
                    bottom: 8,
                    child: Container(
                      alignment: Alignment.center,
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: StreamBuilder<Object>(
                          stream: NotificationsRepository().notificationsCounter(),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Text('${snapshot.data}',
                                  style: const TextStyle(color: Colors.white, fontSize: 10));
                            } else {
                              return const SizedBox.shrink();
                            }
                          }),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
