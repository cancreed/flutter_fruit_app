
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';

class ContainerInfoRelated extends StatelessWidget {
  const ContainerInfoRelated({
    Key? key, required this.image,
  }) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(borderRadius: FruitAppConst.borderRadius10,color: Colors.white),
      height: MediaQuery.of(context).size.height /14 ,width: MediaQuery.of(context).size.width /7,
      child: image,
    );
  }
}
