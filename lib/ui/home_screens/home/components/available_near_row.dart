import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';

class AvailableNearRow extends StatelessWidget {
  const AvailableNearRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Row(
            children: const [
              Text('With driver', style: TextStyle(fontSize: 14)),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              SwitchAvailable(),
            ],
          ),
        ],
      ),
    );
  }
}

class TextAvailableNextYou extends StatelessWidget {
  const TextAvailableNextYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: const [
          Text('Available Near You',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

class SwitchAvailable extends StatefulWidget {
  const SwitchAvailable({super.key});

  @override
  State<SwitchAvailable> createState() => _SwitchAvailableState();
}

class _SwitchAvailableState extends State<SwitchAvailable> {
  bool _isNearEnable = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
        activeTrackColor: AppColors.green,
        activeColor: Colors.white,
        value: _isNearEnable,
        onChanged: (value) {
          setState(() {
            _isNearEnable = value;
          });
        });
  }
}
