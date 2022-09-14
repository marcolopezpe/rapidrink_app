import 'package:flutter/material.dart';
import 'package:rapidrink_app/ui/components/bar_menu.dart';
import 'package:rapidrink_app/ui/components/drawer_menu.dart';
import 'package:rapidrink_app/ui/inicio/widgets/categorias_destacadas.dart';
import 'package:rapidrink_app/ui/inicio/widgets/productos_destacados.dart';

class InicioView extends StatelessWidget {
  const InicioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: const BarMenu("Inicio"),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Carousel(),
            CategoriasDestacadas(),
            ProductosDestacados(),
          ],
        ),
      ),
    );
  }
}
