import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({Key? key, required this.imagen, required this.nombre})
      : super(key: key);

  final String imagen;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          SvgPicture.asset(
            imagen,
            width: 80,
          ),
          const SizedBox(height: 10),
          Text(nombre),
        ],
      ),
    );
  }
}
