import 'package:flutter/material.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';
import 'package:rapidrink_app/ui/catalogo/widgets/lista_productos.dart';
import 'package:rapidrink_app/ui/components/bar_menu.dart';
import 'package:rapidrink_app/ui/components/drawer_menu.dart';

class CatalogoView extends StatelessWidget {
  const CatalogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: const BarMenu("Cat\u{00E1}logo"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Cat\u{00E1}logo de Productos",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.kPrimary,
              ),
            ),
          ),
          ListaProductos(),
        ],
      ),
    );
  }
}
