
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class ContainerSmallGreen extends StatelessWidget {
  const ContainerSmallGreen({
    Key? key, required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget,
      
      decoration: BoxDecoration(borderRadius: FruitAppConst.borderRadius25,color: Colors.green, ),
      height: MediaQuery.of(context).size.height /25,
      width: MediaQuery.of(context).size.width /12.5,
      
      
    );
  }
}