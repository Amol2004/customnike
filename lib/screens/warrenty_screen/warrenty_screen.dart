import 'package:flutter/material.dart';
import 'package:nikes/constants/app_color.dart';
import 'package:nikes/constants/app_image.dart';
import 'package:nikes/constants/app_string.dart';
import 'package:nikes/widgets/text_widget.dart';

class WarrentyScreen extends StatefulWidget {
  const WarrentyScreen({Key? key}) : super(key: key);

  @override
  State<WarrentyScreen> createState() => _WarrentyScreenState();
}

class _WarrentyScreenState extends State<WarrentyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    AppImages.airJorden,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

SizedBox(
  height: 15,
),


                Column(
                  
                  children: [
                    Row(
                      children: [
                        TextWidget(
                          context: context,
                          data: AppString.essentialText,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextWidget(
                          context: context,
                          data: AppString.womenShoesText,
                          fontSize: 18,
                          color: AppColors.greyColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextWidget(
                          context: context,
                          data: AppString.nikeAirText,
                          fontSize: 80,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextWidget(
                          context: context,
                          data: AppString.smartLineText,
                          fontSize: 22,
                          color: AppColors.greyColor,
                        )
                      ],
                    ),



                    SizedBox(
                      height: 15,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                        Container(
                          height: 53,
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Next',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
