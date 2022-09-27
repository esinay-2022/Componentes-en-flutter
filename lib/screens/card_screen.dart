
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height:10),
          CustomCardType2(name: 'Paisaje 1',imageUrl: 'https://modatechguatemala.com/wp-content/uploads/2020/06/travel-landscape-01.jpg'),
          SizedBox(height:10),
          CustomCardType2(name: 'Paisaje 2',imageUrl: 'https://cdn.theatlantic.com/media/img/photo/2020/11/top-shots-2020-international-landsc/a01_Yuen_MagicalNight-1/original.jpg'),
          SizedBox(height:10),
          CustomCardType2(imageUrl: 'https://images.genial.ly/5c06b4bb0dba080fd2eced18/d1e26a90-6846-4d2d-9d99-9a8e1848fc94.jpeg'),
          SizedBox(height:10),
        ],
      )
    );
  }
}
