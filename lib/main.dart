import 'package:doctor_booking_app/src/app/book_my_doc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  // await Firebase.initializeApp();
  setupLocator();
  // NetworkConnectivityCheck connectionStatus =
  // NetworkConnectivityCheck.getInstance();
  // connectionStatus.initialize();
  runApp(Material(
    child: BookMyDoc(prefs: prefs),
  ));
}

void setupLocator() {
  // _getIt.registerSingleton(CallAndMessageService());
  // _getIt.registerSingleton(SharedServices());
}