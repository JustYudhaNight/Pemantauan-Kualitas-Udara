import 'package:flutter/material.dart';
import 'package:kualitas_udara/appProvider/app_provider.dart';
import 'package:provider/provider.dart';

class HumidityScreen extends StatefulWidget {
  const HumidityScreen({super.key});

  @override
  State<HumidityScreen> createState() => _HumidityScreenState();
}

class _HumidityScreenState extends State<HumidityScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child){
        return Scaffold(
          appBar: AppBar(
            title: Text("Humidity Monitoring", style: appProvider.blackRoboto14Bold,),
            centerTitle: true,
            backgroundColor: appProvider.humidityColor,
          ),
        );
      },
    );
  }
}



