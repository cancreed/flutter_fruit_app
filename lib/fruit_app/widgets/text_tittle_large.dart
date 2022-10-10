
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class TextHomeTittle extends StatelessWidget {
  const TextHomeTittle({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline4?.copyWith(color: FruitAppConst.colorBlack,fontSize: 35,fontWeight: FontWeight.w500));
  }
}