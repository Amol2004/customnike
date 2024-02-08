import 'package:flutter/material.dart';
import 'package:nikes/constants/app_color.dart';
import 'package:nikes/constants/app_image.dart';
import 'package:nikes/constants/app_string.dart';
import 'package:nikes/widgets/text_form_field_widget.dart';
import 'package:nikes/widgets/text_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.chevron_left_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      TextWidget(
                        context: context,
                        data: AppString.mens,
                        color: AppColors.greyColor,
                        fontSize: 16,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            size: 20,
                            color: AppColors.redColor,
                          ),
                          TextWidget(
                            context: context,
                            data: AppString.mondolibugText,
                            fontSize: 18,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.back_hand_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldWidget(
                hintText: AppString.lookingForShoesText,
                fontSize: 19,
              ),
  


  SizedBox(
    height: 20,
  ),

  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

Container(
  height: 50,
  width: 100,
  child: FloatingActionButton.extended(
    
    backgroundColor: Colors.red,
    onPressed: () {
      // Add your onPressed code here!
    },
    label: const Text("Nike",style: TextStyle(fontSize: 16,color: AppColors.whiteColor),),
    icon: CircleAvatar(
      child: ClipOval(
        child: Image.asset(
          AppImages.nikeLogo,
          width: 45,
          height: 45,
          fit: BoxFit.cover,
        ),
      ),
    ),
    
  ),
),

Container(
  height: 50,
  width: 50,
  child: CircleAvatar(
  
    
    child: Image.asset(AppImages.pumaLogo,
    ),
  ),
),

Container(height: 50,
  width: 50,
  child: CircleAvatar(
    child: Image.asset(AppImages.underArmourLogo),
  ),
),

Container(height: 50,
  width: 50,
  child: CircleAvatar(
    child: Image.asset(AppImages.adidasLogo),
  ),
),

Container(height: 50,
  width: 50,
  child: CircleAvatar(
    child: Image.asset(AppImages.converse),
  ),
),
    ],
  )


            ],
          ),
        ),
      ),
    );
  }
}
