import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: ListView(children: <Widget>[
          Center(
          child: Text(
          'Subscription Fee',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),
      SizedBox(height: 10,),
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FittedBox(
          child: DataTable(
             // dataRowColor: Colors.yellow,
              headingRowColor:
              MaterialStateColor.resolveWith((states) => Colors.yellow),
            columns: [
            DataColumn(label: Expanded(child: Text('Features'))),
            DataColumn(label: Column(
              children: [
                Expanded(child: Text('Free')),
                Expanded(child: Text('Membership')),
              ],
            )),
              DataColumn(label: Column(
                children: [
                  Expanded(child: Text('Standard')),
                  Expanded(child: Text('Membership')),
                ],
              )),
              
            ],
            rows: [
            DataRow(cells: [
            DataCell(Text("View All Jobs")),
            DataCell(Icon(Icons.done)),
            DataCell(Icon(Icons.done)),
            ]),
              DataRow(cells: [
                DataCell(Text("Favorites")),
                DataCell(Icon(Icons.done)),
                DataCell(Icon(Icons.done)),
              ]),
              DataRow(cells: [
                DataCell(Text("View expired Jobs")),
                DataCell(Icon(Icons.done)),
                DataCell(Icon(Icons.done)),
              ]),
            DataRow(cells: [
            DataCell(Expanded(child: Text('Custom URL for public profile'))),
            DataCell(Icon(Icons.close)),
            DataCell(Icon(Icons.done)),
            ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('Ask Question to Company'))),
                DataCell(Icon(Icons.close)),
                DataCell(Icon(Icons.done)),
              ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('Who viewed your your profile'))),
                DataCell(Icon(Icons.close)),
                DataCell(Icon(Icons.done)),
              ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('All-driven Job Recommendation'))),
                DataCell(Icon(Icons.close)),
                DataCell(Icon(Icons.done)),
              ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('Career Counseling'))),
                DataCell(Icon(Icons.close)),
                DataCell(Text("1 Session per Month")),
              ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('Discount on Ishraak Training'))),
                DataCell(Icon(Icons.close)),
                DataCell(Text("30%")),
              ]),
              DataRow(cells: [
                DataCell(Expanded(child: Text('Apply per Day'))),
                DataCell(Text("5/Day,50/Month")),
                DataCell(Text("10/Day,200/Month")),
              ]),

            ],
            ),
        ),
      ),

      ])
      );

  }
}
