// splitting the app into widgets

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: settingpage() ,
    );
  }
}

class settingpage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});
  // final String title;

  @override
  State<settingpage> createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                      child: Text('App Preferences')),
                ],
              ),
              Contactt(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('Privacy & Security')),
                ],
              ),
              Contact(),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class Contactt extends StatelessWidget{
  var arrNames = [ 'Dark mode', 'Manage notification',];

  int buttonSelected = 1;

  // var smalldet = ['DarkMode', 'Stock balance',];
  final  List<IconData> icons = [
    Icons.dark_mode,
    Icons.add_alert,
  ];

  // final buttonSelected = 1;
  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 2,
      child: Container(
        // color: Colors.orange,
        child: ListView.separated(itemBuilder:(context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    // setState(){
                    //   buttonSelected =1;
                    // }
                  },
                  hoverColor: Colors.orange.withOpacity(0.3),
                  highlightColor: Colors.grey,
                  color: Colors.greenAccent, //<-- SEE HERE
                  iconSize: 30,
                  icon: Icon(
                      icons[index]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    // Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                  ],
                ),
              ),
            ],
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: ( context, index){
// ignore: prefer_const_constructors
            return Divider(height: 6, thickness: 2,color: Colors.grey,indent: 80,endIndent:0,);

          },
// reverse: true,
//          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget{
  var arrNames = [ 'Change password', 'change PIN', 'Delete Account', 'Acitive devices', 'Log Out'];
  // var smalldet = ['Invite friends on Grow', 'Stock balance', 'Track oders, order details',
  //   'Bank & AutoPay mandates', 'Faqs Contact Grow','Stocks & mutual funds Groww'];
  // final Color? hoverColor;
  final  List<IconData> icons = [
    Icons.lock_clock_outlined,
    Icons.pin,
    Icons.delete_forever_outlined,
    Icons.device_unknown_outlined,
    Icons.logout_outlined,
    // Icons.report_outlined
  ];

  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 7,
      child: Container(
        // color: Colors.orange,
        child: ListView.separated(itemBuilder:(context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    color: Colors.red;
                  },
                  hoverColor: Colors.orange.withOpacity(0.3),
                  highlightColor: Colors.grey,
                  color: Colors.greenAccent, //<-- SEE HERE
                  iconSize: 30,
                  icon: Icon(
                      icons[index]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    // Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                  ],
                ),
              ),
            ],
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: ( context, index){
// ignore: prefer_const_constructors
            return Divider(height: 6, thickness: 2,color: Colors.grey,indent: 80,endIndent:0,);

          },
// reverse: true,
//          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}


// Icon((icons[index]),