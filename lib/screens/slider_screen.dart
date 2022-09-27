import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
double _sliderValue = 100;
bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider && checks'),
      ),

      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
         //   divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnabled ?
             (value){
            _sliderValue = value;
          setState(() {});
           }
           :null
           ),
      
/*
            Checkbox(
              value: _sliderEnabled,
               onChanged: (value){
                _sliderEnabled = value ?? true;
                setState(() {});
               }
               ),
*/
           CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
             onChanged: ( value ) => setState(() { _sliderEnabled = value ?? true;})
             ),

             SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
             onChanged: ( value ) => setState(() { _sliderEnabled = value;})
              ),

            const AboutListTile(),    

           Expanded(
             child: SingleChildScrollView(
               child: Image(
                image: const NetworkImage('https://www.pngmart.com/files/2/Batman-Arkham-Knight-PNG-File.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
                ),
             ),
           ),

        ],
        )
    );
  }
}