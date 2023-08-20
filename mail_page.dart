import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mailpage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final  List<IconData> iconss = [
      // Icons.wallet_giftcard_outlined,
      // Icons.balance,
      Icons.details_outlined,
      Icons.comment_bank_outlined,
      Icons.network_cell,
      Icons.report_outlined
    ];
    return Scaffold(
      // appBar: AppBar(title: Text("this is home page"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 150,
                  child: ListTile(
                    title: Text("Sort", style: TextStyle(fontSize: 15),),
                    leading: Icon(Icons.sort),
                    trailing: Icon(Icons.arrow_drop_down),
                    onTap: null,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                  // width:100,
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child: OutlinedButton(
                        child: Text('Nearest',style: TextStyle(fontSize:10,color:Colors.black),),
                        onPressed: (){
                        },
                      ),
                    )
                ),
                Container(
                  // width:100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: OutlinedButton(
                      child: Text('Great Offers',style: TextStyle(fontSize:10,color:Colors.black),),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
                Container(
                  // width:100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: OutlinedButton(
                      child: Text('Rating  4.0',style: TextStyle(fontSize:10,color:Colors.black),),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
                Container(
                  // width:100,
                    margin: EdgeInsets.all(5),
                    child: Center(
                      child: OutlinedButton(
                        child: Text('Nearest',style: TextStyle(fontSize:10,color:Colors.black),),
                        onPressed: (){
                        },
                      ),
                    )
                ),
                Container(
                  // width:100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: OutlinedButton(
                      child: Text('Great Offers',style: TextStyle(fontSize:10,color:Colors.black),),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
                Container(
                  // width:100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: OutlinedButton(
                      child: Text('Rating  4.0',style: TextStyle(fontSize:10,color:Colors.black),),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Popular Funds'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){},
                  child: Text('ALL MUTUAL FUNDS',style: TextStyle(color: Colors.greenAccent),)
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 300,
                  child:
                  Card(
                    shadowColor: Colors.black,
                    elevation: 20,
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network('https://e7.pngegg.com/pngimages/257/159/png-clipart-hdfc-logo-thumbnail-bank-logos.png',width: 30,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Quant Small Cap Fund\nDirect Plan Growth'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Equity . Small Cap . 5'),
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('58.32'),
                            Text('3Y Returns'),
                          ],
                        )
                      ],
                    ),

                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                  width: 300,
                  child:
                  Card(
                    shadowColor: Colors.black,
                    elevation: 20,
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network('https://e7.pngegg.com/pngimages/257/159/png-clipart-hdfc-logo-thumbnail-bank-logos.png',width: 30,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Quant Small Cap Fund\nDirect Plan Growth'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Equity . Small Cap . 5'),
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('58.32'),
                            Text('3Y Returns'),
                          ],
                        )
                      ],
                    ),

                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                ),
                Container(
                  width: 300,
                  child:
                  Card(
                    shadowColor: Colors.black,
                    elevation: 20,
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network('https://e7.pngegg.com/pngimages/257/159/png-clipart-hdfc-logo-thumbnail-bank-logos.png',width: 30,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Quant Small Cap Fund\nDirect Plan Growth'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Equity . Small Cap . 5'),
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('58.32'),
                            Text('3Y Returns'),
                          ],
                        )
                      ],
                    ),

                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(22),
                child: Text('Collection'),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(11),
                        width:100,
                        child: IconButton(
                          onPressed: () {

                          },
                          // hoverColor: Colors.orange.withOpacity(0.3),
                          highlightColor: Colors.grey,
                          color: Colors.greenAccent, //<-- SEE HERE
                          iconSize: 30,
                          icon: Icon(
                              Icons.assignment_return_outlined
                          ),
                        ),
                    ),
                    Container(
                        width:100,
                        child: Center(child: Text('High return'))
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width:100,
                      child: IconButton(
                        onPressed: () {

                        },
                        // hoverColor: Colors.orange.withOpacity(0.3),
                        highlightColor: Colors.grey,
                        color: Colors.greenAccent, //<-- SEE HERE
                        iconSize: 30,
                        icon: Icon(
                            Icons.money_off_csred_outlined
                        ),
                      ),
                    ),
                    Container(
                        width:120,
                        child: Center(child: Text('SIP with Rs 500'))
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width:100,
                      child: IconButton(
                        onPressed: () {

                        },
                        // hoverColor: Colors.orange.withOpacity(0.3),
                        highlightColor: Colors.grey,
                        color: Colors.greenAccent, //<-- SEE HERE
                        iconSize: 30,
                        icon: Icon(
                            Icons.savings_outlined
                        ),
                      ),
                    ),
                    Container(
                        width:100,
                        child: Center(child: Text('Tax Saving'))
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width:100,
                      child: IconButton(
                        onPressed: () {

                        },
                        // hoverColor: Colors.orange.withOpacity(0.3),
                        highlightColor: Colors.grey,
                        color: Colors.greenAccent, //<-- SEE HERE
                        iconSize: 20,
                        icon: FaIcon(FontAwesomeIcons.building)
                      ),
                    ),
                    Container(
                        width:100,
                        child: Center(child: Text('Large Cap'))
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width:100,
                      child: IconButton(
                        onPressed: () {

                        },
                        // hoverColor: Colors.orange.withOpacity(0.3),
                        highlightColor: Colors.grey,
                        color: Colors.greenAccent, //<-- SEE HERE
                        iconSize: 30,
                        icon: Icon(
                            Icons.house_siding_outlined
                        ),
                      ),
                    ),
                    Container(
                        width:120,
                        child: Center(child: Text('Mid Cap'))
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(11),
                      width:100,
                      child: IconButton(
                        onPressed: () {

                        },
                        // hoverColor: Colors.orange.withOpacity(0.3),
                        highlightColor: Colors.grey,
                        color: Colors.greenAccent, //<-- SEE HERE
                        iconSize: 20,
                        icon: FaIcon(FontAwesomeIcons.campground)
                      ),
                    ),
                    Container(
                        width:100,
                        child: Center(child: Text('Small Cap'))
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

