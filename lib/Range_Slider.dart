import 'package:flutter/material.dart';



class Range_Slider extends StatefulWidget {
  const Range_Slider({Key? key}) : super(key: key);

  @override
  State<Range_Slider> createState() => _Range_SliderState();
}

class _Range_SliderState extends State<Range_Slider> {


  RangeValues values = RangeValues(0, 100);

  
  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Using'),
      ),
      body: Center(


        child:RangeSlider(
          values: values, 
          labels: labels,
          divisions: 20,
          activeColor: Colors.blue,
          inactiveColor: Colors.blue.shade100,
          min: 0,
          max: 100,
          onChanged: (newValues){
              debugPrint('${newValues.start},${newValues.end}');
              values = newValues;
              print('start Value${values.start}');
              print('end Value${values.end}');
           
              setState(() {
                
              }
            );
          }
         ), // RangeSilider


      ),



    );
  }
}