import 'package:flutter/material.dart';
import 'package:my_app/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 120, 120, 120),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),

         leading:CircleAvatar(
          radius: 20,
                    backgroundImage:
                        AssetImage('assets/1761894.png'),
         ),
         actions: [Icon(Icons.notifications,color: Colors.white,)

         ],
      ),
      body: 
      
 SingleChildScrollView(
          child: Column(children:<Widget> [

            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Find The Best Health For You'),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                                 
                                  decoration: InputDecoration(
                                    
                                 
                                    hintText: "find ...",
                                    border:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),),
                                       ),
                                       enabledBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),),
                                       ),
                                       focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 255, 255, 255),),
                                       ),
                                       disabledBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white60,),
                                       ),
                                       contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14,
                                        vertical: 6,
                                       ),
                                       fillColor: Color.fromARGB(255, 255, 255, 255),
                                       filled: true,
                                  
                                  ),
                                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Popular'),
                ],
              ),
            ),
             Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child:
             ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          FoodItem('assets/plate3.png', 'Salmon bowl', '\24.00'),
                          FoodItem('assets/plate6.png', 'Spring bowl', '\22.00'),
                          FoodItem('assets/plat7.png', 'Avocado bowl', '\26.00'),
                          FoodItem('assets/plate4.png', 'Berry bowl', '\24.00')
                        ]))),
            

                            
            

           
            

           
          ]))])));      
      // ListView(
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           width: 125,
      //           child: Row(

      //           ),
      //         )
      //       ],
      //     )
      //   ],
      // ),
      
      
      
  }
  Widget FoodItem(String imgPath, String Name, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(heroTag: imgPath, Name: Name, Price: price)
            ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Hero(
                      tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0
                      )
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          Name,
                          style: TextStyle(
                           
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            
                            fontSize: 15.0,
                            color: Colors.grey
                          )
                        )
                      ]
                    )
                  ]
                )
              ),
             
            ],
          )
        ));
  }
}