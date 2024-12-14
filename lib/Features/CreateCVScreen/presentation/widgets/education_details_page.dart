import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/education_details_item.dart';

class EducationDetailsPage extends StatefulWidget {
  const EducationDetailsPage({super.key});

  @override
  State<EducationDetailsPage> createState() => _EducationDetailsPageState();
}

class _EducationDetailsPageState extends State<EducationDetailsPage> {
  List<Widget> cards = [EducationDetailsItem()];
  List<bool> visibility = [true];

  void deleteCard(int index) {
    setState(() {
      visibility.removeAt(index);
      cards.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Column(
        children: [
          SizedBox(
            height: 400.h,
            child: cards.isEmpty
                ? Center(
                    child: Text(
                    "No Education Details Added!",
                    style: TextStyle(fontSize: 20.sp, color: darkBlue),
                  ))
                : ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: darkBlue,
                      thickness: 5.h,
                      height: 50.h,
                    ),
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      return Visibility(
                        visible: visibility[index],
                        child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Text(
                                "Education Details ${index + 1}",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                              Row(
                                children: [
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        deleteCard(index);
                                        setState(() {});
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                        size: 25.sp,
                                      ))
                                ],
                              ),
                              EducationDetailsItem(),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ElevatedButton(
              onPressed: () {
                cards.add(EducationDetailsItem());
                visibility.add(true);
                setState(() {});
              },
              style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(160.w, 50.h)),
                  backgroundColor: const WidgetStatePropertyAll(blue),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)))),
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 25.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Add New",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ],
              )),
          SizedBox(
            height: 15.h,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(250.w, 50.h)),
                  backgroundColor: const WidgetStatePropertyAll(orange),
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
