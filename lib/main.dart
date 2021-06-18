// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/charts.dart' hide LabelPlacement;
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'data.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));
//var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
final List<Data> _chartData = <Data>[
  Data(x: DateTime(2007, 01, 01), y: 2.5),
  Data(x: DateTime(2008, 01, 01), y: 2.9),
  Data(x: DateTime(2009, 01, 01), y: 3.8),
  Data(x: DateTime(2010, 01, 01), y: 2.0),
];

final DateTime _dateMin = DateTime(2003, 01, 01);
final DateTime _dateMax = DateTime(2010, 01, 01);
final SfRangeValues _dateValues =
    SfRangeValues(DateTime(2005, 01, 01), DateTime(2008, 01, 01));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.deepPurpleAccent,
                height: 250,
                //padding: EdgeInsets.fromLTRB(0, 10, 200, 10),

                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.reorder),
                          iconSize: 40,
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.sync),
                          iconSize: 40,
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          iconSize: 40,
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          alignment: Alignment.center,
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text(
                            '20%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 15,
                              )),
                        ),
                        Spacer(),
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 40.0),
                          child: Column(
                            children: <Widget>[
                              Text('Calls today',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300)),
                              Text('0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Divider(
                                color: Colors.red,
                              ),
                              Text(
                                'Closed',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Text('Sales this week',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  primary: false,
                  children: <Widget>[
                    Container(
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Outlets',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 25),
                            Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, right: 40.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Universe',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Today',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20.0, right: 40.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        '741',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      elevation: 2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Sales',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 25),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 40.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 40.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '18',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: SizedBox(
                width: 600,
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Calls this week',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

                      /*Sparkline(
                        data: data,
                        pointsMode: PointsMode.all,
                        pointSize: 8.0,
                        pointColor: Colors.amber,
                        fillMode: FillMode.below,
                        fillGradient: new LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.red[800], Colors.red[200]],
                        ),
                      ),*/
                      SfRangeSelector(
                        min: _dateMin,
                        max: _dateMax,
                        initialValues: _dateValues,
                        labelPlacement: LabelPlacement.betweenTicks,
                        interval: 1,
                        dateIntervalType: DateIntervalType.years,
                        dateFormat: DateFormat.y(),
                        showTicks: true,
                        showLabels: true,
                        child: Container(
                          child: SfCartesianChart(
                            margin: const EdgeInsets.all(0),
                            primaryXAxis: DateTimeAxis(
                              minimum: _dateMin,
                              maximum: _dateMax,
                              isVisible: false,
                            ),
                            primaryYAxis:
                                NumericAxis(isVisible: false, maximum: 4),
                            series: <SplineAreaSeries<Data, DateTime>>[
                              SplineAreaSeries<Data, DateTime>(
                                  dataSource: _chartData,
                                  xValueMapper: (Data sales, int index) =>
                                      sales.x,
                                  yValueMapper: (Data sales, int index) =>
                                      sales.y)
                            ],
                          ),
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
