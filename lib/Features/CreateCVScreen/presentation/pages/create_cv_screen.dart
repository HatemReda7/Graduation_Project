import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/contact_information_page.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/education_details_page.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/other_information_page.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/save_page.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/work_experience_page.dart';

class CreateCvScreen extends StatefulWidget {
  static const String routeName = "Create CV Screen";


  const CreateCvScreen({super.key});

  @override
  State<CreateCvScreen> createState() => _CreateCvScreenState();
}

class _CreateCvScreenState extends State<CreateCvScreen> {
  List<Widget> tabs = [
    const ContactInformationPage(),
    const WorkExperiencePage(),
    const EducationDetailsPage(),
    const OtherInformationPage(),
    const SavePage(),
  ];

  int selectedIndex = 0;

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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     SizedBox(
              //       width: 69.w,
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           CircleAvatar(
              //             radius: 15.r,
              //             backgroundColor: Colors.black,
              //             child: Image.asset(
              //               "assets/contact_information_icon.png",
              //               width: 25.w,
              //               height: 25.h,
              //             ),
              //           ),
              //           Text(
              //             "Contact Information",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(fontSize: 11.sp),
              //           ),
              //         ],
              //       ),
              //     ),
              //     SizedBox(
              //       width: 69.w,
              //       child: Column(
              //         children: [
              //           CircleAvatar(
              //               radius: 15.r,
              //               backgroundColor: Colors.grey,
              //               child: const Icon(
              //                 Icons.work_outline_outlined,
              //                 color: Color(0xff293241),
              //               )),
              //           Text(
              //             "Work Experience",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(fontSize: 11.sp),
              //           )
              //         ],
              //       ),
              //     ),
              //     SizedBox(
              //       width: 69.w,
              //       child: Column(
              //         children: [
              //           CircleAvatar(
              //               radius: 15.r,
              //               backgroundColor: Colors.grey,
              //               child: const Icon(
              //                 Icons.work_outline_outlined,
              //                 color: Color(0xff293241),
              //               )),
              //           Text(
              //             "Education Details",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(fontSize: 11.sp),
              //           )
              //         ],
              //       ),
              //     ),
              //     SizedBox(
              //       width: 69.w,
              //       child: Column(
              //         children: [
              //           CircleAvatar(
              //               radius: 15.r,
              //               backgroundColor: Colors.grey,
              //               child: const Icon(
              //                 Icons.more_horiz_outlined,
              //                 color: Color(0xff293241),
              //               )),
              //           Text(
              //             "Other Information",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(fontSize: 11.sp),
              //           )
              //         ],
              //       ),
              //     ),
              //     SizedBox(
              //       width: 69.w,
              //       child: Column(
              //         children: [
              //           CircleAvatar(
              //               radius: 15.r,
              //               backgroundColor: Colors.grey,
              //               child: const Icon(
              //                 Icons.save_outlined,
              //                 color: Color(0xff293241),
              //               )),
              //           Text(
              //             "Save/Download",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(fontSize: 11.sp),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              DefaultTabController(
                initialIndex: 0,
                length: 5,
                child: TabBar(
                    onTap: (index) {
                      selectedIndex = index;
                      setState(() {

                      });
                    },
                    automaticIndicatorColorAdjustment: true,
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    unselectedLabelColor: grey,
                    unselectedLabelStyle: TextStyle(fontSize: 11.sp),
                    indicatorColor: orange,
                    labelColor: orange,
                    tabs: const [
                      Tab(
                        icon: ImageIcon(
                            AssetImage("assets/contact_information_icon.png")),
                        text: "Contact Information",
                      ),
                      Tab(
                          icon: Icon(Icons.work_outline_outlined),
                          text: "Work Experience"),
                      Tab(
                        icon: ImageIcon(
                          AssetImage(
                            "assets/education_hat_icon.png",
                          ),
                        ),
                        text: "Education Details",
                      ),
                      Tab(
                          icon: Icon(Icons.more_horiz_outlined),
                          text: "Other Information"),
                      Tab(
                          icon: Icon(Icons.save_outlined),
                          text: "Save/Download"),
                    ]),
              ),
              SizedBox(
                height: 15.h,
              ),
              tabs[selectedIndex],
            ],
          ),
        ),
      ),
    );
  }
}
