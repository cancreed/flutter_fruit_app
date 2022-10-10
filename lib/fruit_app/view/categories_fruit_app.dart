import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fruit_app/view/fruit_app_home.dart';
import 'package:flutter_application_1/fruit_app/view/fruit_app_info.dart';
import 'package:flutter_application_1/fruit_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter_application_1/fruit_app/widgets/card_categories_page.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_categorie_button.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_categories_tittle.dart';
import 'package:flutter_application_1/fruit_app/widgets/container_icon_button.dart';
import 'package:flutter_application_1/fruit_app/widgets/fruit_app_const.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_%C4%B1con_button_small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_comment.small.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_large.dart';
import 'package:flutter_application_1/fruit_app/widgets/text_tittle_medium.dart';
import 'package:super_bottom_navigation_bar/super_bottom_navigation_bar.dart';
import 'package:super_bottom_navigation_bar/super_bottom_navigation_bar.dart';


class CategoriesFruitApp extends StatelessWidget {
   CategoriesFruitApp({super.key});
        Color primaryColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 70, right: 15, left: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [TopCategoriesIconLEft(), TopCategoriesIconRight()],
              ),
              SizedBox(height: 15),
              ContainerCategories(context),
              PopularItemsSeeAll(),
              Row(
                children: [
                  SizedBoxMarul(context),
                  SizedBoxBiber(context)
                ],
              ),
               NewItemsSeeAll(),
             Row(
                children: [
                  SizedBoxHavuc(context),
                  SizedBoxBrokoli(context) ],),
              FreshItemsSeeAll(),
              Row(
                children: [
                  SizedBoxTomato(context),
                  SizedBoxPatates(context) ])
            ]
          
          ),
          
        ),
      ),
   bottomNavigationBar: BottomNavigation(),
      
    );
  }

  Row PopularItemsSeeAll() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextTittleMedium(text: FruitAppConst.categoriesTitleTextFirst),
                TextButtonSmall(text: FruitAppConst.buttonTextGreen)
              ],
            );
  }

  Row NewItemsSeeAll() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextTittleMedium(text: FruitAppConst.categoriesTitleTextSecond),
                TextButtonSmall(text: FruitAppConst.buttonTextGreen),
              ],
            );
  }

  Row FreshItemsSeeAll() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextTittleMedium(text: FruitAppConst.categoriesTitleTextThree),
                TextButtonSmall(text: FruitAppConst.buttonTextGreen)
              ],
            );
  }

  SizedBox SizedBoxBiber(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: CardCategories(image: Image.asset(FruitAppConst.imageBiber,fit: BoxFit.fill,height: MediaQuery.of(context).size.height /8.5, width: MediaQuery.of(context).size.width /2,), text: FruitAppConst.biberImageText,),
                  
                );
  }

  SizedBox SizedBoxMarul(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: CardCategories(image:Image.asset(FruitAppConst.imageMarul ,fit: BoxFit.fill,height: MediaQuery.of(context).size.height /8.5), text: FruitAppConst.marulImageText,),);
  }

  SizedBox SizedBoxPatates(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: CardCategories(image: Image.asset(FruitAppConst.imagePatates,fit: BoxFit.fill, height: MediaQuery.of(context).size.height /8.5,), text: FruitAppConst.patatesImageText,)
                  
                );
  }

  SizedBox SizedBoxTomato(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: CardCategories(image:Image.asset(FruitAppConst.imageTomato ,fit: BoxFit.fill, height: MediaQuery.of(context).size.height /8.5,), text: FruitAppConst.tomatoImageText,),);
  }

  SizedBox SizedBoxHavuc(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: CardCategories(image:Image.asset(FruitAppConst.imagesHavuc ,fit: BoxFit.fill, height: MediaQuery.of(context).size.height /8.5,), text: FruitAppConst.marulImageText,),);
  }

  SizedBox SizedBoxBrokoli(BuildContext context) {
    return SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FruitAppInfo(),));
                  }, child: CardCategories(image: Image.asset(FruitAppConst.image_brokoli,fit: BoxFit.fill, height: MediaQuery.of(context).size.height /8.5,), text: FruitAppConst.brokoliImageText,))
                  
                );
  }

  SuperBottomNavigationBar BottomNavigation() {
    return SuperBottomNavigationBar(backgroundColor: Colors.white,
              currentIndex: 1,
              items: [
                SuperBottomNavigationBarItem(
                  unSelectedIcon: Icons.home_outlined,
                  selectedIcon: Icons.home,
                  splashColor: primaryColor,
                  borderBottomColor: primaryColor,
                  backgroundShadowColor: primaryColor,
                  selectedIconColor: primaryColor,
                  unSelectedIconColor: Colors.grey
                ),
                SuperBottomNavigationBarItem(
                    unSelectedIcon: Icons.shopping_cart,
                    selectedIcon: Icons.shopping_cart,
                    splashColor: primaryColor,
                    borderBottomColor: primaryColor,
                    backgroundShadowColor: primaryColor,
                    selectedIconColor: primaryColor,
                    unSelectedIconColor: Colors.grey
                ),
                 SuperBottomNavigationBarItem(
                    unSelectedIcon: Icons.favorite,
                    selectedIcon: Icons.favorite,
                    splashColor: primaryColor,
                    borderBottomColor: primaryColor,
                    backgroundShadowColor: primaryColor,
                    selectedIconColor: primaryColor,
                    unSelectedIconColor: Colors.grey
                ),
              
                
              ],
              onSelected: (index){
                print('tab $index');
              },
            );
  }

  Container ContainerCategories(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: FruitAppConst.borderRadius25,
          color: Colors.lightGreen[100]),
      child: Row(
        children: [RowContainerText(), RowImageContainer(context)],
      ),
    );
  }

  Row RowImageContainer(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          FruitAppConst.imageTomatoContainer,
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 4,
        )
      ],
    );
  }

  Row RowContainerText() {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, right: 15, left: 15, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerInTextTittle(
                  text: FruitAppConst.containerWriteCategoriesFirst),
              ContainerInTextTittle(
                  text: FruitAppConst.containerWrieCategoriesSecond),
              ClipRRect(
                borderRadius: FruitAppConst.borderRadius25,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    FruitAppConst.buttonTextCategories,
                    style: TextStyle(color: Colors.green),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Row TopCategoriesIconRight() {
    return Row(
      children: [ContainerIconApp(widget: Icon(Icons.search), color: Colors.black,)],
    );
  }

  Row TopCategoriesIconLEft() {
    return Row(
      children: [
        ContainerIconButton(widget: Icon(Icons.sort)),
        SizedBox(
          width: 10,
        ),
        TextHomeCommand(text: FruitAppConst.topWriteCategoriesText),
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
      ],
    );
  }
}
