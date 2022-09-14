import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/categorias/widgets/lista_categorias.dart';
import 'package:rapidrink_app/ui/components/bar_menu.dart';
import 'package:rapidrink_app/ui/components/drawer_menu.dart';

class CategoriasView extends StatelessWidget {
  const CategoriasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: const BarMenu("Categor\u{00ED}as"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Todas las Categor\u{00ED}as",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.kPrimary,
              ),
            ),
          ),
          SizedBox(height: 20),
          ListaCategorias()
        ],
      ),
    );
  }
}
