import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rapidrink_app/core/theme/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: SvgPicture.asset("assets/images/milk2.svg"),
        ),
        const SizedBox(height: 10),
        const Text(
          "Rapidrink",
          style: TextStyle(
            color: AppColors.kPrimary,
            fontSize: 40,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        )
      ],
    );
  }
}
