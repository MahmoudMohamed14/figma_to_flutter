import 'package:figma_to_flutter/constant/app_style.dart';
import 'package:figma_to_flutter/constant/colors_manager.dart';
import 'package:figma_to_flutter/constant/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget defaultButton(
    {
      required Function onPress,
      required String name,
      double width=double.infinity,
      double height=50,
      Color color =  MyColors.blue,
      double radius=8,






    }
    )=>Container(

  decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color



  ) ,


  height: height,
  width:width ,
  child: MaterialButton(


    onPressed: () {
      onPress();

    },
    child: Text(
      name,
      style: TextStyle(color: MyColors.white,fontWeight:FontWeight.w400,fontSize: AppSize.s18.sp)
    ),),
);
Widget backButton(
    {
      required Function onPress,
      required String name,
      double width=double.infinity,
      double height=0,
      Color color =  MyColors.grey,
      double radius=8,






    }
    )=>Container(

  decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color



  ) ,


  height: height,
  width:width ,
  child: MaterialButton(


    onPressed: () {
      onPress();

    },
    child: Text(
        name,
        style: AppStyle.backButtonTextStyle
    ),),
);
 Widget bookButton(
    {
      required Function onPress,
      required String name,
      double width=double.infinity,
      double height=0,
      Color color =  MyColors.blue,
      double radius=8,
      String asset='assets/icons_svg/bookicon.svg'






    }
    )=>Container(

  decoration:BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: color



  ) ,


  height: height,
  width:width ,
  child: MaterialButton(


    onPressed: () {
      onPress();

    },
    child: Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(asset,),
        SizedBox(width: 5.w,),
        Text(
            name,
            style: AppStyle.bookButtonTeacherStyle
        ),

      ],
    ),),
);
Widget defaultEditText(
    {
      bool isSuffix=false,
      String? textDirection='',
      TextEditingController?   control,
      required String label,
      IconData? prefIcon,
      Function ?onPressSuffix,
      Function()?onPress,
      Function(String s)?onsubmitted,
      Function(String s)?onchange,
      IconData? sufIcon,
      int ?maxLine=1,

      FormFieldValidator? validat,
      bool enable=false,
      bool enableText=true,
      TextInputType ?textType,
      int?maxlength
    }
    )
{

  return TextFormField(
      maxLength:maxlength ,
      textDirection: textDirection!.isEmpty ?TextDirection.ltr:TextDirection.rtl,

      validator: validat,
      obscureText: enable,
      controller: control,
      keyboardType:textType ,
      autocorrect: false,
      cursorColor: MyColors.ofWhite,
      decoration:InputDecoration(

          errorStyle: TextStyle(color: Colors.red),

          enabledBorder: OutlineInputBorder(


              borderSide: BorderSide(color: MyColors.ofWhite),

              borderRadius:BorderRadius.circular(10)),
          focusedBorder:OutlineInputBorder(


              borderSide: BorderSide(color: MyColors.ofWhite),

              borderRadius:BorderRadius.circular(10)) ,

          errorBorder:OutlineInputBorder(


              borderSide: BorderSide(color: Colors.red),

              borderRadius:BorderRadius.circular(10)) ,
          focusedErrorBorder: OutlineInputBorder(


              borderSide: BorderSide(color: Colors.red),

              borderRadius:BorderRadius.circular(10)),

          labelStyle: TextStyle(color: MyColors.ofWhite),
          labelText: label,
          prefixIcon: Icon(prefIcon,color: MyColors.ofWhite,),

          suffixIcon: isSuffix?IconButton(onPressed:(){

            if(onPressSuffix!=null){
              onPressSuffix();
            }
          },icon: Icon(sufIcon,),):null


      ) ,
      onTap: (){

        if(onPress!=null){
          onPress();
        }

      },
      onChanged: ( s){
        if(onchange!=null){
          onchange(s);
        }
      },
      onFieldSubmitted: (s){
        if(onsubmitted!=null){
          onsubmitted(s);
        }
      },
      enabled: enableText,
      maxLines:maxLine

  );

}
void navigateTo(context,widget ){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
}
void navigateAndFinish(context,widget ){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget),(route)=>false);
}

