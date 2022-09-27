import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.yellow
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 140,
          backgroundImage: NetworkImage('https://media-exp1.licdn.com/dms/image/C560BAQHXMY-xtmwqPg/company-logo_200_200/0/1519882675469?e=1667433600&v=beta&t=ulwUqxu_S6vdCT1e1uw2EX1M7HfiW5DWu3fHetxRMfk'),
         )
      ),
    );
  }
}