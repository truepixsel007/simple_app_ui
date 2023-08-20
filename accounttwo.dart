// splitting the app into widgets

import 'package:flutter/material.dart';
import 'package:fixed_bottom_navbar/account_detail/setting.dart';

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
      home: accountTwo() ,
    );
  }
}

class accountTwo extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});
  // final String title;

  @override
  State<accountTwo> createState() => _accountTwoState();
}

class _accountTwoState extends State<accountTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
        body: Container(
          child: Column(
            children: [
              CatItems(),
              ContacttT(),
              ContacttTt(),
              Contact(),
            ],
          ),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return    Expanded(
      flex: 1,
      child: Container(
        // color: Colors.blue,
        child: ListTile(
          leading: CircleAvatar(child: Image.network('https://png.pngitem.com/pimgs/s/2-22224_ironman-png-marvel-logo-iron-man-png-transparent.png') ),
          title: Text('Ayush Grag'),
          subtitle: Text('Supporting text'),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
class Contact extends StatelessWidget{
  var arrNames = [  'All orders', 'bank detail', 'Customer support', 'Reports'];
  var smalldet = ['Invite friends on Grow', 'Stock balance', 'Track oders, order details',
    'Bank & AutoPay mandates', 'Faqs Contact Grow','Stocks & mutual funds Groww'];
  // final Color? hoverColor;
  final  List<IconData> icons = [
    // Icons.wallet_giftcard_outlined,
    // Icons.balance,
    Icons.details_outlined,
    Icons.comment_bank_outlined,
    Icons.network_cell,
    Icons.report_outlined
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
                    // color: Colors.red;
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
                    Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
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
class ContacttT extends StatefulWidget{
  @override
  State<ContacttT> createState() => _ContacttTState();
}

class _ContacttTState extends State<ContacttT> {
  var arrNames = [ 'Dark mode',];

  var smalldet = ['Invite friends on Grow',];

  // final Color? hoverColor;
  final  List<IconData> icons = [
    Icons.wallet_giftcard_outlined,
    // Icons.balance,
  ];

  var goPage = ['settingpage()'];


  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 1,
      child: Container(
        // color: Colors.orange,
        child: ListView.separated(itemBuilder:(context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text('Setting'),
                          ),
                          body: settingpage(),
                        );
                      },
                    ));
                  },
                  // hoverColor: Colors.orange.withOpacity(0.3),
                  highlightColor: Colors.grey,
                  color: Colors.greenAccent, //<-- SEE HERE
                  iconSize: 30,
                  icon: Icon(
                      icons[index],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                    Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: (){},
                    icon: Icon(
                      Icons.call,
                      size: 24.0,
                      color: Colors.greenAccent,
                    ),
                  label: Text('INVITE',style: TextStyle(color:Colors.greenAccent),),
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
class ContacttTt extends StatelessWidget{
  var arrNames = [ 'Rs 0.00',];
  var smalldet = ['Stock balence',];
  // final Color? hoverColor;
  final  List<IconData> icons = [
    Icons.balance,
    // Icons.add_alert,
  ];

  @override
  Widget build(BuildContext context){
    return   Expanded(
      flex: 1,
      child: Container(
        // color: Colors.orange,
        child: ListView.separated(itemBuilder:(context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {

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
                    Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){},
                  icon: Icon(
                    Icons.add,
                    color: Colors.greenAccent,
                    size: 24.0,
                  ),
                  label: Text('ADD Money',style: TextStyle(color: Colors.greenAccent),),
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