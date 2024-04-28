

import 'package:figma_to_flutter/constant/app_style.dart';
import 'package:figma_to_flutter/constant/colors_manager.dart';

import 'package:figma_to_flutter/constant/widget/widget.dart';
import 'package:figma_to_flutter/date/provider.dart';
import 'package:figma_to_flutter/screens/details.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class TeacherProfile extends StatelessWidget {

  const TeacherProfile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 140.h,
            decoration:const ShapeDecoration(
              color: MyColors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            child:  Padding(
              padding: const EdgeInsets.all(20).w,
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 70.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const  FittedBox(child:   Text('Very good ..',style: AppStyle.veryGoodTextStyle,)),
                      SizedBox(height: 10.h,),
                      const  FittedBox(
                       child:  Text(
                          'static const addCardTextStyle',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                     ),
                    ],
                  ),
                )
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 15.w,left: 15.w,top: 15.h,bottom: 10),
            child: Container(
              width: 388.w,
              height: 40.h,
             // padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFC0BDBD)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: TextFormField(



                decoration: InputDecoration(
                  focusColor: MyColors.ofWhite,
                  focusedBorder: OutlineInputBorder(


                      borderSide: BorderSide(color: MyColors.ofWhite),

                      borderRadius:BorderRadius.circular(8)) ,
                  hintStyle:  AppStyle.labelTextStyle,


                  hintText:'Search your preferred teachers' ,

                  prefixIcon:  Icon(Icons.search,size: 30,color: MyColors.grey,),
                    border:OutlineInputBorder(


                    borderSide: BorderSide(color: MyColors.ofWhite),

                    borderRadius:BorderRadius.circular(8)) ),
              ),
            ),
          ),
          Expanded(

            child: Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: GridView.count(
                  crossAxisCount:2,
                  shrinkWrap: true,
                  mainAxisSpacing: 5,
                  crossAxisSpacing:5 ,

                  childAspectRatio: 1/1.4,
                 // physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(Provider.of<MyProvider>(context,listen: false).teacherModels.length, (index) {
                    return  buildTeacherItem(index, context);
                  })),
            ),
          ),
          Padding(

            padding: EdgeInsets.only(bottom: 20.h,left: 20.w,right: 20.w),
            child: Row(
              children: [
                Expanded(
                  child: backButton(name: 'Back',onPress: (){
                    Navigator.of(context).pop();
                  }, width: 180.w,
                    height: 50.h),
                ),
                SizedBox(width: 20.w,),

                Expanded(
                  child: defaultButton(name: 'Next',onPress: (){
                    navigateTo(context,Details());
                  }, width: 180.w,
                    height: 50.h,),
                ),
              ],
            ),
          ),



        ],
      ),
    );

  }
  Widget buildTeacherItem(index, context){
    return Stack(
      children: [
       Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: Container(
          padding:const EdgeInsets.all(8.0).w ,

          width: 200.w,
          height: 400.h,
          decoration: ShapeDecoration(
            color:MyColors.grey,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignOutside,
                color: Provider.of<MyProvider>(context).teacherModels[index].isSelected?MyColors.green:MyColors.ofWhite
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    width: 64.w,
                    height: 64.h,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(Provider.of<MyProvider>(context).teacherModels[index].image),
                        fit: BoxFit.cover,
                      ),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    Provider.of<MyProvider>(context).teacherModels[index].name,
                    textAlign: TextAlign.center,
                    style: AppStyle.nameTeacherStyle,
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    Provider.of<MyProvider>(context).teacherModels[index].price,
                    textAlign: TextAlign.center,
                    style:AppStyle.priceTeacherStyle ,
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    Provider.of<MyProvider>(context).teacherModels[index].subject,
                    textAlign: TextAlign.center,
                    style:AppStyle.subjectTeacherStyle,
                  ),
                  SizedBox(height: 10.h),
                  Visibility(
                    visible:Provider.of<MyProvider>(context,listen: false).teacherModels[index] .isSelected,
                    child: bookButton(onPress: (){
                      Provider.of<MyProvider>(context,listen: false).selectTeacher(index);
                    }, name: 'Book',height: 30.h,width: 130.w,color: MyColors.green,asset: 'assets/icons_svg/bookiconok.svg'),
                    replacement:bookButton(onPress: (){
                      Provider.of<MyProvider>(context,listen: false).selectTeacher(index);
                    }, name: 'Book',height: 30.h,width: 130.w) ,
                  ),



                ],
              ),




        ),
      ),
        Visibility(
          visible: Provider.of<MyProvider>(context).teacherModels[index].isSelected,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 32,
                  height: 32,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: MyColors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${Provider.of<MyProvider>(context).selectTeacherIndex[index]}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.16,
                        letterSpacing: -0.30,
                      ),
                    ),
                  )
              ),
            ),
          ),
        )
      ]
    );
    // return GestureDetector(
    //   onTap: (){
    //     Provider.of<MyProvider>(context,listen: false).selectSubject(index);
    //   },
    //   child: Container(
    //     width: 178.w,
    //     height: 180.h,
    //     //padding: const EdgeInsets.symmetric(vertical: 4),
    //     decoration: ShapeDecoration(
    //       shape: RoundedRectangleBorder(
    //         side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
    //         borderRadius: BorderRadius.circular(12),
    //       ),
    //     ),
    //     child: Stack(
    //       children: [
    //        Column(
    //         mainAxisSize: MainAxisSize.min,
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: 176,
    //             height: 125,
    //             decoration: BoxDecoration(
    //               image: DecorationImage(
    //                 image: AssetImage('${Provider.of<MyProvider>(context,listen: false).subjectModels[index].image}'),
    //
    //                 fit: BoxFit.fill,
    //               ),
    //               borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(12),
    //                 topRight: Radius.circular(12),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 15),
    //           Container(
    //             color: MyColors.ofWhite,
    //             child: Text(
    //               '${Provider.of<MyProvider>(context,listen: false).subjectModels[index].title}',
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 color: Color(0xFF010B2E),
    //                 fontSize: 20,
    //                 fontFamily: 'Poppins',
    //                 fontWeight: FontWeight.w600,
    //                 height: 0.06,
    //                 letterSpacing: -0.30,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //         Visibility(
    //           visible: Provider.of<MyProvider>(context).subjectModels[index].isSelected,
    //           child: Container(
    //               width: 178.w,
    //               //height: 130.h,
    //               //padding: const EdgeInsets.symmetric(vertical: 4),
    //               decoration: ShapeDecoration(
    //                 color: MyColors.green.withOpacity(.3),
    //                 shape: RoundedRectangleBorder(
    //                   side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
    //                   borderRadius: BorderRadius.circular(12),
    //                 ),
    //               )),
    //         )
    //       ]
    //     ),
    //   ),
    // );
  }
}
