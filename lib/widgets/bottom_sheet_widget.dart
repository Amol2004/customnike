import 'package:flutter/material.dart';
import 'package:nikes/constants/app_color.dart';
import 'package:nikes/constants/app_image.dart';
import 'package:nikes/constants/app_string.dart';

import 'package:nikes/widgets/text_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: double.maxFinite,
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                context: context,
                data: AppString.nikeAirJorder,
                fontSize: 25,
                // fontWeight: FontWeight.bold,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.textGreyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 35,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7, right: 7),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.firstCircleColor,
                          shape: BoxShape.circle,
                        ),
                        width: 35,
                        height: 35,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.secondCircleColor,
                      ),
                      width: 33,
                      height: 33,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.thirdCircleColor,
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              TextWidget(
                context: context,
                data: AppString.discriptionFirstLine,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  TextWidget(
                    context: context,
                    data: AppString.galleryText,
                    fontSize: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(AppImages.greyShoes),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(AppImages.greyShoes),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    height: 60,
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(AppImages.greyShoes),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    context: context,
                    data: AppString.sizeText,
                    fontSize: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            context: context,
                            data: AppString.euText,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          TextWidget(context: context, data: AppString.usText),
                          const SizedBox(
                            width: 15,
                          ),
                          TextWidget(context: context, data: AppString.ukText),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 23,
                child: Text("38"),
              ),
              const CircleAvatar(
                radius: 23,
                child: Text("39"),
              ),
              GestureDetector(
                onTap: () {
                  // Show a new bottom sheet when "41" is clicked
                  _showNewBottomSheet(context, "40");
                },
                child: const CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.red,
                  child: Text("40"),
                ),
              ),
              const CircleAvatar(
                radius: 23,
                child: Text("41"),
              ),
              const CircleAvatar(
                radius: 23,
                child: Text("42"),
              ),
              const CircleAvatar(
                radius: 23,
                child: Text("43"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
          ),
        ],
      ),
    );
  }

  void _showNewBottomSheet(BuildContext context, String text) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.maxFinite,
          height: 130,
          // Build your new bottom sheet content here
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextWidget(
                          context: context,
                          data: AppString.price,
                          fontSize: 18,
                        ),
                        TextWidget(
                          context: context,
                          data: AppString.dollerNumber,
                          fontSize: 30,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 53,
                          width: 155,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Add to Cart',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
