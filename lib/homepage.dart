import 'dart:convert';

import 'package:covid19/countrypage.dart';
import 'package:covid19/infopanel.dart';
import 'package:covid19/mostaffectedcountries.dart';
import 'package:covid19/uifeatures.dart';
import 'package:covid19/worldwide.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pie_chart/pie_chart.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Map worldData;

  fetchWorldwidedata() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/all'));
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  List countryData;

  fetchCountryData() async {
    http.Response response = await http
        .get(Uri.parse('https://corona.lmao.ninja/v2/countries?sort=cases'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

 Future fetchData() async{
    fetchWorldwidedata();
    fetchCountryData();
}
  

  @override
  void initState() {
   fetchData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Covid 19 Tracker",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: fetchData ,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                // width:double.infinity ,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Text(
                  DataSource.quote,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 19.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Worldwide",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Countrypage()));
                      },
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            "Regional",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              worldData == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Worldwide(
                      worldData: worldData,
                    ),


//pie chart

 PieChart(dataMap: {
 'Confirmed': worldData['cases'].toDouble(),
 'Active': worldData['active'].toDouble(),
 'Recovered': worldData['recovered'].toDouble(),
 'Deaths': worldData['deaths'].toDouble(),
},
colorList: [
  Colors.orange,
  Colors.purple,
  Colors.green,
  Colors.red,
],
),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Text(
                  "Most Affected Countries ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              countryData == null
                  ? Container()
                  : Mostaffectedcountry(
                      countryData: countryData,
                    ),
              Infopanel(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.copyright),
                  Text(
                    "  Developed by : Rabin Shrestha",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.email),
                  Text(
                    "  robeanshrestha123@gmail.com",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
