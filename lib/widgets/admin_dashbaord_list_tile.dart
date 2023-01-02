import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utility/app_colors.dart';
import 'custom_text_widget.dart';

class AdminListTile extends StatelessWidget {
  const AdminListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(),
      margin: EdgeInsets.only(bottom: 10, left: 10.w, right: 10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            AppColors.yellowColor,
            AppColors.yellowColor,
          ])),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/images/shoes.jpg",
            width: 120,
            height: 300.h,
            fit: BoxFit.cover,
          ),
        ),
        title: text(
            text: "Product Name", size: 16.sp, color: AppColors.textWhiteColor),
        subtitle: text(
            text: "Product Description",
            maxLines: 4,
            size: 8.sp,
            color: AppColors.textWhiteColor),
        trailing: Padding(
          padding: EdgeInsets.only(top: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text(text: "Price", size: 16.sp, color: AppColors.textWhiteColor),
              InkWell(
                onTap: (() {}),
                child: Icon(
                  Icons.shopping_cart,
                  color: AppColors.textWhiteColor,
                  size: 25.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
