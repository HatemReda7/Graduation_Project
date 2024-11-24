import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';

class EducationDetailsItem extends StatelessWidget {
  EducationDetailsItem({super.key});

  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  final List<int> years = List.generate(51, (index) => 2030 - index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("School / University",
                style: TextStyle(fontSize: 16.sp, color: darkBlue)),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            )
          ],
        ),
        TextFormField(
          cursorColor: Colors.black,
          maxLines: 1,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.black, fontSize: 14.sp),
          decoration: InputDecoration(
            fillColor: grey,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Colors.white),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: grey),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text("Subject", style: TextStyle(fontSize: 16.sp, color: darkBlue)),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            ),
            SizedBox(
              width: 140.w,
            ),
            Text("Degree", style: TextStyle(fontSize: 16.sp, color: darkBlue)),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 200.w,
              child: TextFormField(
                cursorColor: Colors.black,
                maxLines: 1,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            SizedBox(
              width: 100.w,
              child: TextFormField(
                cursorColor: Colors.black,
                maxLines: 1,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text(
              "Start Date",
              style: TextStyle(fontSize: 14.sp, color: darkBlue),
            ),
            SizedBox(
              width: 110.w,
            ),
            Text("End Date", style: TextStyle(fontSize: 14.sp, color: darkBlue))
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 75.w,
              height: 50.h,
              child: DropdownButtonFormField<String>(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
                items: months
                    .map((date) =>
                        DropdownMenuItem(value: date, child: Text(date)))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 78.w,
              height: 50.h,
              child: DropdownButtonFormField<int>(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
                items: years.map<DropdownMenuItem<int>>((int year) {
                  return DropdownMenuItem<int>(
                    value: year,
                    child: Text(year.toString()),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 75.w,
              height: 50.h,
              child: DropdownButtonFormField<String>(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
                items: months
                    .map((date) =>
                        DropdownMenuItem(value: date, child: Text(date)))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            SizedBox(
              width: 78.w,
              height: 50.h,
              child: DropdownButtonFormField<int>(
                alignment: Alignment.center,
                decoration: InputDecoration(
                  fillColor: grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: grey),
                  ),
                ),
                items: years.map<DropdownMenuItem<int>>((int year) {
                  return DropdownMenuItem<int>(
                    value: year,
                    child: Text(year.toString()),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            Text("Description",
                style: TextStyle(fontSize: 16.sp, color: darkBlue)),
            SizedBox(
              width: 5.w,
            ),
            Text(
              "*",
              style: TextStyle(color: Colors.red, fontSize: 16.sp),
            )
          ],
        ),
        TextFormField(
          cursorColor: Colors.black,
          maxLines: 5,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.black, fontSize: 16.sp),
          decoration: InputDecoration(
            fillColor: grey,
            filled: true,
            hintStyle:
                TextStyle(fontSize: 15.sp, color: const Color(0xff7D7D7D)),
            hintText:
                "Add a description about your education degree. Include any detail about your courses that can relate to your future employer.",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Colors.white),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: grey),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
