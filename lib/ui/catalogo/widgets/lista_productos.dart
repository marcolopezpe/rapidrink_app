import 'package:flutter/material.dart';
import 'package:rapidrink_app/ui/catalogo/widgets/producto_card.dart';

class ListaProductos extends StatelessWidget {
  const ListaProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        children: const [
          ProductoCard(
            imagen: "assets/images/catalogo/huevos-avivel.png",
            descripcion: "Huevos Avivel x 30 Und.",
            precio: "S/ 20.00",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/huevos-avivel-carton.png",
            descripcion: "Huevos Avivel x 30 Und. (Carton)",
            precio: "S/ 17.00",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/huevos-pardos-tottus-15und.png",
            descripcion: "Huevos Pardos Tottus x 12 Und.",
            precio: "S/ 11.50",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/leche-condensada-gloria.png",
            descripcion: "Leche Condensada Gloria",
            precio: "S/ 4.30",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/leche-condensada-nestle.png",
            descripcion: "Leche Condensada Nestle",
            precio: "S/ 4.50",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/leche-gloria.png",
            descripcion: "Leche Gloria",
            precio: "S/ 4.10",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/queso-bonle.png",
            descripcion: "Queso Bonle",
            precio: "S/ 5.90",
          ),
          ProductoCard(
            imagen: "assets/images/catalogo/queso-fresco-light.png",
            descripcion: "Queso Fresco Light",
            precio: "S/ 5.30",
          ),
        ],
      ),
    );
  }
}
