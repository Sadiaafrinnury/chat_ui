import 'package:chat_ui/Model/massage.dart';
import 'package:flutter/material.dart';

class Contactinfo extends StatelessWidget {
  Message message;
  Contactinfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${message.user.firstname}\n${message.user.
          lastname}",style: TextStyle(fontSize: 22,color: Colors.white,
          fontWeight: FontWeight.bold),),
          Row(
            children: [
              _buildButton(Icons.phone),
              SizedBox(width: 8,),
              _buildButton(Icons.video_call),//
            ],
          )

        ],
      ),
    );
  }
  Widget _buildButton(IconData IconData){
   return Container(
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(shape:
  BoxShape.circle,color: Colors.green),
     child: Icon(IconData,color: Colors.white,),

);

  }
}
