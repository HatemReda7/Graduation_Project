import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        title: const Text("Path2Job"),
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
                height: 20.h,
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
              Image.asset("assets/home_screen_item.png",),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 50.h,
                width: 200.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xff98C1D9),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Import from LinkIn",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, CreateCvScreen.routeName);
                },
                child: Container(
                  height: 50.h,
                  width: 200.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffEE6C4D),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "Create new CV",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                height: 50.h,
                width: 200.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xff3D5A80),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "View Templates",
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
