import 'package:covid19/faqpage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Infopanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 25,),
GestureDetector(
  onTap:(){

  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return Faq();
  }));
  },
  child:   Container(
  
    height: 45,
  
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
  
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  
    color: Colors.blueGrey[900],
  
  
  
    child: Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
        Text("FAQs", style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold),),
  
        Icon(Icons.arrow_forward, color: Colors.white,),
  
      ],
  
    ),
  
  ),
),
GestureDetector(
  onTap: (){

    launch('http://covid19responsefund.org/en');
  },
  child:   Container(
  
    height: 45,
  
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
  
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  
    color: Colors.blueGrey[900],
  
  
  
    child: Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
        Text("DONATE", style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold),),
  
        Icon(Icons.arrow_forward, color: Colors.white,),
  
      ],
  
    ),
  
  ),
),
GestureDetector(
  onTap: (){
    launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
  },
  child:   Container(
  
    height: 45,
  
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
  
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  
    color: Colors.blueGrey[900],
  
  
  
    child: Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
        
  
        Text("MYTH BUSTERS", style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold),),
  
        Icon(Icons.arrow_forward, color: Colors.white,),
  
      ],
  
    ),
  
  ),
),
GestureDetector(
  onTap: (){

    launch('https://www.who.int/health-topics/coronavirus#tab=tab_1');
  },
  child:   Container(
  
    height: 45,
  
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
  
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
  
    color: Colors.blueGrey[900],
  
  
  
    child: Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
      children: [
  
        Text("NEWS", style: TextStyle(color: Colors.white,fontSize: 18.0, fontWeight: FontWeight.bold),),
  
        Icon(Icons.arrow_forward, color: Colors.white,),
  
      ],
  
    ),
  
  ),
),
      ],),
    );
  }
}