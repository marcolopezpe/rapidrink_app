import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/categorias/categorias_view.dart';
import 'package:rapidrink_app/ui/categorias/widgets/categoria_card.dart';

class CategoriasDestacadas extends StatelessWidget {
  const CategoriasDestacadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Categor\u{00ED}as destacadas",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.kPrimary,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const CategoriasView(),
                    ),
                  );
                },
                child: const Text(
                  "Ver todas >>",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
        ),
      ],
    );
  }
}
