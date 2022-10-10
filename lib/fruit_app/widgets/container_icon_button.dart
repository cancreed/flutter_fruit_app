import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';
class ContainerIconButton extends StatelessWidget {
  const ContainerIconButton({
    Key? key, required this.widget,
  }) : super(key: key);
final Widget widget;
  @override
  Widget build(BuildContext context) {
    return ContainerIconApp(widget: Icon(Icons.sort), color: Colors.black,);
  }
}

class ContainerIconApp extends StatelessWidget {
  const ContainerIconApp({
    Key? key,
    required this.widget, required this.color,
  }) : super(key: key);

  final Widget widget;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 10,
      decoration:  BoxDecoration(borderRadius: FruitAppConst.borderRadius25,color:FruitAppConst.colorWhite),
      
      child: widget,
    );
  }
}



