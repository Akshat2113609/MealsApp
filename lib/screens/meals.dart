import 'package:flutter/material.dart';
import 'package:myapp/models/meal.dart';

class MealsScreen extends StatelessWidget{
  const MealsScreen({super.key, 
  required this.title,
  required this.meals
  });
final String title;
final List<Meal>meals;
  @override
  Widget build(context){
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx,index)=> Text(meals[index].title),
      );
    if(meals.isEmpty){
      
      content=Center(child: Column(mainAxisSize:MainAxisSize.min,
      children:[
     Text('Uh oh....nothing to see here',
     style: Theme.of(context).textTheme.headlineLarge!.copyWith(color:Theme.of(context).colorScheme.onSurface),
     ),
     
     const SizedBox(height:16),
       Text('Try selecting a different category', 
      style:Theme.of(context).textTheme.bodyLarge!.copyWith(color:Theme.of(context).colorScheme.onSurface
      ),
      ),
      ],
      )
      );
    }
    return Scaffold(
      appBar:AppBar(
        title:Text(title),
      ) ,
        body: content,
      );
  }
}