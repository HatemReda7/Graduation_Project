import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactInformationPage extends StatelessWidget {
  const ContactInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contact Information",
          style: TextStyle(fontSize: 20.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
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
                  const Text("Full Name"),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              // labelText: "Full Name",
              labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              fillColor: const Color(0xffADB6C2),
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
        SizedBox(
          height: 10.h,
        ),
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
                  const Text("Email Address"),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              // labelText: "Full Name",
              labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              fillColor: const Color(0xffADB6C2),
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
        SizedBox(
          height: 10.h,
        ),
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
                  const Text("Phone Number"),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              // labelText: "Full Name",
              labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              fillColor: const Color(0xffADB6C2),
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
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.all(12.r),
          child: TextFormField(
            cursorColor: Colors.black,
            maxLines: 1,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              label: Row(
                children: [
                  const Text("Address"),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "*",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              // labelText: "Full Name",
              labelStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              fillColor: const Color(0xffADB6C2),
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
        SizedBox(
          height: 20.h,
        ),
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
        SizedBox(
          height: 50.h,
        ),
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(200.w, 50.h)),
                backgroundColor:
                const WidgetStatePropertyAll(Color(0xffEE6C4D)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)))),
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
    );
  }
}
