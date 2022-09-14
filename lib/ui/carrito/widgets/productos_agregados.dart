import 'package:flutter/material.dart';
import 'package:rapidrink_app/ui/carrito/widgets/producto_card_carrito.dart';

class ProductosAgregados extends StatelessWidget {
  const ProductosAgregados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProductoCardCarrito(
          descripcion: "Huevos Avivel x 30 Und.",
          imagen: "assets/images/catalogo/huevos-avivel.png",
          precio: 20.00,
          cantidad: 2,
        ),
        ProductoCardCarrito(
          descripcion: "Leche Gloria",
          imagen: "assets/images/catalogo/leche-gloria.png",
          precio: 4.10,
          cantidad: 1,
        ),
      ],
    );
  }
}
