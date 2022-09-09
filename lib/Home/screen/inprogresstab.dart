import 'package:flutter/material.dart';

import '../widget/buttonbar.dart';
import '../widget/customcontainer.dart';

class InProgress extends StatefulWidget {
  const InProgress({Key? key}) : super(key: key);

  @override
  State<InProgress> createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  double _height = 48;
  double _width = 133.2;
  bool _isExpanded = false;
  String _selected = 'Select';
  List<String> op = ["On The Way","Arrived","Customer in Car","Complete Job","No Show"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color:Colors.grey.withOpacity(0.2),
            child: Container(
              margin: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(height:size.height*0.03),
                      Text('2.30 pm, AUG 19',style: Theme.of(context).textTheme.displayMedium),
                      Padding(
                        padding:  EdgeInsets.only(right: size.width*0.4),
                        child: Divider(color: Colors.grey.withOpacity(0.5),),
                      ),
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
                      AnimatedButtonBar(
                        radius: 8.0,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        invertedSelection: true,
                        backgroundColor: Colors.transparent,
                        children: [
                          ButtonBarEntry(
                              onTap: () => print('First item tapped'), child: Icon(Icons.directions,color: Colors.red,)),
                          ButtonBarEntry(
                              onTap: () => print('Second item tapped'),
                              child: Text('Week')),
                          ButtonBarEntry(
                              onTap: () => print('Third item tapped'),
                              child: Text('Month')),
                          ButtonBarEntry(
                              onTap: () => print('Fourth item tapped'), child: Text('Year'))
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     PrimaryButton( text: wbText,
                      //       onPressed: () {
                      //         // Navigator.push(
                      //         //     context,
                      //         //     MaterialPageRoute(
                      //         //         builder: (context) => HomeScreen()));
                      //       },
                      //       vPadding: 8,
                      //       hPadding: 12,
                      //       tColor: Colors.black,
                      //       bColor: Colors.white, fontSize: 14,),
                      //     PrimaryButton( text: rbText,
                      //       onPressed: () {
                      //         // Navigator.push(
                      //         //     context,
                      //         //     MaterialPageRoute(
                      //         //         builder: (context) => HomeScreen()));
                      //       },
                      //       vPadding: 8,
                      //       hPadding: 12,
                      //       tColor: Colors.white,
                      //       bColor: Colors.red, fontSize: 14,),
                      //   ],
                      // ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: AnimatedContainer(
                      height: _height,
                      width: _width,
                      decoration:BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      duration: Duration(milliseconds: 500),
                      child: GestureDetector(
                        child: AnimatedContainer(
                          margin: const EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            color: Color(0xff3a3b3d),
                            borderRadius: BorderRadius.circular(10),
                          ), duration: Duration(milliseconds: 500),
                          child: _isExpanded?Column(
                            children: [
                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(_selected,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 12),),
                              ),
                              Icon(Icons.keyboard_arrow_up_sharp,color: Colors.white,),
                            ],
                          ),
                              Expanded(
                                child: ListView.builder(
                                        itemCount: op.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return InkWell(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(op[index],
                                                  style: _selected==op[index]?TextStyle(color: Colors.red):TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  _selected = op[index];
                                                  _isExpanded = false;
                                                  _height = size.height*0.06;
                                                  _width = size.width*0.37;
                                                });
                                                if(op[index]=="No Show"){
                                                 print("oprm bnn");
                                                }
                                              }
                                              );
                                        },
                                      ),
                              ),
                                  ],
                          ):Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(_selected,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 12),),
                             ),
                              Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
                            ],
                          ),
                        ),
                        onTap: () {
                          if(_isExpanded) {
                            setState(() {
                              _height = size.height*0.06;
                              _width = size.width*0.37;
                              _isExpanded = false;
                            });
                          } else {
                            setState(() {
                              _height = size.height*0.2;
                              _width = size.width*0.37;
                              _isExpanded = true;
                            });
                          }
                        },
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 15),
            child: Container(
              height: size.height*0.2,
              width: size.width,
              decoration: BoxDecoration(
                color:Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Attachments',style:Theme.of(context).textTheme.displayMedium),
                       CustomCont(size: size, width: size.width*0.22,
                       height: size.height*0.05,
                       child:  Center(child: Text("Attach File",style: Theme.of(context).textTheme.bodySmall),),),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     //place holder for image
                      Container(
                        height: size.height*0.1,
                        width: size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Icon(Icons.image,color: Colors.black,)),
                        ),
                      ),
                      Container(
                        height: size.height*0.1,
                        width: size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Icon(Icons.image,color: Colors.black,)),
                        ),
                      ),
                      Container(
                        height: size.height*0.1,
                        width: size.width*0.2,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1.0),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Icon(Icons.image,color: Colors.black,)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Text("Passenger Info",style: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: size.height*0.02,),
          Text("Name",style:Theme.of(context).textTheme.labelMedium,),
          Text("Jordan smith",style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: size.height*0.02,),
          Text("Contact No",style:Theme.of(context).textTheme.labelMedium,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("+91 9876543210",style: Theme.of(context).textTheme.bodyLarge,),
             CustomCont(size: size, height: size.height*0.05,
             width: size.width*0.15,
             child: Icon(Icons.call,color: Colors.white,),)
            ],
          ),
          SizedBox(height: size.height*0.02,),
          Text("Requirements",style: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: size.height*0.02,),
          Text("Seats and Luggage",style:Theme.of(context).textTheme.labelMedium,),
          Text("Toddler Seats",style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: size.height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of Passengers",style:Theme.of(context).textTheme.labelMedium,),
              CustomCont(size: size, height: size.height*0.05,
                width: size.width*0.15,
                child: Center(child: Text("2",style: TextStyle(color: Colors.white,fontSize: 20),)))
            ],
          ),
          SizedBox(height: size.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Number of Luggage",style:Theme.of(context).textTheme.labelMedium,),
              CustomCont(size: size, height: size.height*0.05,
                  width: size.width*0.15,
                  child: Center(child: Text("4",style: TextStyle(color: Colors.white,fontSize: 20),)))
            ],
          ),
          SizedBox(height: size.height*0.02,),
          Text("Description",style:Theme.of(context).textTheme.labelMedium,),
          SizedBox(height: size.height*0.01,),
          Container(
            height: size.height*0.1,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white54),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(child: Text("I need a car to go to my office",style: Theme.of(context).textTheme.bodySmall,)),
            ),
          ),
        ]
      ),
    );
  }
}


