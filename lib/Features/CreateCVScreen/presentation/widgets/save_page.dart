import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavePage extends StatelessWidget {
  const SavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Placeholder(),
        SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(150.w, 50.h)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.blue),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)))),
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                )),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: WidgetStatePropertyAll(Size(150.w, 50.h)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.red),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)))),
                child: Text(
                  "Discard",
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                )),
          ],
        )
      ],
    );
  }
}
