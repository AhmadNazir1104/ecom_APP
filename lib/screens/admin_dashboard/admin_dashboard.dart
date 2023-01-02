import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/screens/add_product/add_product_screen.dart';
import 'package:shopping_app/utility/app_colors.dart';
import 'package:shopping_app/widgets/custom_text_widget.dart';

import '../../widgets/dasboard_list_tile_widget.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: InkWell(
          onTap: (() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return addProduct();
              },
            ));
          }),
          child: Container(
            height: 50.h,
            width: 195.w,
            decoration: BoxDecoration(
              color: AppColors.yellowColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(
                child: text(
                    text: "Add New",
                    size: 16.sp,
                    color: AppColors.textWhiteColor)),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 10.h, bottom: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: (() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return AdminDashboard();
                          },
                        ));
                      }),
                      child: Icon(Icons.arrow_back_ios)),
                  InkWell(
                    onTap: (() {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: AppColors.textWhiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.r))),
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                              )
                            ],
                          );
                        },
                      );
                    }),
                    child: CircleAvatar(
                      radius: 30.r,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2340978/pexels-photo-2340978.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return DashboardListTilewWidget(
                        productName: "productName",
                        price: "price",
                        productDes: "productDes");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
