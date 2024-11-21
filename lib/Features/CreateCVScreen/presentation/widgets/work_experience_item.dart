import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';

class WorkExperienceItem extends StatelessWidget {
  WorkExperienceItem({super.key});

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
            Text("Company Name",
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
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text("Job Title",
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
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text("Start Date",style: TextStyle(fontSize: 14.sp,color: darkBlue),),
            SizedBox(width: 110.w,),
            Text("End Date",style: TextStyle(fontSize: 14.sp,color: darkBlue))
          ],
        ),
        SizedBox(height: 5.h,),
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
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                ),
                items: months
                    .map((date) => DropdownMenuItem(value: date, child: Text(date)))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(width: 3.w,),
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
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
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
            SizedBox(width: 3.w,),
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
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                ),
                items: months
                    .map((date) => DropdownMenuItem(value: date, child: Text(date)))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(width: 3.w,),
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
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(color: Color(0xffADB6C2)),
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
        SizedBox(height: 5.h,),
        Row(
          children: [
            Text("Location",
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
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
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
          maxLines: 7,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.black, fontSize: 16.sp),
          decoration: InputDecoration(
            fillColor: grey,
            filled: true,
            hintStyle: TextStyle(fontSize: 15.sp, color: const Color(0xff7D7D7D)),
            hintText:
            "Describe your tasks, responsibilities and any competencies related to this work experience.",
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
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: Color(0xffADB6C2)),
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
