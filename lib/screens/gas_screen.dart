import 'package:flutter/material.dart';
import 'package:kualitas_udara/appProvider/app_provider.dart';
import 'package:provider/provider.dart';

class GasScreen extends StatefulWidget {
  const GasScreen({super.key});

  @override
  State<GasScreen> createState() => _GasScreenState();
}

class _GasScreenState extends State<GasScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder : (context, appProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Gas Monitoring", style: appProvider.whiteRoboto14Bold,),
            centerTitle: true,
            backgroundColor: appProvider.gasColor,
          ),
        );
      }
    );
  }
}
