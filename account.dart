import 'package:flutter/material.dart';
import 'package:fixed_bottom_navbar/account_detail/mandetail.dart';

class accountdetaile extends StatelessWidget{
  var arrNames = [ 'Refer', 'Rs 0.00', 'All orders', 'bank detail', 'Customer support', 'Reports'];
  var smalldet = ['Invite friends on Grow', 'Stock balance', 'Track oders, order details',
    'Bank & AutoPay mandates', 'Faqs Contact Grow','Stocks & mutual funds Groww'];
  final  List<IconData> icons = [
    Icons.wallet_giftcard_outlined,
    Icons.balance,
    Icons.details_outlined,
    Icons.comment_bank_outlined,
    Icons.network_cell,
    Icons.report_outlined
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
              Container(
                child: ListView.separated(itemBuilder:(context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon((icons[index]),size: 40,),

                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(smalldet[index], style: TextStyle(fontWeight: FontWeight.w500,fontSize: 11),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                  itemCount: arrNames.length,
                  separatorBuilder: ( context, index){
// ignore: prefer_const_constructors
                    return Divider(height: 5, thickness: 2,color: Colors.grey,indent: 80,endIndent:0,);
                  },
// reverse: true,
                ),
              ),
    );
  }
}

// ListView(
// children: const <Widget>[
// ListTile(
// leading: CircleAvatar(child: Text('A')),
// title: Text('Headline'),
// subtitle: Text('Supporting text'),
// trailing: Icon(Icons.favorite_rounded),
// ),
// ],
// ),