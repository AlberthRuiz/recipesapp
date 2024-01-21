import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipesappg7/models/recipe_model.dart';
import 'package:recipesappg7/widgets/recipe_item.dart';
import 'package:recipesappg7/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();
  List<Recipe> recipes = [
    Recipe(
        title: "Wafles",
        description:
            "Primero agregamos la leche, huevos, azúcar, sal y esencia de vainilla en nuestra licuadora y mezclamos bien durante 2 minutos.Luego con un colador tamizamos la harina y el polvo de hornear. Luego los incluimos en la mezcla anterior y mezclamos hasta formar una pasta lisa y uniforme.",
        urlImage:
            "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff29304B),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mis recetas",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Divider(),
                formulario(titleController, "Ingresa el título", "type"),
                formulario(descriptionController, "Ingresa la descripción",
                    "align-justify"),
                formulario(
                    urlImageController, "Ingresa la url de la imagen", "image"),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      recipes.add(Recipe(
                          title: titleController.text,
                          description: descriptionController.text,
                          urlImage: urlImageController.text));
                      setState(() {});
                      titleController.clear();
                      descriptionController.clear();
                      urlImageController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Color(0xffEDA971),
                    ),
                    child: Text(
                      "Agregar",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 40,
                  thickness: 3,
                  color: Color(0xff626B92),
                ),
                Text(
                  "Listado General",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                ...List.generate(
                    recipes.length,
                    (index) => RecipeItem(
                          urlImage: recipes[index].urlImage,
                          description: recipes[index].description,
                          title: recipes[index].title,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
