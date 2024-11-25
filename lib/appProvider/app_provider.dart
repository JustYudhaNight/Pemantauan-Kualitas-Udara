import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kualitas_udara/screens/gas_screen.dart';
import 'package:kualitas_udara/screens/humidity_screen.dart';
import 'package:kualitas_udara/screens/temperature_screen.dart';

class AppProvider extends ChangeNotifier {
  TextStyle roboto14Italic = GoogleFonts.roboto(
    fontSize: 14, fontWeight: FontWeight.w400,);
  TextStyle roboto14 = GoogleFonts.roboto(
    fontSize: 14, fontWeight: FontWeight.w500,);
  TextStyle roboto14SemiBold = GoogleFonts.roboto(
    fontSize: 14, fontWeight: FontWeight.w600,);
  TextStyle roboto14Bold = GoogleFonts.roboto(
    fontSize: 14, fontWeight: FontWeight.w700,);
  TextStyle roboto16Italic = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.w400,);
  TextStyle roboto16 = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.w500,);
  TextStyle roboto16SemiBold = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.w600,);
  TextStyle roboto16Bold = GoogleFonts.roboto(
    fontSize: 16, fontWeight: FontWeight.w700,);

  TextStyle whiteRoboto14Bold = GoogleFonts.roboto(
      fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white);

  TextStyle blackRoboto14Bold = GoogleFonts.roboto(
      fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black);

  Color mainColor = const Color(0xff133E87);
  Color temperatureColor = const Color(0xffF96E2A);
  Color humidityColor = const Color(0xffD4F6FF);
  Color gasColor = const Color(0xffAF1740);

  gotoTemperatureScreen({required BuildContext context}){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TemperatureScreen(),),
    );
    notifyListeners();
  }
  gotoHumidityScreen({required BuildContext context}){
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const HumidityScreen(),),
    );
    notifyListeners();
  }
  gotoGasScreen({required BuildContext context}){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const GasScreen(),),
    );
  }
}