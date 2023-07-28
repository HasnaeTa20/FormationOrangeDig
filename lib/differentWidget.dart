import 'package:flutter/material.dart';
import 'package:my_app/next.dart';

class DifferentWidget extends StatefulWidget {
  const DifferentWidget({super.key});

  @override
  State<DifferentWidget> createState() => _DifferentWidgetState();
}

class _DifferentWidgetState extends State<DifferentWidget> {
  String text = 'dont pressed';
  var color = Colors.yellow;
  bool toggle = false;
  bool switchvalue = false;
  String textee = 'Switch is OFF';
  String mytexte = "";
  bool mytext = false;
  String sliderController = "";
  double SliderValue = 50;
  DateTime initiale = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text(text,style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 158, 239, 160),
          
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    text =
                        (text == 'dont pressed') ? 'Pressed' : 'dont pressed';
                  });
                },
                child: Text('My textButton'),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              child: Text(
                '$initiale',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              elevation: 10,
              shadowColor: Colors.greenAccent,
               
              ),
              onPressed: () {
                ShowDate(context);
                initiale = initiale;
              },
              onLongPress: (){
                print('lon press');
              },
            ),

            IconButton(
              icon:
                  //   toggle
                  //     ? Icon(Icons.sunny,color: Colors.yellow,)
                  //     : Icon(
                  //         Icons.cloud,color: Colors.grey,
                  //       ),
                  // onPressed: () {
                  //   setState(() {
                  //     // Here we changing the icon.
                  //     toggle = !toggle;
                  //   });

                  Icon(
                Icons.sunny,
                size: 30,
                color: color,
              ),
              onPressed: () {
                setState(() {
                  color =
                      (color == Colors.yellow) ? Colors.grey : Colors.yellow;
                  print(color);
                });
              },

              // disabledColor: Colors.grey,
              // color: Colors.yellow,
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                onChanged: (value) => {
                  setState(() {
                    mytexte = value.toString();

                    print(mytexte);
                  })
                },
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "your number ...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Text(mytexte),

            SizedBox(
              height: 10,
            ),
            // Text(controller as String),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Switch(
                    value: switchvalue,
                    onChanged: Switchh,
                    activeColor: Colors.pink,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: Color.fromARGB(255, 236, 181, 224),
                    inactiveTrackColor: Colors.grey,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$textee',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slider(
                value: SliderValue,
                max: 100,
                divisions: 5,
                label: SliderValue.round().toString(),
                thumbColor: Colors.green,
                activeColor: Colors.yellow,
                inactiveColor: Colors.grey,
                onChanged: (double value) {
                  setState(() {
                    SliderValue = value;

                    sliderController = SliderValue.toString();
                    print(SliderValue);
                  });
                },
              ),
            ),
            Text(sliderController),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              elevation: 10,
              shadowColor: Colors.greenAccent,
              ),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage (Color: const Color.fromARGB(255, 137, 87, 146))),);
              },
            ),
          ]),
        ));
  }

  void Switchh(bool value) {
    if (switchvalue == false) {
      setState(() {
        switchvalue = true;
        textee = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.
    } else {
      setState(() {
        switchvalue = false;
        textee = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  ShowDate(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: initiale,
            firstDate: DateTime(1998),
            lastDate: DateTime(2030))
        .then((value) => {
              if (value != null)
                {
                  setState(() {
                    initiale = value;
                  }),
                }
            });
  }
}
