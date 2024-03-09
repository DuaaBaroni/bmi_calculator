// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/bmi_calculator/colors.dart';
import 'package:bmi_calculator/bmi_calculator/home_view.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.res});

  final double res;

  @override
  Widget build(BuildContext context) {
      
       TextStyle style1 = TextStyle(color:AppColor.white, fontSize:25,fontWeight: FontWeight.normal);
 TextStyle style2 = TextStyle(color:AppColor.green, fontSize:20);

   String getClassification() {
      if (res < 16) {
        return 'Severe Thinness';
      } else if (res >= 18.5 && res < 25) {
        return 'Normal';
         }else if (res >= 25 && res < 30) {
        return 'Overweigh';
      } else if (res >= 30 && res < 35) {
        return 'Obese Class I';
      } else {
        return 'Obese Class III';
      }
    }

    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: Text("Your result",style:style1,
        ),
      ),
       body:Container(
        margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
        padding:EdgeInsets.all(5),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.containerBg,
          borderRadius: BorderRadius.circular(20)
        ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(getClassification(), style:style2,
               ),
               SizedBox(height:40),
                Text(res.toString(), style:style1),
                    
                    SizedBox(height:220),
                SizedBox(
                  width:double.infinity,
                  height:50,
                  child:ElevatedButton(onPressed: (){
                     Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => HomeView()
                      ),
                      );
                  }, 
                style:ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  foregroundColor: AppColor.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ) ,
                child: Text("Recalculate",)
                ),
                ),

            ],

          ),
          
      ),
    );
  }
}

