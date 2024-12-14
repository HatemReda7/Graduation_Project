import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project_main/Core/Utils/app_colors.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = "ChatScreen";

  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController text = TextEditingController();

  List<Widget> chats = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: blue,
        title: Text(
          "AI Chat",
          style: TextStyle(fontSize: 21.sp),
        ),
        elevation: 0,
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BubbleNormal(
                text: "Hi, ChatGPT.",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                color: blue,
                padding: EdgeInsets.all(12.r),
              ),
              BubbleNormal(
                text: "Hi, Hatem.",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                color: grey,
                isSender: false,
                padding: EdgeInsets.all(12.r),
              ),
              SizedBox(
                height: 440.h,
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return chats[index];
                  },
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                child: TextFormField(
                  controller: text,
                  textInputAction: TextInputAction.send,
                  cursorColor: blue,
                  selectionControls: DesktopTextSelectionControls(),
                  maxLines: 1,
                  onFieldSubmitted: (value) {
                    setState(() {
                      chats.add(
                        BubbleNormal(
                          text: text.text,
                          textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          color: blue,
                          padding: EdgeInsets.all(12.r),
                        ),
                      );
                      text = TextEditingController();
                    });
                  },
                  decoration: InputDecoration(
                    fillColor: grey,
                    filled: true,
                    hoverColor: blue,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          chats.add(
                            BubbleNormal(
                              text: text.text,
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              color: blue,
                              padding: EdgeInsets.all(12.r),
                            ),
                          );
                          text = TextEditingController();
                        });
                      },
                      color: blue,
                      icon: Icon(
                        Icons.send,
                        size: 22.sp,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: blue, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: blue, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: blue, width: 2),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
