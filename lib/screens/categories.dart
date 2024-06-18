import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/data/dummy_data.dart';
import 'package:myapp/widgets/category_grid_item.dart';
class CategoriesScreen extends StatelessWidget{
 const CategoriesScreen({super.key});
 @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title:const Text('Pick your Category'),
      ),
      body: GridView(
        padding:const EdgeInsets.all(24),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
        children:[ 
        //meathod 1 (should be put in [] before using as it gives individual elements)
          for(final category in availableCategories)
                CategoryGridItem(category: category)
          // meathod 2 
          // availableCategories.map((category)=>CategoryGridItem(category: category)).toList()
          
        ],
        ),
    );
  }
    // TODO: implement ==
    
  
}