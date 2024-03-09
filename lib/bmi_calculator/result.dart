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
        return 'Thinness';
      } else if (res >= 18 && res < 25) {
        return 'Normal';
         }else if (res >= 25 && res < 30) {
        return 'Overweigh';
      } else if (res >= 30 && res < 35) {
        return 'Obese Class I';
      } else {
        return 'Obese Class III';
      }
    }

   String getComment(){
      if (res < 16){
        return "Your body weight its to much thin ";
      }else if( res >=18 && res > 25 ){
            return "Your body weight its normal good job";
      } else  {
        return "Your body its over weight please becareful";
      }
   }



    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        
      ),
       body:Column(
        
         children: [
            Text("Your result", style:style1),

           Container(
            margin: EdgeInsets.fromLTRB(10, 60, 10, 120),
            padding:EdgeInsets.all(5),
            width: double.infinity,
           
            decoration: BoxDecoration(
              color: AppColor.containerBg,
              borderRadius: BorderRadius.circular(15)
            ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(getClassification(), style:style2,
                   ),
                   SizedBox(height:40),
                    Text(res.toString(), style:style1),
                    
                    SizedBox(height:80),
                    
                        Text(getComment(), style:TextStyle(color: AppColor.white),
                        ),
                        SizedBox(height:120),
                  ],
                   ),
                 ),
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
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text("Recalculate",)
                    ),
                  ),
         ],
       ),
    );
  }
}

