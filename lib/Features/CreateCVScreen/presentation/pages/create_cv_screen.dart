import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateCvScreen extends StatelessWidget {
  static const String routeName = "Create CV Screen";

  const CreateCvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Create New CV",
          style: TextStyle(fontSize: 21.sp),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Icon(
              Icons.error_outline_rounded,
              color: Colors.red,
              size: 25.sp,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(7.0.r),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 69.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: Colors.black,
                          child: Image.asset(
                            "assets/contact_information_icon.png",
                            width: 25.w,
                            height: 25.h,
                          ),
                        ),
                        Text(
                          "Contact Information",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 69.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.work_outline_outlined,
                              color: Color(0xff293241),
                            )),
                        Text(
                          "Work Experience",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 69.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.work_outline_outlined,
                              color: Color(0xff293241),
                            )),
                        Text(
                          "Education Details",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 69.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.more_horiz_outlined,
                              color: Color(0xff293241),
                            )),
                        Text(
                          "Other Information",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 69.w,
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.save_outlined,
                              color: Color(0xff293241),
                            )),
                        Text(
                          "Save/Download",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11.sp),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Contact Information",
                style: TextStyle(fontSize: 20.sp),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsets.all(12.r),
                child: TextFormField(
                  cursorColor: Colors.black,
                  maxLines: 1,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        Text("Full Name"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    // labelText: "Full Name",
                    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                    fillColor: Color(0xffADB6C2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.all(12.r),
                child: TextFormField(
                  cursorColor: Colors.black,
                  maxLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        Text("Email Adress"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    // labelText: "Full Name",
                    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                    fillColor: Color(0xffADB6C2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.all(12.r),
                child: TextFormField(
                  cursorColor: Colors.black,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        Text("Phone Number"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    // labelText: "Full Name",
                    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                    fillColor: Color(0xffADB6C2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.all(12.r),
                child: TextFormField(
                  cursorColor: Colors.black,
                  maxLines: 1,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    label: Row(
                      children: [
                        Text("Address"),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    // labelText: "Full Name",
                    labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
                    fillColor: Color(0xffADB6C2),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xffADB6C2)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xff3D5A80),
                    radius: 10.r,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text("Other Details"),
                ],
              ),
              SizedBox(height: 50.h,),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(200.w, 50.h)),
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xffEE6C4D)),shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)))),
                  child: Row(
                    children: [
                      Text(
                        "Next Step",
                        style: TextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24.sp,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
