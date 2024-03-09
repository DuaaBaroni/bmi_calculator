// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/bmi_calculator/colors.dart';
import 'package:bmi_calculator/bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int height = 130;
  int Weight = 40;
  int age = 23;
  bool isMale = true;



  TextStyle Style1 = TextStyle(color: AppColor.text, fontSize:17);
   TextStyle Style2 = TextStyle(color: AppColor.white, fontSize:37, fontWeight: FontWeight.w500);// 180



@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        backgroundColor: AppColor.background,
        title: Text("BMI CALCULATOR", style: TextStyle(color: AppColor.white, 
        fontSize:25,fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:Column(
          children: [               
             Expanded(
               child: Row(
                 children: [
                   Expanded(
                     child: InkWell(
                      onTap: (){
                         setState(() {
                           isMale = true;
                         });
                      },
                       child: Container(
                         decoration: BoxDecoration(
                            color: (isMale)
                            ?AppColor.primary
                            :AppColor.containerBg,
                            borderRadius: BorderRadius.circular(15)
                         ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                  Icon(Icons.male_rounded, size:50,color:AppColor.white),
                                  SizedBox(height:10),
                                  Text("male", style:Style1),
                              ],
                            ),
                        ),
                     ),
                   ),

                  SizedBox(width:10),
                      Expanded(
               child: Expanded(
                 child: InkWell(
                  onTap:() {
                    setState(() {
                      isMale = false;
                    });
                  },
                   child: Container(
                     decoration: BoxDecoration(
                        color: (isMale)?
                        AppColor.containerBg : AppColor.primary ,
                        borderRadius: BorderRadius.circular(15)
                     ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Icon(Icons.female_rounded, size:50,color:AppColor.white),
                              SizedBox(height:10),
                              Text("female", style:Style1),
                          ],
                        ),
                    ),
                 ),
               ),  
             ),
                 ],
               ),  
             ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top:10, bottom: 10),
                       decoration: BoxDecoration(
                        color: AppColor.containerBg,
                        borderRadius: BorderRadius.circular(10),
                       ),
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("height", style:Style1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                             children: [
                               Text(height.toString(),
                               style:Style2
                               ),
                               SizedBox(height: 7),
                               Text("cm",style:Style1
                               ),
                                SizedBox(height:7),
                             ],
                       ),
                        Slider(
                        activeColor: AppColor.primary,
                        inactiveColor: AppColor.containerBg,
                        min:110,
                        max:210,
                        value: height.toDouble(), 
                        onChanged: (value){
                          setState(() {
                            height = value.toInt();
                          });
                        },
                     ),
                   ],
                  ),
              ),
          ),
              
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color:AppColor.containerBg,    
                            borderRadius: BorderRadius.circular(15)
                         ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Weight", 
                                style:Style1),
                                  SizedBox(height:7),
                                    
                                    Text(Weight.toString(), 
                                    style:Style2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(onPressed: (){
                                       if (Weight > 0){
                                             setState(() {
                                          Weight--;
                                        });
                                       } 
                                     
                                      }, icon: Icon(Icons.remove),
                                      style:IconButton.styleFrom(
                                        backgroundColor: AppColor.text,
                                        foregroundColor: AppColor.white,
                                      ),
                                      ),
                                          SizedBox(height:7),
                                        IconButton(onPressed: (){
                                           setState(() {
                                             Weight++;
                                           });

                                        }, icon: Icon(Icons.add),
                                      style:IconButton.styleFrom(
                                        backgroundColor: AppColor.text,
                                        foregroundColor: AppColor.white,
                                      ),
                                      ),
                                    ],
                                  ),
                        
                              ],
                            ),
                        ),
                      ),

                              SizedBox(width:10),

                       Expanded(
                         child: Container(
                          decoration: BoxDecoration(
                            color:AppColor.containerBg,
                            borderRadius: BorderRadius.circular(15)
                         ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("age", style:Style1),
                                  SizedBox(height:7),
                                    Text(age.toString(),
                                       style:Style2),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(onPressed: (){
                                       if (age > 0){
                                           setState(() {
                                             age--;
                                           });
                                       } 
                                      }, icon: Icon(Icons.remove),
                                      style:IconButton.styleFrom(
                                        backgroundColor: AppColor.text,
                                        foregroundColor: AppColor.white,
                                      ),
                                      ),
                                          SizedBox(height:7),
                                        IconButton(onPressed: (){
                                          setState(() {
                                             age++;
                                           });
                                        }, icon: Icon(Icons.add),
                                      style:IconButton.styleFrom(
                                        backgroundColor: AppColor.text,
                                        foregroundColor: AppColor.white,
                                      ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                            ),
                       ),
                     ],
                ),
              ),
                      
            SizedBox(
              width:double.infinity,
              height:50,
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),                    
                    ),
                    backgroundColor: AppColor.primary,
                    foregroundColor: AppColor.white,
                  ),
                  onPressed: ()
                    {
                
                      double res = Weight/ height/100 * height/100;
                
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultView(res:res)
                      ),
                    );
                  }  , 
                child: Text("Calculate",
                ),
                ),
              ),
            ),
            ],
        ),
      ),
    );
  }
}
      

