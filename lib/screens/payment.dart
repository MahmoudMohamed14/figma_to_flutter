import 'package:figma_to_flutter/constant/app_style.dart';
import 'package:figma_to_flutter/constant/colors_manager.dart';
import 'package:figma_to_flutter/constant/widget/widget.dart';
import 'package:figma_to_flutter/screens/thank_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Payment extends StatelessWidget {

  const Payment({Key? key}) : super(key: key);

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
                //image
                Center(
                  child: Container(
                    width: 309.w,
                    height: 220.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/payment.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                ),
                SizedBox(height: 10.h,),
                //cash Payment
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.h,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color:MyColors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons_svg/cash.svg',),
                        Spacer(),
                        Text('Cash payment',style: AppStyle.cashTextStyle,),
                        Spacer(),
                        SvgPicture.asset('assets/icons_svg/arrow_down_bold.svg',),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                //cridit
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.h,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color:MyColors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons_svg/card.svg',),
                        Spacer(),
                        Text('Credit/ Debit Card',style: AppStyle.cridetTextStyle,),
                        Spacer(),
                        SvgPicture.asset('assets/icons_svg/arrow_up_white.svg',),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
          //cardDetails
          Container(
            width: MediaQuery.sizeOf(context).width,
           // height: 241,
            padding: const EdgeInsets.all( 12),
            decoration: ShapeDecoration(
              color: Color(0xFFF2F2F2),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo visa
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons_svg/mastercard.svg',),
                      Container(
                        width: 38.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:   AssetImage('assets/visa.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h,),
                const Text('Credit Name',style: AppStyle.cridetNameTextStyle,),
                Container(

                  width: double.infinity,
                  height: 40.h,
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: ShapeDecoration(

                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: MyColors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: MyColors.white,
                  ),
                  child: TextFormField(




                    decoration: InputDecoration(
                      fillColor: MyColors.white,
                        focusColor: MyColors.white,
                        focusedBorder: OutlineInputBorder(


                            borderSide: BorderSide(color: MyColors.white),

                            borderRadius:BorderRadius.circular(8)) ,
                        hintStyle:  AppStyle.labelTextStyle,


                        hintText:'EX: MOHAMED RAGAB' ,

                        //prefixIcon:  Icon(Icons.search,size: 30,color: MyColors.grey,),
                        border:OutlineInputBorder(


                            borderSide: BorderSide(color: MyColors.white),

                            borderRadius:BorderRadius.circular(8)) ),
                  ),
                ),
                SizedBox(height: 15.h,),
               const Text('Credit Number',style: AppStyle.cridetNameTextStyle,),
                Container(

                  width: double.infinity,
                  height: 40.h,
                  // padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: ShapeDecoration(

                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: MyColors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: MyColors.white,
                  ),
                  child: TextFormField(




                    decoration: InputDecoration(
                        fillColor: MyColors.white,
                        focusColor: MyColors.white,
                        focusedBorder: OutlineInputBorder(


                            borderSide: BorderSide(color: MyColors.white),

                            borderRadius:BorderRadius.circular(8)) ,
                        hintStyle:  AppStyle.labelTextStyle,


                        hintText:'EX:***** **** **** 5231' ,

                        //prefixIcon:  Icon(Icons.search,size: 30,color: MyColors.grey,),
                        border:OutlineInputBorder(


                            borderSide: BorderSide(color: MyColors.white),

                            borderRadius:BorderRadius.circular(8)) ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Expiration Date',style: AppStyle.cridetNameTextStyle,),
                          Container(
                      
                            width: 153.w,
                            height: 40.h,
                            // padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                      
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: MyColors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: MyColors.white,
                            ),
                            child: TextFormField(
                      
                      
                      
                      
                              decoration: InputDecoration(
                                  fillColor: MyColors.white,
                                  focusColor: MyColors.white,
                                  focusedBorder: OutlineInputBorder(
                      
                      
                                      borderSide: BorderSide(color: MyColors.white),
                      
                                      borderRadius:BorderRadius.circular(8)) ,
                                  hintStyle:  AppStyle.labelTextStyle,
                      
                      
                                  hintText:'02/2026' ,
                      
                                  //prefixIcon:  Icon(Icons.search,size: 30,color: MyColors.grey,),
                                  border:OutlineInputBorder(
                      
                      
                                      borderSide: BorderSide(color: MyColors.white),
                      
                                      borderRadius:BorderRadius.circular(8)) ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50.w,),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('CVV',style: AppStyle.cridetNameTextStyle,),
                          Container(
                      
                            width: 119.w,
                            height: 40.h,
                            // padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: ShapeDecoration(
                      
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: MyColors.white),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: MyColors.white,
                            ),
                            child: TextFormField(
                      
                      
                      
                      
                              decoration: InputDecoration(
                                  fillColor: MyColors.white,
                                  focusColor: MyColors.white,
                                  focusedBorder: OutlineInputBorder(
                      
                      
                                      borderSide: BorderSide(color: MyColors.white),
                      
                                      borderRadius:BorderRadius.circular(8)) ,
                                  hintStyle:  AppStyle.labelTextStyle,
                      
                      
                                  hintText:'****' ,
                      
                                  //prefixIcon:  Icon(Icons.search,size: 30,color: MyColors.grey,),
                                  border:OutlineInputBorder(
                      
                      
                                      borderSide: BorderSide(color: MyColors.white),
                      
                                      borderRadius:BorderRadius.circular(8)) ),
                            ),
                          ),
                        ],
                      ),
                    )
                    

                  ],
                )

              ],
            )
          ),
                SizedBox(height: 10.h,),
                //add card
                Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(8).w,
                      color: MyColors.green.withOpacity(.5)



                  ) ,


                  height: 40.h,
                  width:150.w ,
                  child: MaterialButton(


                    onPressed: () {


                    },
                    child: FittedBox(
                      child: Text(
                          'Add other card',
                          textAlign: TextAlign.center,
                          style: AppStyle.addCardTextStyle
                      ),
                    ),),
                ),
                //defaultButton(onPress:(){} , name: 'Add other card',color: MyColors.green.withOpacity(.3),width: 150.w),
                SizedBox(height: 10.h,),
                //mobileWallet
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.h,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color:MyColors.grey,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons_svg/wallet.svg',),
                        const Spacer(),
                      const  Text('Mobile wallet',style: AppStyle.cashTextStyle,),
                       const Spacer(),
                        SvgPicture.asset('assets/icons_svg/arrow_down_bold.svg',),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
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
                //back and next
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
                          navigateTo(context,ThankScreen());
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
}
