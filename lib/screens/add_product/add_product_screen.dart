import 'package:flutter/material.dart';
import 'package:shopping_app/utility/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shopping_app/widgets/product_details_widget.dart';

class addProduct extends StatefulWidget {
  const addProduct({super.key});

  @override
  State<addProduct> createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              ImagePick();
            },
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(30.r)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/shoes.jpg"))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                child: Column(
                  children: [
                    ProductDetailWidget(
                        productInfo: "Product Name", labelTxt: "Product Name"),
                    ProductDetailWidget(
                        productInfo: "Product Price",
                        labelTxt: "Product Price"),
                    ProductDetailWidget(
                        productInfo: "Product Description",
                        labelTxt: "Product Description")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void ImagePick() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
  }
}
