

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:statefull/Constant/app_constant.dart';
import 'package:statefull/Widgets/left_bar.dart';
import 'package:statefull/Widgets/right_bar.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({Key key}) : super(key: key);

  @override
  _HomeScreenStateState createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
 TextEditingController _heightController=TextEditingController();
 TextEditingController _weightController=TextEditingController();
  double _bmiResult=0;
  String _textResult="";
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "BMI Calculator",
          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[900],
      body: SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child:TextField(
                    controller: _heightController,
                    style:TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color:Colors.black,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:"Height",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w300,
                        color:Colors.white.withOpacity(.8),

                      ),

                    ),
                  ),
                ),
                    Container(
                      width: 130,
                      child:TextField(
                        controller: _weightController,
                        style:TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color:Colors.black,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:"Weight",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color:Colors.white.withOpacity(.8),
                            ),
                        ),
                      ),
                    ),
                 ],
            ),
            SizedBox(height: 30,),
            // GestureDetector(
            //   onTap: (){
            //      double _h=double.parse(_heightController.text);
            //      double _w=double.parse(_weightController.text);
            //      setState(() {
            //        _bmiResult=_w/(_h *_h);
            //        if(_bmiResult > 25){
            //          _textResult="you are over weight";
            //        }
            //        else if(_bmiResult >= 18.5 && _bmiResult <= 25){
            //          _textResult="you are normal weight";
            //        } else{
            //          _textResult="you are under weight";
            //        }
            //      });
            //   },
            // child: TextButton(
            //   child: Text("Calculate ",style: TextStyle(
            //     fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,
            //   ),
            //   ),
            // ),
            // ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),

              ),
              onPressed: () {
                double _h=double.parse(_heightController.text);
                     double _w=double.parse(_weightController.text);
                     setState(() {
                       _bmiResult=_w/(_h *_h);
                       if(_bmiResult > 25){
                         _textResult="you are over weight";
                       }
                       else if(_bmiResult >= 18.5 && _bmiResult <= 25){
                         _textResult="you are normal weight";
                       } else{
                         _textResult="you are under weight";
                       }
                     });

              },
              child:  Text('Calculate'),
            ),
                SizedBox(height: 50,),
              Container(
              child: Text(_bmiResult.toStringAsFixed(2),style: TextStyle(
                fontSize: 90,fontWeight: FontWeight.bold,color: Colors.white,
              ),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
            visible:_textResult.isNotEmpty,
              child: Container(
              child: Text(_textResult,style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,
              ),
              ),
            ),
    ),
            SizedBox(height: 10,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 20,),
            LeftBar(barWidth: 70,),
            SizedBox(height: 20,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 20,),
            RightBar(barWidth: 70,),
            SizedBox(height: 50,),
            RightBar(barWidth: 70,),


              ],
      ),
    ),
    );
  }
}

