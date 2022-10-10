import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class ContainerInTextTittle extends StatelessWidget {
  const ContainerInTextTittle({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline5?.copyWith(color: FruitAppConst.colorBlack),);
  }
}
