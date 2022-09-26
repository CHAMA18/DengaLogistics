import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int addDeposit(
  int? firstInteger,
  int? secondInteger,
) {
  // Add two integers
  var firstArgument = firstInteger ?? 0;
  var secondArgument = secondInteger ?? 0;
  return firstArgument + secondArgument;
}

int subWithdraw(
  int firstInteger,
  int secondInteger,
) {
  // substracts two integers
  return firstInteger - secondInteger;
}
