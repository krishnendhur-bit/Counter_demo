import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {

  int counterValue=0;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: SizedBox(
                height: 50,
                width: 200,

                child: ElevatedButton(

                    onPressed: (){
                      setState(() {
                        counterValue=counterValue+1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      backgroundColor: Colors.deepOrange
                    ),
                    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.black),)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: SizedBox(
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        counterValue=counterValue-1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        backgroundColor: Colors.greenAccent
                    ),

                    child: Text("-",style: TextStyle(fontSize: 30,color: Colors.black),)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(counterValue.toString(),style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
