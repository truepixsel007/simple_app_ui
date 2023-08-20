import 'package:flutter/material.dart';
import 'package:fixed_bottom_navbar/page/mail_page.dart';
import 'package:fixed_bottom_navbar/page/chat_page.dart';
import 'package:fixed_bottom_navbar/account_detail/account.dart';
import 'package:fixed_bottom_navbar/account_detail/mandetail.dart';
import 'package:fixed_bottom_navbar/account_detail/accounttwo.dart';
import 'package:fixed_bottom_navbar/account_detail/setting.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    mailpage(),
    // Center(child: Text('Mail', style: TextStyle(fontSize: 72),),),
    Center(child: Text('chat', style: TextStyle(fontSize: 72),),),
    Center(child: Text('spaces', style: TextStyle(fontSize: 72),),),
    Center(child: Text('Meet', style: TextStyle(fontSize: 72),),),
  ];
  var arrNames = [ 'raman', 'ramanujan', 'rajesh', 'james', ' john', ' rohim'];
  final  List<IconData> icons = [
    Icons.sentiment_very_dissatisfied,
    Icons.home,
    Icons.drafts,
    Icons.backspace,
    Icons.drafts,
    Icons.backspace
  ];
  // var accountman =['Ayush Garg', 'account detail'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grow'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Go to the next page',
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
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(''),
                    ),
                    body:

                          accountTwo()


                  );
                },
              ));
            },
            child: CircleAvatar(
              // backgroundColor: Colors.greenAccent[400],
              radius: 20,
              child: Image.network('https://png.pngitem.com/pimgs/s/2-22224_ironman-png-marvel-logo-iron-man-png-transparent.png') //Text
            ),
          ),
        ],
      ),
      drawer: Drawer(
        // surfaceTintColor:
        child: Column(

          children: <Widget>[
            Container(
              // color: Theme.of(context).primaryColor,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/profile-1677990635345-82e1fff4afc8image?dpr=1&auto=format&fit=crop&w=150&h=150&q=60&crop=faces&bg=fff"),
                        )
                    ),
                  ),
                  Text("ayush gupta",style: TextStyle(fontSize: 25,color: Colors.white),),
                ],
              ),
            ),
            ListTile(
              title: Text("Home", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => HomePage()
                ));
              },
            ),
            ListTile(
              title: Text("setting", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.settings),
              // onTap: (){
              //   Navigator.push(context, MaterialPageRoute(builder:
              //       (context) => SettingPage()
              //   ));
              // },
            ),
            ListTile(
              title: Text("Logout", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.logout),
              onTap: null,
            ),
          ],
        ),
      ),
      body: screens[index],
     bottomNavigationBar: NavigationBarTheme(
       data: NavigationBarThemeData(
         indicatorColor: Colors.blue.shade100,
         labelTextStyle: MaterialStateProperty.all(
           TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
         ),
       ),
       child: NavigationBar(
         height: 60,
         backgroundColor: Color(0xfff1f5fb),
         // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
         selectedIndex: index,
         onDestinationSelected: (index) =>
         setState(() => this.index = index),
         animationDuration: Duration(seconds: 3),
         destinations: [
           NavigationDestination(icon:Icon(Icons.line_axis_outlined), label: 'Stock'),
           NavigationDestination(icon:Icon(Icons.pie_chart), label: 'Mutual Funds'),
           NavigationDestination(icon:Icon(Icons.play_arrow_outlined), label: 'Play'),
           NavigationDestination(icon:Icon(Icons.money_off_csred_outlined), label: 'Lables'),
         ],
       ),
     ),
    );
  }
}


