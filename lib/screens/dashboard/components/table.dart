import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  List<DataRow> rows = [];
  List<String> headers = ["Date", "Name", "CNIC", "Designation", "Shift", "Time In", "-", "Time Out", "-", "Att: By"];

  @override
  void initState() {
    super.initState();
    // Add an example row
    addRow(["Data 1", "Data 2", "Data 3", "Data 4", "Data 5", "Data 6", "Data 7", "Data 8", "Data 9", "Data 10"]);
  }

  void addRow(List<String> rowData) {
    setState(() {
      rows.add(DataRow(
        cells: rowData.map<DataCell>((String cellData) {
          return DataCell(
            Container(
              width: 100,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.black, // Adjust the color of the grid line
                    width: 1.0, // Adjust the thickness of the grid line
                  ),
                ),
              ),
              child: Text(cellData, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          );
        }).toList(),
      ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 400), // Adjust the maximum height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.purple),
          columns: headers.map<DataColumn>((header) {
            return DataColumn(
              label: Container(
                width: 100,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.black, // Adjust the color of the grid line
                      width: 1.0, // Adjust the thickness of the grid line
                    ),
                  ),
                ),
                child: Text(header, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            );
          }).toList(),
          rows: rows.isNotEmpty
              ? rows
              : [
            DataRow(
              cells: [
                for (var i = 0; i < headers.length; i++)
                  DataCell(
                    Container(
                      width: 100,
                      child: Center(
                        child: i == headers.length ~/ 2
                            ? Text(
                          "No data available",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                            : Text(""),
                      ),
                    ),
                  ),
              ],
            ),
          ],

          dataRowHeight: 50, // Adjust the row height as needed
          headingRowHeight: 60, // Adjust the heading row height as needed
          columnSpacing: 10, // Adjust the spacing between columns
          horizontalMargin: 10, // Adjust the margin on both sides of the table
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black), // Add borders around the table
          ),
        ),
      ),
    );
  }
}
