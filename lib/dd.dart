
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GiaoDien extends StatefulWidget {
  const GiaoDien({Key? key}) : super(key: key);

  @override
  _GiaoDienState createState() => _GiaoDienState();
}

class _GiaoDienState extends State<GiaoDien> {
  TextEditingController so1 = TextEditingController();
  TextEditingController so2= TextEditingController();
  int? soA = 0, soB = 0,tong;

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),

              Container(
                child: Image.network(
                  'https://www.vnesport247.com/wp-content/uploads/2020/09/cach-choi-draven-scaled.jpg',
                  width: 500,
                  height: 100,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 100, left: 100),
                  child: TextField(
                    controller: so1,
                    decoration: InputDecoration(hintText: 'Nhap so A'),
                    keyboardType: TextInputType.number,

                  )),
              Container(
                  padding: EdgeInsets.only(left: 100, right: 100),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Nhap so B',),
                    controller: so2,
                    keyboardType: TextInputType.number,
                  )),
              Center(
                child: Text('$tong',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(onPressed: () {
                      setState(() {
                        soA = int.parse(so1.text);
                        soB = int.parse(so2.text);
                        tong = soA! + soB!;

                      });
                  }, child: Text('+')),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('-'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('*'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(':'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
