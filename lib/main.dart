import 'dd.dart';
import 'package:flutter/material.dart';

void xuly() {}
var textt = TextField();

void main() {
  runApp(MaterialApp(
    home: GiaoDien(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            'DEMO',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // // ElevatedButton(
                // //   child: Icon(
                // //     Icons.settings,
                // //     size: 50,
                // //   ),
                // //   style: ButtonStyle(
                // //     fixedSize: MaterialStateProperty.all(Size(100, 100)),
                // //     backgroundColor:
                // //         MaterialStateProperty.all(Colors.greenAccent),
                // //     shadowColor: MaterialStateProperty.all(
                // //       Colors.red,
                // //     ),
                // //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                // //         borderRadius: BorderRadius.circular(100))),
                // //   ),
                // //   onPressed: () {},
                // // ),
                // // custom(),
                //
                // Expanded(
                //   flex: 2,
                //   child: Container(
                //     width: 100,
                //     color: Colors.black,
                //   ),
                // ),
                //
                // Container(
                //   padding: EdgeInsets.all(10),
                //
                //   height: 200,
                //      child: Row(
                //        children: [
                //
                //          Expanded(
                //              flex: 1,
                //              child: Container(
                //
                //            height:50,
                //            color: Colors.red,
                //          )),
                //          Container(
                //             height: 100,
                //            color: Colors.brown,
                //          )
                //        ],
                //      )
                // ),
                // Expanded(
                //   flex: 2,
                //   child: Container(
                //     width: 100,
                //     color: Colors.greenAccent,
                //   ),
                // ),
                // Container(
                //   width: 100,
                //   height: 100,
                //   color: Colors.yellow,
                // )
                custtom()
              ]),


        ));
  }
}

Widget custom() {
  return InkWell(
    onTap: () {},
    child: Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(1)),
      elevation: 1,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                height: 55,
                width: 30,
                decoration: myBoxDecoration(),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'Programs & Services',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ))),
        ],
      ),
    ),
  );
}
BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.deepPurple,
    borderRadius:
        BorderRadius.all(Radius.circular(1) //         <--- border radius here
            ),
  );
}
Widget custtom(){
  return Stack(
    children: [


    ],
  );
}
