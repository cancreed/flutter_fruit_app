import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class TextHomeCommand extends StatelessWidget {
  const TextHomeCommand({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:FruitAppConst.colorBlueGrey,fontWeight:FontWeight.w700),);
  }
}
