import 'package:flutter/material.dart';
import 'package:kualitas_udara/appProvider/app_provider.dart';
import 'package:provider/provider.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key});

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, appProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Temperature Monitoring", style: appProvider.blackRoboto14Bold,),
            centerTitle: true,
            backgroundColor: appProvider.temperatureColor,
          ),
        );
      },
    );
  }
}


    
