import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/routes/routes.dart';

class NumberBox extends StatelessWidget {
  final bool isLast;
  final bool autoFocus;
  final ValueSetter<String> onChanged;

  const NumberBox({super.key, required this.autoFocus, required this.onChanged, this.isLast = false});

  Future<void> showLoadingDialog(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(Routes.appView.name, (route) => false); // todo make home view
    });
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.symmetric(vertical: 50.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
          ),
          content: Column(
            /// modified the default size to min
            mainAxisSize: MainAxisSize.min,

            children: const [
              CircularProgressIndicator(
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Text('Please await...'),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.0,
            spreadRadius: 0.5,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox(
          width: 20,
          child: TextField(
            autofocus: autoFocus,
            onChanged: (value) async {
              onChanged(value);
              if (value.trim().isNotEmpty && !isLast) {
                FocusScope.of(context).nextFocus();
              } else {
                await showLoadingDialog(context);
              }
            },
            keyboardType: TextInputType.number,
            cursorColor: Colors.grey,
            maxLength: 1,
            decoration: const InputDecoration(border: InputBorder.none, counter: SizedBox.shrink()),
          ),
        ),
      ),
    );
  }
}
