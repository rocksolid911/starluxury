import 'package:flutter/material.dart';

import '../../Common/Widgets/primarybutton.dart';

class PendingCard extends StatelessWidget {
  final String wbText;
  final String rbText;
  const PendingCard({
    Key? key,
    required this.size, required this.wbText, required this.rbText,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: size.height * 0.35,
      width: size.width,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          color:Colors.grey.withOpacity(0.2),
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order ID: 123456789',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                    Icon(Icons.info,color: Colors.red,),
                  ],
                ),
                Divider(color: Colors.grey.withOpacity(0.5),),
                Text("Jordan methews",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height:size.height*0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Pv",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                VerticalDivider(color: Colors.green,thickness: 5,),
                                Text("Lorem Ipsum",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),),
                        SizedBox(height: size.height*0.01,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("Pv",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                VerticalDivider(color: Colors.red,thickness: 2,),
                                Text("Lorem Ipsum",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),),
                      ],
                    ),
                    //image with rounded corners
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/limo1.jpeg',
                          width: 83,
                          height: 64,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PrimaryButton( text: wbText,
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomeScreen()));
                      },
                      vPadding: 8,
                      hPadding: 12,
                      tColor: Colors.black,
                      bColor: Colors.white, fontSize: 14,),
                    PrimaryButton( text: rbText,
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomeScreen()));
                      },
                      vPadding: 8,
                      hPadding: 12,
                      tColor: Colors.white,
                      bColor: Colors.red, fontSize: 14,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}