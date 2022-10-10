import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_icon_button.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_info_related.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_small_green.dart';
import 'package:flutter_application_1/fruit_app/widgets/elevated_icon.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_%C4%B1con_button_small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_comment.small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_large.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_medium.dart';

class FruitAppInfo extends StatelessWidget {
  const FruitAppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 80,  left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RowTopIcons(),
            Image.asset(FruitAppConst.image_brokoli),
            SizedBox(height: 10,),
            TextHomeTittle(text: FruitAppConst.brokoliImageText),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowFruitTittleBuy(),
                RowFruitIcon(),], ),
                SizedBox(height: 30,),
                TextTittleMedium(text: FruitAppConst.fruitDescription),
                  FruitAppConst.sizedBoxheight15,
                TextHomeCommand(text: FruitAppConst.fruitDescriptionCommend),
                FruitAppConst.sizedBoxheight15,
                TextTittleMedium(text: FruitAppConst.relatedItem),
                SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: RowRelatedSmallImages(),
                  
                ),
                SizedBox(height: 10,),
                ElevatedButtonHome(text:FruitAppConst.elevatedTextInfoName, ),
                 ],
        ),
      ),
    );
  }

  Row RowRelatedSmallImages() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ContainerInfoRelated(image: Image.asset( FruitAppConst.imageTomato)),
                        TextHomeCommand(text: FruitAppConst.tomatoImageText)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        ContainerInfoRelated(image: Image.asset(FruitAppConst.imageBiber)),
                        TextHomeCommand(text: FruitAppConst.biberImageText)
                      
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                         ContainerInfoRelated(image: Image.asset(FruitAppConst.imageMarul)),
                         TextHomeCommand(text: FruitAppConst.marulImageText)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        ContainerInfoRelated(image: Image.asset(FruitAppConst.imagesHavuc)),
                        TextHomeCommand(text: FruitAppConst.havucImageText)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        ContainerInfoRelated(image: Image.asset(FruitAppConst.imageEt)),
                        TextHomeCommand(text: FruitAppConst.imageEtText)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                          ContainerInfoRelated(image: Image.asset(FruitAppConst.imageMuz)),
                          TextHomeCommand(text: FruitAppConst.imageMuzText)
              
                      ],
                    )
                  ],
                );
  }

  Row RowFruitIcon() {
    return Row(
                children: [
                  ContainerSmallGreen(widget: Center(child: Icon(Icons.remove,color: FruitAppConst.colorWhite,size: 30,)),),
                FruitAppConst.sizedBoxwidth5,
                  TextTittleMedium(text: FruitAppConst.fruitKg),
                  FruitAppConst.sizedBoxwidth5,
                    ContainerSmallGreen(widget: Center(child: Icon(Icons.add,color: FruitAppConst.colorWhite,size: 30,)),),
                ],
              );
  }

  Row RowFruitTittleBuy() {
    return Row(
                children: [
                  TextTittleMedium(text: FruitAppConst.fruitMoney),
                  FruitAppConst.sizedBoxwidth5,
                   Text(FruitAppConst.discoundFruit, style: TextStyle(color: FruitAppConst.colorBlueGrey,decoration: TextDecoration.lineThrough,decorationStyle: TextDecorationStyle.solid ,decorationThickness: 2),),
                ],
              );
  }

  Row RowTopIcons() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContainerIconApp(widget: Icon(Icons.arrow_back_ios), color: FruitAppConst.colorBlack),
              ContainerIconApp(widget: Icon(Icons.search), color: FruitAppConst.colorBlack)

            ],
          );
  }
}
