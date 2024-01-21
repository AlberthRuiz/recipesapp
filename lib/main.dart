import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipesappg7/pages/form_page.dart';
import 'package:recipesappg7/pages/home_page.dart';
import 'package:recipesappg7/pages/list_view_page.dart';
import 'package:recipesappg7/pages/recipe_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      // home: RecipePage(
      //   title: "Wafles",
      //   description:
      //       "Primero agregamos la leche, huevos, azúcar, sal y esencia de vainilla en nuestra licuadora y mezclamos bien durante 2 minutos.Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.",
      //   urlImage:
      //       "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      // ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    ),
  );
}
