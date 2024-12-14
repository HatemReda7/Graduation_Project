import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';
import 'package:graduation_project_main/Features/ChatScreen/presentation/pages/chat_screen.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/pages/create_cv_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff98C1D9),
        centerTitle: true,
        title: Text(
          "Path2Job",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28.sp, color: darkBlue),
        ),
        elevation: 0,
        toolbarHeight: 90.h,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200.r),
          bottomRight: Radius.circular(200.r),
        )),
      ),
      body: Center(
        child: Container(
          width: 300.w,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Create a unique resume with your phone!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xff293241)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                "assets/home_screen_item.png",
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 50.h,
                width: 220.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: lightBlue, borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Import from LinkedIn",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, CreateCvScreen.routeName);
                },
                child: Container(
                  height: 50.h,
                  width: 220.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: orange, borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Create new CV",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 50.h,
                width: 220.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: blue, borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  "View Templates",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: null,
              shape: const CircleBorder(),
              backgroundColor: Colors.grey,
              splashColor: blue,
              onPressed: () {},
              child: Icon(
                Icons.settings,
                color: Colors.black,
                size: 25.sp,
              ),
            ),
            FloatingActionButton(
              heroTag: null,
              shape: const CircleBorder(),
              backgroundColor: Colors.grey,
              splashColor: blue,
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.routeName);
              },
              child: Icon(
                Icons.chat,
                color: Colors.black,
                size: 25.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
