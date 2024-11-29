import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/other_information_item.dart';

class OtherInformationPage extends StatelessWidget {
  const OtherInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Other Information",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: darkBlue)),
          SizedBox(height: 10.h,),
          const OtherInformationItem(),
          SizedBox(height: 10.h,),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(250.w, 50.h)),
                  backgroundColor:
                  const WidgetStatePropertyAll(orange),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Next Step",
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
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
    );
  }
}
