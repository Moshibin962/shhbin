import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var text1 = TextEditingController();
  var text2 = TextEditingController();
  var t1;
  var t2;
  var res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextFormField(
                controller: text1,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: 'enter the number',
                    labelStyle: TextStyle(color: Colors.black)

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextFormField(
                  controller: text2,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      labelText: 'enter the number',
                      labelStyle: TextStyle(color: Colors.black)

                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 310),
                child: Container(
                  height: 40,
                  width: 60,
                  color: Colors.purpleAccent,
                  child: Center(child: Text(res != null? res.toString() : '')),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('C',style: TextStyle(color: Colors.deepOrange),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(Icons.arrow_back_ios,color: Colors.deepOrange,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(Icons.percent_outlined,color: Colors.deepOrange,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(CupertinoIcons.divide,color: Colors.deepOrange,),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('7'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('8'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('9'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(Icons.close,color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('4'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('5'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('6'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(Icons.remove,color: Colors.deepOrange,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('1'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('2'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('3'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Icon(Icons.add,color: Colors.deepOrange,),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text(''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('0'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(onPressed: () {},
                      child: Text('.'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton
                      (onPressed: () {
                      t1 = int.parse(text1.text);
                      t2 = int.parse(text2.text);

                      setState(() {
                        res=t1+t2;
                      });
                    },
                      backgroundColor: Colors.deepOrange,
                      child: Text('=',style: TextStyle(color: Colors.white,fontSize: 40),),
                    ),
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}