import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Attendance Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/person-silhouette-svgrepo-com.svg",
            title: "Administrators",
            amountOfEmployees: "25",
            numOfEmployees: 20,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/personCyan.svg.svg",
            title: "Supervisors",
            amountOfEmployees: "40",
            numOfEmployees: 30,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/personYellow.svg",
            title: "Workers",
            amountOfEmployees: "212",
            numOfEmployees: 200,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/personRed.svg",
            title: "Daily Wagers",
            amountOfEmployees: "Undefined",
            numOfEmployees: 50,
          ),
        ],
      ),
    );
  }
}
