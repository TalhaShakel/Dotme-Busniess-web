import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/Appbar.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/HeaderW.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllor = TextEditingController();
    return Scaffold(
      body: Column(children: [
        // AppbarWidget(),
      //   Divider(
      //     thickness: 2,
      //     color: Colors.amber.shade100,
      //   ),
      //  // const HeaderWidget(),
      //   Divider(
      //     thickness: 2,
      //     color: Colors.amber.shade100,
      //   ),
        Expanded(
          child: Row(
            
            children: [
              Container(
                height: 800,
                width: 380,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(text: 'Personen oder Chats suchen',fontsize: 16,fontweight: FontWeight.w900,fontcolor: Colors.black,),

                    10.verticalSpace,
                    MyTextField(
                      width: 340,
                      hintText: 'search', prefixIcon:'assets/settingicons.png', controller: controllor),
                    10.verticalSpace,
                    Expanded(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 70,
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle
                            
                                      //image: DecorationImage(image: AssetImage('assetName'))
                                    ),
                                  ),
                                  Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                    
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        MyText(text: 'User Name',fontsize: 16,fontweight: FontWeight.w900,fontcolor: Colors.black,),
                                        2.horizontalSpace,
                                        MyText(text: '18.03.2023',fontsize: 10,fontweight: FontWeight.w500,fontcolor:const  Color(0xff858585),),
                                      ]),
                                      MyText(
                                          text:
                                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et...',fontsize: 12,fontweight: FontWeight.w500,fontcolor:  Colors.black,),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(),
              Container(

              ),
            ],
          ),
        )
      ]),
    );
  }
}
