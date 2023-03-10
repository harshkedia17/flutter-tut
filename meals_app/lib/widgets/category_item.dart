import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryItem(this.title, this.color,this.id);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed('/category-meals',arguments: {'id':id,'title':title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        // color: color,
        decoration: BoxDecoration(
            color: color,
            gradient: LinearGradient(
                colors: [color.withOpacity(.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
