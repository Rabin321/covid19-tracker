import 'package:flutter/material.dart';

class Mostaffectedcountry extends StatelessWidget {

final List countryData ;

  const Mostaffectedcountry({Key key, this.countryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            child: Row(
              children: [
                Image.network(countryData[index]['countryInfo']['flag'].toString(),height: 25,),
                SizedBox(width: 10,),
                Text(countryData[index]['country'],style: TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text("Cases: " + countryData[index]['cases'].toString(),style: TextStyle(fontSize: 17.0, color: Colors.deepPurple[900], fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text("Deaths: " + countryData[index]['deaths'].toString(),style: TextStyle(fontSize: 17.0, color: Colors.red[700], fontWeight: FontWeight.bold),),
              
              ],
              
            ),
            
          );
          
        },
        itemCount: 5,
        
      ),
    );
    
  }
}