import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_app/screens/admin_dashboard/admin_dashboard.dart';
import 'package:shopping_app/utility/app_colors.dart';
import 'package:shopping_app/widgets/bottom_nav_sheet.dart';
import 'package:shopping_app/widgets/dasboard_list_tile_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 6.h,
                                            width: 140.w,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    CircleAvatar(
                                      radius: 30.r,
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/2340978/pexels-photo-2340978.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                    ),
                                    SizedBox(
                                      height: 10.w,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              BottomSheetWidget(
                                                  icon: Icons.person,
                                                  info: "Zafar Iqbal"),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              BottomSheetWidget(
                                                  icon: Icons.person,
                                                  info: "Johar Town Lahore"),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              BottomSheetWidget(
                                                  icon: Icons.person,
                                                  info:
                                                      "zafariqbal9288@gmail.com"),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              BottomSheetWidget(
                                                  icon: Icons.person,
                                                  info: "Name")
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
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
