import 'package:flutter/material.dart';
import 'package:nikes/constants/app_image.dart';

class ShoesProduct extends StatelessWidget {
  const ShoesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.shoesImage),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.shoesImage),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(AppImages.shoesImage),
        ),
      ],
    ));
  }
}



// import 'package:flutter/material.dart';

// class ShoesProduct extends StatelessWidget {
//   const ShoesProduct({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             _buildSmallImage("assets/images/shoesImage.png"),
//             _buildSmallImage("assets/images/shoesImage.png"),
//             _buildSmallImage("assets/images/shoesImage.png"),
//             // Add more images as needed
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSmallImage(String ) {
//     return Container(
//       height: 50,
//       width: 50,
//       margin: EdgeInsets.all(8.0),
//       child: Image.asset("assets/images/shoesImage.png"),
//     );
//   }
// }
