import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

double? cFergentololtt(
  double sar,
  double hemjee,
  double huu,
) {
  if (sar > 0) {
    return ((sar * huu * hemjee) / 100 + hemjee) / sar;
  }
  return 0;
}

String? cFcurrenttimeshort(String ctime) {
  // replace spase to character in text

  // string to date
  var cctime = ctime.replaceAll('T', ' ');
  var date = DateTime.parse(cctime);
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(date);
  return formatted;
}

String? cFcurrenttime(String ctime) {
  // replace spase to character in text
  if (ctime != null) {
    return ctime.replaceAll(' ', 'T');
  }
  return null;
}

bool? cFstatuscodecheck(int? statuscode) {
  if (statuscode == 4) {
    return false;
  }
  return true;
}

Color? cFstatuscodeColor(int? statuscode) {
  // return conditional color
  if (statuscode == 0) {
    return Colors.blue;
  } else if (statuscode == 1) {
    return Colors.orange;
  } else if (statuscode == 2) {
    return Colors.red;
  } else if (statuscode == 4) {
    return Colors.green;
  }
  return Colors.black;
}

String? cFstatuscode(int? statuscode) {
  if (statuscode == 0) {
    return 'Шинэ';
  } else if (statuscode == 1) {
    return 'Судалсан';
  } else if (statuscode == 2) {
    return 'Татгалзсан';
  } else if (statuscode == 3) {
    return 'Гэрээ байгуулсан';
  } else if (statuscode == 4) {
    return 'Шийдсэн';
  }
  return 'Олгогдсон';
}

String? flouttoshort(String? too) {
  // double convert to fixed(2)
  if (too != null) {
    return double.parse(too).toStringAsFixed(2);
  }
  return null;
}

bool? cFreturnboolen(String? approv) {
  // string to boolen
  if (approv == '01') {
    return true;
  } else if (approv == '00') {
    return false;
  }
  return null;
}

int? cdatetoyear(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    DateTime date = DateFormat('MM/dd/yyyy').parse(fulldate);
    int year = date.year;
    return year;
  }
  return null;
}

int? cdatetoday(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    DateTime date = DateFormat('MM/dd/yyyy').parse(fulldate);
    int year = date.day;
    return year;
  }
  return null;
}

int? cdatetomonth(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    DateTime date = DateFormat('MM/dd/yyyy').parse(fulldate);
    int year = date.month;
    return year;
  }
  return null;
}

int? datetoyear(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    var date = DateTime.parse(fulldate);
    int year = date.year;
    return year;
  }
  return null;
}

String? datetomonth(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    var date = DateTime.parse(fulldate);
    int year = date.month;
    if (year < 10) {
      return year.toString().padLeft(2, '0');
    } else {
      return year.toString();
    }
  }
  return null;
}

String? datetoday(String? fulldate) {
  // year-month-date parsing to split year
  if (fulldate != null) {
    var date = DateTime.parse(fulldate);
    int year = date.day;
    if (year < 10) {
      return year.toString().padLeft(2, '0');
    } else {
      return year.toString();
    }
  }
  return null;
}

int monthendday(
  String? month,
  String? year,
) {
  // input month and year return month's end day
  if (month == null || year == null) {
    return 0;
  }
  if (month == '01' ||
      month == '03' ||
      month == '05' ||
      month == '07' ||
      month == '08' ||
      month == '10' ||
      month == '12') {
    return 31;
  } else if (month == '04' || month == '06' || month == '09' || month == '11') {
    return 30;
  } else if (month == '02') {
    if (int.parse(year) % 4 == 0) {
      return 29;
    } else {
      return 28;
    }
  } else {
    return 0;
  }
}

String? tololtodortootsoh(
  String? tdate,
  String? cdate,
) {
  // string to date and to compare dates
  if (tdate == null || cdate == null) {
    return null;
  }
  var date1 = DateTime.parse(tdate);
  var date2 = DateTime.parse(cdate);
  var difference = date1.difference(date2).inDays;
  if (difference == 0) {
    return 'Өнөөдөр байна.';
  } else if (difference == 1) {
    return 'Маргааш байна.';
  } else if (difference < 0) {
    return '$difference -н өдрийн өмнө байна.';
  } else {
    int dt = difference.abs();
    return '$dt өдрийн дараа байна.';
  }
}

String? base64convert(String? base64) {
  // base64 stringconvert  to image path file
  if (base64 == null) {
    return null;
  }
  final String? imagePath = 'data:image/png;base64,' + base64;
  return imagePath;
}

String encodebase64(
  String? user,
  String? pass,
) {
  // user and pass to base64 encode
  String? base64 = base64Encode(utf8.encode('$user:$pass'));
  return base64;
}

String? cFcomma(String? insrt) {
  // if argument is integer  then to comma style integer else  comma style double
  if (insrt == null) {
    return "0";
  }
  if (int.tryParse(insrt) != null) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(insrt));
  } else if (double.tryParse(insrt) != null) {
    final formatter = NumberFormat('#,###.##');
    return formatter.format(double.parse(insrt));
  } else {
    return "0";
  }
}

int? cFmyangatbuhel(double? payment) {
  // payment to around nearest thousand
  if (payment == null) {
    return null;
  }
  return (payment / 1000).ceil() * 1000;
}

int stringlong(String regis) {
  // return  count letters regis string

  return regis.length;
}

String backspacedel(String stringtext) {
  // return delete last letter in stringtext
  if (stringtext.isEmpty) {
    return '';
  } else {
    return stringtext.substring(0, stringtext.length - 1);
  }
}

DateTime? convertepoch(String? epoch) {
  // return  convert epoch string to datetime
  if (epoch == null) {
    return null;
  }
  try {
    final intEpoch = int.parse(epoch);
    return DateTime.fromMillisecondsSinceEpoch(intEpoch);
  } catch (e) {
    return null;
  }
}

int stringtointeger(String val1) {
  val1 = val1.replaceAll(',', '');
  // string type to integer
  return int.parse(val1);
}
