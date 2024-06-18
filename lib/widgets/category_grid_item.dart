import 'package:flutter/material.dart';
import 'package:myapp/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
  });
  final Category category;
  Widget build(context) {
    // can also use GestureDetector for setting the ontapped but it will not give a visual feedback
    return InkWell(
      onTap:(){},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(14),
      child: Container(
       
        padding:const EdgeInsets.all(16) ,
        decoration: BoxDecoration(
           borderRadius:BorderRadius.circular(14),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            ),
        ),
        child: Text(category.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color:Theme.of(context).colorScheme.onSurface,
        ),
        ),
      ),
    );
  }
}
