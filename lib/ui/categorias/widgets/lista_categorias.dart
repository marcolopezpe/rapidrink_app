import 'package:flutter/material.dart';
import 'package:rapidrink_app/ui/categorias/widgets/categoria_card.dart';

class ListaCategorias extends StatelessWidget {
  const ListaCategorias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 3,
      children: const [
        CategoriaCard(
          imagen: "assets/images/egg.svg",
          nombre: "Huevos",
        ),
        CategoriaCard(
          imagen: "assets/images/milk3.svg",
          nombre: "Leches",
        ),
        CategoriaCard(
          imagen: "assets/images/cheese.svg",
          nombre: "Quesos",
        ),
        CategoriaCard(
          imagen: "assets/images/yogurt.svg",
          nombre: "Yogurts",
        ),
      ],
    ));
  }
}
