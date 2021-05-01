import 'package:covid19/uifeatures.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

title: Text("FAQs", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
centerTitle: true,

      ),
      body: ListView.builder(
        itemCount: DataSource.questionAnswers.length,
        itemBuilder: (context,index){
        return ExpansionTile(title: Text(DataSource.questionAnswers[index]['question'],style: TextStyle(fontWeight: FontWeight.bold),),
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(DataSource.questionAnswers[index]['answer']),
          )
        ],
        );
      }),

    );
  }
}