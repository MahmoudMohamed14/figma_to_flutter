import 'package:figma_to_flutter/constant/app_style.dart';
import 'package:figma_to_flutter/constant/size_manager.dart';
import 'package:figma_to_flutter/constant/widget/widget.dart';
import 'package:figma_to_flutter/screens/payment.dart';
import 'package:figma_to_flutter/screens/subject%20selection.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/colors_manager.dart';

class ThankScreen extends StatelessWidget {
  const ThankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
     // appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.all(  MediaQuery.sizeOf(context).width/20),
        child: SafeArea(

          child: Column(
          
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height:MediaQuery.sizeOf(context).height/4,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/thankyouimage.png'))),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height/50,),
              Container(
                width: MediaQuery.sizeOf(context).width/4,
                height:MediaQuery.sizeOf(context).height/10,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/okcheck.png'))),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height/35,),
              Column(
                children: [
                 Text('THANK YOU!',style: TextStyle(color: MyColors.green,fontWeight:FontWeight.w500,fontSize: AppSize.s32.sp),),
                  FittedBox(child: Text('Your reservation is being confirmed',style: TextStyle(color: MyColors.green,fontWeight:FontWeight.w500,fontSize: AppSize.s18.sp),))
          
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height/20,),
              Container(
                width: 180.w,
                height: 56.h,
                padding: const EdgeInsets.all(10).w,
                child: MaterialButton(onPressed:(){
                 navigateAndFinish(context, SubjectSelection());
                },child:  Text('Browse Home',style: TextStyle(color: MyColors.blue,fontWeight:FontWeight.w400,fontSize: AppSize.s18.sp),)
                 ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8).w,side: BorderSide(color: MyColors.blue,width: 1))
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height/15,),

              //stepper
              Container(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width/90),

                height: 56.h,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(color: MyColors.ofWhite,borderRadius: BorderRadius.circular(8).w),
                child:   Row(
                  children:[
                    SvgPicture.asset('assets/icons_svg/ok.svg',),
                    SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                    const  FittedBox(

                        child: Text(
                          'Add Payment method',
                          style: TextStyle(
                            color:MyColors.green ,
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        )
                    ),



                    SizedBox(width: MediaQuery.sizeOf(context).width/60,),
                    SvgPicture.asset('assets/icons_svg/arrow.svg',),

                    SizedBox(width: MediaQuery.sizeOf(context).width/60,),
                    SvgPicture.asset('assets/icons_svg/ok.svg',),
                    SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                    const   FittedBox(
                        child: Text(
                          'Payment Type',
                          style: AppStyle.stepperTextStyle,
                        )
                    ),

                    SizedBox(width: MediaQuery.sizeOf(context).width/70,),
                    SvgPicture.asset('assets/icons_svg/arrow.svg',),

                    SizedBox(width: MediaQuery.sizeOf(context).width/70,),

                    Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: MyColors.green),
                        ),
                      ),
                      child:const Center(
                        child: Text(
                          '3',
                          style: AppStyle.stepperTextStyle,
                        ),
                      ),
                    ),

                    SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                  const  FittedBox(
                        child: Text(
                          'Done',
                          style: AppStyle.stepperTextStyle,
                        )
                    ),




                  ],
                ),
              ),
          
            ],
          ),
        ),
      ),

    );
  }
}
