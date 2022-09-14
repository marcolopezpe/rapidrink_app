import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';

class ProductoCardDestacado extends StatelessWidget {
  const ProductoCardDestacado(
      {Key? key,
      required this.descripcion,
      required this.precio,
      required this.imagen})
      : super(key: key);

  final String descripcion;
  final String precio;
  final String imagen;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Image.asset(imagen, width: 120),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              descripcion,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            precio,
            style:
                const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
