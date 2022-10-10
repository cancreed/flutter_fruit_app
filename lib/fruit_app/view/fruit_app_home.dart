import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/view/categories_fruit_app.dart';
import 'package:flutter_application_1/fruit_app/widgets/elevated_icon.dart';

import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_comment.small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_large.dart';

class FruitAppHome extends StatelessWidget {
  const FruitAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container( color: Colors.lightGreen[100], height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, bottom: 40, left: 15, right: 15),
            child: Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBoxImageTomato(context),
                  Column(
                    
                    children: [
                const TextHomeTittle(text: FruitAppConst.tittleTextHomeFirst),
               const TextHomeTittle(text: FruitAppConst.tittleTextHomeSecond),
                const SizedBox(height: 20,),
               const TextHomeCommand(text: FruitAppConst.tittleTextHomethree),
               const TextHomeCommand(text: FruitAppConst.tittleTextHomeFour,),
                    ],
                  ),
                  
                  

               Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   const ElevatedButtonHome(text:FruitAppConst.elevatedTextHomeName, ),
                 ],
               )
                ],
              ),
            )
          ),
        ),
      ),

    );
  }

  SizedBox SizedBoxImageTomato(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height /4,
            child: Image.asset(FruitAppConst.imageTomato, ));
  }
}


