import 'package:figma_to_flutter/constant/colors_manager.dart';

import 'package:figma_to_flutter/constant/widget/widget.dart';
import 'package:figma_to_flutter/date/provider.dart';
import 'package:figma_to_flutter/screens/teatcherProfile.dart';
import 'package:flutter/cupertino.dart';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SubjectSelection extends StatelessWidget {

  const SubjectSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160.h,
            decoration: ShapeDecoration(
              color: MyColors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50).w,
                  bottomRight: Radius.circular(50).w,
                ),
              ),
            ),
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(

                  width: double.infinity,
                  height: 70.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const FittedBox(
                        child:  Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Welcome ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'Mohamed Ragab',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,),
                    const  FittedBox(
                        child:   Text(
                          'Please choose your subjects',
                          style: TextStyle(
                            color: MyColors.white,
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
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
              ///  height: 776,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: Color(0xFFF2F2F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   const Text(
                      'Please select subjects',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF010B2E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                        letterSpacing: -0.30,
                      ),
                    ),
                  SizedBox(height: 15.h,),
                  Expanded(

                    child: GridView.count(
                        crossAxisCount:2,
                        shrinkWrap: true,
                        mainAxisSpacing: 8,
                        crossAxisSpacing:8 ,
                        childAspectRatio: 1/1.1,
                       // physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(Provider.of<MyProvider>(context,listen: false).subjectModels.length, (index) {
                          return buildSubjectItem(index, context);
                        })),
                  )
                ]
                ),
              ),
            ),
          ),
          Padding(

            padding: EdgeInsets.only(bottom: 20.h),
            child: defaultButton(name: 'Next',onPress: (){
              navigateTo(context,TeacherProfile());
            }, width: 180.w,
              height: 50.h,),
          ),




        ],
      ),
    );

  }
  Widget buildSubjectItem(index, context){
    return GestureDetector(
      onTap: (){
        Provider.of<MyProvider>(context,listen: false).selectSubject(index);
      },
      child: Container(
        width: 178.w,
        height: 180.h,
        //padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Stack(
          children: [
           Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 176,
                height: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('${Provider.of<MyProvider>(context,listen: false).subjectModels[index].image}'),

                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                color: MyColors.ofWhite,
                child: Text(
                  '${Provider.of<MyProvider>(context,listen: false).subjectModels[index].title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF010B2E),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ],
          ),
            Visibility(
              visible: Provider.of<MyProvider>(context).subjectModels[index].isSelected,
              child: Container(
                  width: 178.w,
                  //height: 130.h,
                  //padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: ShapeDecoration(
                    color: MyColors.green.withOpacity(.3),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  )),
            ),
            Visibility(
              visible: Provider.of<MyProvider>(context).subjectModels[index].isSelected,
              child: Align(
                alignment: Alignment.center,
                  child: SvgPicture.asset('assets/icons_svg/okselect.svg',)),)
          ]
        ),
      ),
    );
  }
}
