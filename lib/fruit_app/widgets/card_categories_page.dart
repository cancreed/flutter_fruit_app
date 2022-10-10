
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/view/fruit_app_info.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_categorie_button.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_comment.small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_medium.dart';

class CardCategories extends StatelessWidget {
  const CardCategories({
    Key? key, required this.text, required this.image,
  }) : super(key: key);
  final String text;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return 
       Card(
          shape: RoundedRectangleBorder(
              borderRadius: FruitAppConst.borderRadius25),
          child: Padding(
            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              image,
              Text(text, style: Theme.of(context).textTheme.headline6,),
              TextHomeCommand(text:FruitAppConst.fruitKg ),
              SizedBox(height: 2,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      TextTittleMedium(text: FruitAppConst.fruitMoney),
                      SizedBox(width: 5,),
                      Text(FruitAppConst.discoundFruit, style: TextStyle(color: FruitAppConst.colorBlueGrey,decoration: TextDecoration.lineThrough,decorationStyle: TextDecorationStyle.solid ,decorationThickness: 2),),
      
                      
                    ],
                  ),
                  Row(
                    children: [
                      ContainerIconSmall(widget: Icon(Icons.add), color: Colors.white)
                    ],
                  )
                ],
              )
              ],
            ),
          ),
        
      
    );
  }
}
