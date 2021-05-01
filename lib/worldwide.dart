import 'package:flutter/material.dart';

class Worldwide extends StatelessWidget {
  final Map worldData;

  const Worldwide({Key key, this.worldData}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2) ,
        children: [
          Statuspanel(
            title: "CONFIRMED",
            
            panelColor: Colors.orange[300],
            textColor: Colors.black,
            count: worldData["cases"].toString() ,
          ),
           Statuspanel(
             title: "ACTIVE",
            panelColor: Colors.purple[400],
            textColor: Colors.black,
            count: worldData["active"].toString(),
           ),
            Statuspanel(
              title: "RECOVERED",
            panelColor: Colors.green[500],
            textColor: Colors.black,
            count: worldData["recovered"].toString(),
            ),
             Statuspanel(
               title: "DEATHS",
            panelColor: Colors.red[400],
            textColor: Colors.black,
            count: worldData["deaths"].toString(),
             ),
             Statuspanel(
               title: "TODAY'S DEATHS",
               panelColor: Colors.blueAccent,
               textColor: Colors.black,
               count: worldData["todayDeaths"].toString(),

             ),
             Statuspanel(
               title: "AFFECTED COUNTRIES",
               panelColor: Colors.tealAccent[700],
               textColor: Colors.black,
               count: worldData["affectedCountries"].toString(),
             ),

        ],
      ),
    );
  }
}

class Statuspanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const Statuspanel({Key key, this.panelColor, this.textColor, this.title, this.count}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(6),
      height:40,
      width: width/2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17 ,color: textColor),),
          Text(count,style: TextStyle(fontWeight:FontWeight.bold,fontSize: 17, color: Colors.black )),
        ],
      ),
    );
  }
}