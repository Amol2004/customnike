
import 'package:flutter/material.dart';
import 'package:nikes/constants/app_color.dart';
import 'package:nikes/constants/app_image.dart';
import 'package:nikes/constants/app_string.dart';
import 'package:nikes/widgets/bottom_sheet_widget.dart';
import 'package:nikes/widgets/text_widget.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({super.key});

  @override
  State<SizeScreen> createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AppImages.shoes,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              height: 100,
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.chevron_left_sharp,
                        color: Colors.white,
                      ),
                    ),
                    TextWidget(
                      context: context,
                      data: AppString.mens,
                      fontSize: 20,
                      color: AppColors.whiteColor,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Show the bottom sheet when the last Icon is tapped
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return BottomSheetWidget();
                          },
                        );
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
