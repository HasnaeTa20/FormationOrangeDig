import 'package:flutter/material.dart';

class InterractionPage extends StatefulWidget {
  const InterractionPage({super.key});

  @override
  State<InterractionPage> createState() => _InterractionPageState();
}

class _InterractionPageState extends State<InterractionPage> {
 Color color=Colors.pink;
 Color text=Colors.white;
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: Text('Statful Widget'), backgroundColor: const Color.fromARGB(255, 243, 206, 218),),
      body: Center(child: Text('Hello Wordl!', style: TextStyle(color: text),),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
        setState(() {
          UpdateColor();
        });
        },
            backgroundColor: Color.fromARGB(255, 228, 189, 206),
            
            child: Icon(Icons.edit,color: Colors.white,
            ),),
    );
  }

  UpdateColor(){
    color =     (color ==Colors.pink) ?Colors.white: Colors.pink;
    text=(text==Colors.white)? Colors.pink :Colors.white;
  }
}