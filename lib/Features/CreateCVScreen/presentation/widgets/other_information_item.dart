import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';
import 'package:graduation_project_main/Features/CreateCVScreen/presentation/widgets/language_item.dart';

class OtherInformationItem extends StatefulWidget {
  const OtherInformationItem({super.key});

  @override
  State<OtherInformationItem> createState() => _OtherInformationItemState();
}

class _OtherInformationItemState extends State<OtherInformationItem> {
  List<String> references = [];

  List<String> skills = [];

  final TextEditingController referenceController = TextEditingController();

  final TextEditingController skillController = TextEditingController();

  List<Widget> languages = [];
  List<bool> visibility = [];

  void deleteLanguage(int index) {
    setState(() {
      visibility.removeAt(index);
      languages.removeAt(index);
    });
  }

  void addReference() {
    if (referenceController.text.isNotEmpty) {
      setState(() {
        references.add(referenceController.text);
        referenceController.clear();
      });
    }
  }

  void addSkill() {
    if (skillController.text.isNotEmpty) {
      setState(() {
        skills.add(skillController.text);
        skillController.clear();
      });
    }
  }

  void deleteSkill(String skill) {
    setState(() {
      skills.remove(skill);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About Me",
            style: TextStyle(
                fontSize: 18.sp, color: darkBlue, fontWeight: FontWeight.bold)),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          cursorColor: Colors.black,
          maxLines: 5,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.black, fontSize: 14.sp),
          decoration: InputDecoration(
            fillColor: grey,
            filled: true,
            hintStyle:
                TextStyle(fontSize: 14.sp, color: const Color(0xff7D7D7D)),
            hintText:
                "Write a brief summary about yourself: include your current role, key skills, notable achievements, and career goals. Aim for 3-5 sentences that reflect your professional identity.",
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
              borderSide: const BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: grey),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        // Languages Dropdown
        Text('Languages:',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 10.h,
        ),
        languages.isNotEmpty
            ? Row(
                children: [
                  Text(
                    "Language",
                    style: TextStyle(fontSize: 12.sp, color: darkBlue),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    "Level",
                    style: TextStyle(fontSize: 12.sp, color: darkBlue),
                  )
                ],
              )
            : const SizedBox.shrink(),
        SizedBox(
          height: 5.h,
        ),
        languages.isNotEmpty
            ? SizedBox(
                height: 120.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: darkBlue,
                    thickness: 5.h,
                    height: 20.h,
                  ),
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return Visibility(
                      visible: visibility[index],
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const LanguageItem(),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    deleteLanguage(index);
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                    size: 25.sp,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            : Center(
                child: Text(
                "No Languages Added!",
                style: TextStyle(fontSize: 20.sp, color: darkBlue),
              )),
        SizedBox(height: 10.h),
        Center(
          child: ElevatedButton(
              onPressed: () {
                languages.add(const LanguageItem());
                visibility.add(true);
                setState(() {});
              },
              style: ButtonStyle(
                  fixedSize: WidgetStatePropertyAll(Size(120.w, 30.h)),
                  backgroundColor: const WidgetStatePropertyAll(blue),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)))),
              child: Row(
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 22.sp,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    "Add New",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
                ],
              )),
        ),
        // References Section
        // Text('References:',
        //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        // TextField(
        //   controller: referenceController,
        //   decoration: InputDecoration(
        //     labelText: 'Add a reference',
        //     suffixIcon: IconButton(
        //       icon: Icon(Icons.add),
        //       onPressed: addReference,
        //     ),
        //   ),
        // ),
        // ...references.map((ref) => ListTile(title: Text(ref))).toList(),
        // SizedBox(height: 20),

        // Skills Section
        SizedBox(height: 10.h),
        Text('Skills:',
            style: TextStyle(
                fontSize: 18.sp, fontWeight: FontWeight.bold, color: darkBlue)),
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          cursorColor: Colors.black,
          maxLines: 1,
          controller: skillController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.done,
          style: TextStyle(color: Colors.black, fontSize: 12.sp),
          onFieldSubmitted: (value) => addSkill,
          onSaved: (newValue) => addSkill,
          decoration: InputDecoration(
            hintText: 'Add a skill',
            suffixIcon: IconButton(
              icon: Icon(
                Icons.add,
                size: 25.sp,
              ),
              onPressed: addSkill,
            ),
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
              borderSide: const BorderSide(color: grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: grey),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        skills.isNotEmpty
            ? SizedBox(
                height: 98.h,
                child: ListView.builder(
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.h, horizontal: 12.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(skills[index],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: darkBlue,
                                    fontWeight: FontWeight.bold)),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  deleteSkill(skills[index]);
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 20.sp,
                                ))
                          ],
                        ));
                  },
                )
                // child: GridView(
                //   padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       childAspectRatio: 1,
                //       mainAxisExtent: 50,
                //       crossAxisSpacing: 10,
                //       mainAxisSpacing: 10),
                //   children: skills
                //       .map((skill) => Container(
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //           color: grey, borderRadius: BorderRadius.circular(12.r)),
                //       child: Row(
                //         children: [
                //           SizedBox(width: 5.w,),
                //           Text(skill,
                //               overflow: TextOverflow.ellipsis,
                //               style: TextStyle(
                //                   fontSize: 14.sp, color: darkBlue,fontWeight: FontWeight.bold)),
                //           const Spacer(),
                //           IconButton(
                //               onPressed: () {
                //                 deleteSkill(skill);
                //                 setState(() {});
                //               },
                //               icon: Icon(
                //                 Icons.delete,
                //                 color: Colors.red,
                //                 size: 20.sp,
                //               ))
                //         ],
                //       )))
                //       .toList(),
                // ),
                )
            : Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Center(
                    child: Text(
                  "No Skills Added!",
                  style: TextStyle(fontSize: 20.sp, color: darkBlue),
                )),
              )
      ],
    );
  }
}
