import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/catalogo/catalogo_view.dart';
import 'package:rapidrink_app/ui/inicio/widgets/producto_card_destacado.dart';

class ProductosDestacados extends StatelessWidget {
  const ProductosDestacados({Key? key}) : super(key: key);

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
                "Productos destacados",
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
                      builder: (BuildContext context) => const CatalogoView(),
                    ),
                  );
                },
                child: const Text(
                  "Ir al catalogo >>",
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
              ProductoCardDestacado(
                imagen: "assets/images/catalogo/huevos-avivel.png",
                descripcion: "Huevos Avivel x 30 Und.",
                precio: "S/ 20.00",
              ),
              ProductoCardDestacado(
                imagen: "assets/images/catalogo/leche-condensada-nestle.png",
                descripcion: "Leche Condensada Nestle",
                precio: "S/ 4.50",
              ),
              ProductoCardDestacado(
                imagen: "assets/images/catalogo/leche-gloria.png",
                descripcion: "Leche Gloria",
                precio: "S/ 4.10",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
