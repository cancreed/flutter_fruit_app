
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/view/categories_fruit_app.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class ElevatedButtonHome extends StatelessWidget {
  const ElevatedButtonHome({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoriesFruitApp()));
              },
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: FruitAppConst.colorWhite),
              ),
            )));
  }
}
