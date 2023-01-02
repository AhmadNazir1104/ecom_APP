import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utility/app_colors.dart';

class ProductDetailWidget extends StatelessWidget {
  final String productInfo;
  final String labelTxt;
  const ProductDetailWidget(
      {required this.productInfo, required this.labelTxt, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextFormField(
        style: TextStyle(
          fontSize: 16.sp,
          color: AppColors.textBlackColor,
        ),
        decoration: InputDecoration(
          focusColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,

          hintText: productInfo,

          //make hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),

          //create lable
          labelText: labelTxt,
          //lable style
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
