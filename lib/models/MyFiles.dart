import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Workers",
    numOfFiles: 100,
    svgSrc: "assets/icons/person-silhouette-svgrepo-com.svg",
    totalStorage: "200 Total",
    color: primaryColor,
    percentage: 50,
  ),
  CloudStorageInfo(
    title: "Daily Wagers",
    numOfFiles: 20,
    svgSrc: "assets/icons/personYellow.svg",
    totalStorage: "50 Total",
    color: Color(0xFFFFA113),
    percentage: 45,
  ),
  CloudStorageInfo(
    title: "Administrator",
    numOfFiles: 18,
    svgSrc: "assets/icons/personCyan.svg",
    totalStorage: "20 total",
    color: Color(0xFFA4CDFF),
    percentage: 90,
  ),
  CloudStorageInfo(
    title: "Supervisor",
    numOfFiles: 20,
    svgSrc: "assets/icons/personRed.svg",
    totalStorage: "30 Total",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
