import 'package:flutter/material.dart';
import 'package:recipesappg7/pages/recipe_page.dart';

class RecipeItem extends StatelessWidget {
  String urlImage;
  String title;
  String description;
  RecipeItem({
    required this.urlImage,
    required this.description,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(
              urlImage: urlImage,
              description: description,
              title: title,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(5, 5),
              blurRadius: 8,
            ),
          ],
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff626B92).withOpacity(0.3),
        ),
        width: double.infinity,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                urlImage,
                height: 200,
                fit: BoxFit.cover,
                width: double.infinity,
                alignment: Alignment.topCenter,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
