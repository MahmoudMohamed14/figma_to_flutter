import 'package:figma_to_flutter/constant/app_style.dart';
import 'package:figma_to_flutter/constant/colors_manager.dart';
import 'package:figma_to_flutter/constant/widget/widget.dart';
import 'package:figma_to_flutter/screens/payment.dart';
import 'package:figma_to_flutter/screens/thank_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Details extends StatelessWidget {

  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20).w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 309.w,
                    height: 220.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/card.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 10.h,),
                defaultButton(onPress: (){}, name: 'Invoices details',color: MyColors.blue),
                SizedBox(height: 15.h,),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (context,index)=>invoiceDetailsItem(context,index), separatorBuilder: (context,index)=>SizedBox(height: 10.h,), itemCount: 2),
                SizedBox(height: 10.h,),
                defaultButton(onPress: (){}, name: 'Pay now (14,500 EGP)',color: MyColors.blue),
                SizedBox(height: 10.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width/90),

                  height: 56.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(color: MyColors.ofWhite,borderRadius: BorderRadius.circular(8).w),
                  child:   Row(
                    children:[
                      SvgPicture.asset('assets/icons_svg/ok.svg',),
                      SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                      FittedBox(

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
                      SvgPicture.asset('assets/icons_svg/okgrey.svg',),
                       SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                      FittedBox(
                          child: Text(
                            'Payment Type',
                            style: AppStyle.steppergreyTextStyle,
                          )
                      ),

                      SizedBox(width: MediaQuery.sizeOf(context).width/70,),
                      SvgPicture.asset('assets/icons_svg/arrowgrey.svg',),

                       SizedBox(width: MediaQuery.sizeOf(context).width/70,),

                      Container(
                        width: 15.w,
                        height: 15.h,
                        decoration: ShapeDecoration(
                          shape: OvalBorder(
                            side: BorderSide(width: 1, color: MyColors.grey),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xFF4F4F4F),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),

                       SizedBox(width: MediaQuery.sizeOf(context).width/100,),
                      FittedBox(
                          child: Text(
                            'Done',
                            style: AppStyle.steppergreyTextStyle,
                          )
                      ),




                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
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
                          navigateTo(context,Payment());
                        }, width: 180.w,
                          height: 50.h,),
                      ),
                    ],
                  ),
                ),

              ],


            ),
          ),
        ),
      ),
    );
  }
  Widget invoiceDetailsItem(context,index){
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: ShapeDecoration(
        color: Color(0xFFF2F2F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text('Invoice (${index+1}) details',style: AppStyle.headDetailsTextStyle ,),
              Spacer(),
              SvgPicture.asset('assets/icons_svg/arrow_up.svg'),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            height: 1.h,
            width: MediaQuery.sizeOf(context).width,
            color: MyColors.grey,
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Text('Invoice number',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('12500045126',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const Row(
            children: [
              Text('Total',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('6,500 EGP',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const Row(
            children: [
              Text('Student name',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('Mohamed Ali',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const    Row(
            children: [
              Text('Year',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('Fall 2023-2024',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const   Row(
            children: [
              Text('Payment date',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('01/10/2023 - 08:45 AM',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const  Row(
            children: [
              Text('Teacher  name',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('MR.Mohamed Ali',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),
          SizedBox(height: 10.h,),
          const Row(
            children: [
              Text('Teacher subject',style: AppStyle.componentDetailsTextStyle ,),
              Spacer(),
              Text('Math',style: AppStyle.componentDetailsTextStyle ,),
              //Icon(Icons.arrow_back_ios_sharp,color: MyColors.grey,)

            ],
          ),

        ],
      ),
    );
  }
}
