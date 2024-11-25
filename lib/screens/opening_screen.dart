import 'package:flutter/material.dart';
import 'package:kualitas_udara/appProvider/app_provider.dart';
import 'package:provider/provider.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
        builder: (context, appProvider, child){
          return Scaffold(
            appBar: AppBar(
              title: Text("Monitoring Air Quality", style: appProvider.whiteRoboto14Bold,),
              centerTitle: true,
              backgroundColor: appProvider.mainColor,
            ),
            body: Center(
              child: ListView(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 20,),

                  GestureDetector(
                  child : Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.black, width: 4),
                    ),
                    child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.width / 5,
                          child: Image.asset("images/temperature.png"),
                        ),
                        const SizedBox(height: 14,),
                        Center(child: Text("TEMPERATURE", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),),)
                      ],
                    ),
                  ),
                    onTap: () {},
                  ),

                  const SizedBox(height: 20,),

                  GestureDetector(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.black, width: 4),
                    ),
                    child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          height: MediaQuery.of(context).size.width / 5,
                          child: Image.asset("images/humidity.png"),
                        ),
                        const SizedBox(height: 14,),
                        Center(child: Text("HUMIDITY", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),),)
                      ],
                    ),
                  ),
                    onTap: () {},
                  ),


                  const SizedBox(height: 20,),

                  GestureDetector(
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.black, width: 4),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            height: MediaQuery.of(context).size.width / 5,
                            child: Image.asset("images/gas.png"),
                          ),
                          const SizedBox(height: 14,),
                          Center(child: Text("GAS", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),),)
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}

