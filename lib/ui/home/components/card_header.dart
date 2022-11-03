import 'package:flutter/material.dart';
import 'package:rental_car_app/ui/design/app_colors.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});

  /// todo cambiar todo esta mierda por el codigo del proyecto card_clip :P
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 0.5,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(13.0))),
        clipBehavior: Clip.hardEdge,
        child: Container(
          height: 150,
          width: 500,
          child: Stack(
            children: [
              Container(color: Colors.white),
              ClipPath(
                clipper: DiagonalClipPath(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.green,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('BEST CAR',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('RENTAL',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('DEAL TODAY',
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 22),
                      Text('40%OFF TODAY',
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Image(image: AssetImage('assets/img/car.png'), width: 230, height: 125),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DiagonalClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, 200)
      ..lineTo(150, 200)
      ..lineTo(250, 0)
      ..lineTo(30, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
