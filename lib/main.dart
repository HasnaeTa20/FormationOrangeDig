
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:BasicPage() ,
    );
  }
}
class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    //  double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:
    AppBar(
      leading: Icon(Icons.favorite,
      color: Colors.black,
      size: 20,
      ),
      title: Text('My Rabbit'),

      actions: [
        Icon(Icons.logout)
      ],

    ),
   backgroundColor: Colors.white,
   body:SingleChildScrollView(
   child: Stack(
  

    children: [
      // simpleText('Rabbit'),
      
      
      Image.asset('assets/rabbit_banner-1024x211.webp',
      height: 180,
  
      fit: BoxFit.cover,

     
    ),

        Center( //now Center works
                    child: Padding(
                      padding: const EdgeInsets.only(top:120),
                      child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 58,
                           backgroundImage: AssetImage('assets/pexels-photo-6897434.jpeg'),
                        ),
                         ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:240),
                    child: Column(
                      children: [
                     simpleText('Rabbit'),
                      Padding(
                        padding: const EdgeInsets.only(left:30,right: 30),
                        child: simpleteext('The Rabbit is any number of mammals in the Leporidae family.'),
                      ),
                      Row(
                        children: [
                          Expanded(child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                    child: Text('Modify Profile',
                                    style:  TextStyle(
                                          color: Colors.white, fontSize: 10,  ),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      side: BorderSide(color: Colors.green, width: 1),
                                      
                                      
                                    ),
                                    
                                    onPressed: () {},
                                  ),
                          ),),
        SizedBox(width: 10,),


        FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        
        child: Icon(Icons.edit,color: Colors.white,),)

                        ],
                      ),
                       Divider(thickness: 2,),
                       simpleText('About Me'),
                          
                      
      Container(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
                 simpleicons(Icons.home,
                       ),
                        
              SizedBox(width: 20.0),
              simpleteext('home'),
              ]
              )


              ),

              Container(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
                 simpleicons(Icons.work,
                       ),
                        
              SizedBox(width: 20.0),
              simpleteext('work'),
            ]
            )
            ),

               Container(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
                 simpleicons(Icons.favorite,
                       ),
                        
              SizedBox(width: 20.0),
              simpleteext('home')
            ]
            )
            ),
               Divider(thickness: 2,),
               simpleText('Friends'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
       children: <Widget>[
        
      
      //     Expanded(
                          
      //      child: Image.asset('assets/istockphoto-1370481100-612x612.webp'),
      //  ),
      //         SizedBox(width: 20.0),
      //          Expanded(
      //      child: Image.asset('assets/bunny-5014814_640.jpg'),

      //  ),
       
      //  SizedBox(width: 20.0),
      //   Expanded(
      //      child: Image.asset('assets/istockphoto-1370481100-612x612.webp'),
      //  ),
          
      
       simplecolumn(),
       SizedBox(width: 20.0),
       simplecolumn(),
       SizedBox(width: 20.0),
       simplecolumn(),

       ]),
      //          Container(
      //     padding: EdgeInsets.all(4.0),
      //     child: Row(
      //       children: <Widget>[
            
      //    Expanded(
                          
      //      child: Image.asset('assets/images/istockphoto-1370481100-612x612.webp'),
      //  ),
      //         SizedBox(width: 20.0),
      //          Expanded(
      //      child: Image.asset('assets/images/bunny-5014814_640.jpg'),

      //  ),
       
      //  SizedBox(width: 20.0),
      //   Expanded(
      //      child: Image.asset('assets/images/istockphoto-1370481100-612x612.webp'),
      //  ),

              
      //       ]
      //       )
      //       ),
              Divider(thickness: 2,),
              simpleText('Posts'),
              Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                children:[
                CircleAvatar(
                          radius: 20,
                         backgroundImage: AssetImage('assets/pexels-photo-6897434.jpeg'),
                      
                         ),
                          SizedBox(width: 20,),
                simpleText('text'),
                SizedBox(width: 50,),
                simpleText('text2')
                  
                ]
              ),
              Image.asset("assets/istockphoto-1370481100-612x612.webp", ),
              simpleText('text3'),
              Divider(thickness: 2,),
              Container(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
                 simpleicons(Icons.favorite,
                       ),
                        
              SizedBox(width: 20.0),
              simpleteext('0 likes'),
           SizedBox(width: 20,),
                 simpleicons(Icons.comment,
                       ),
                        
              SizedBox(width: 20.0),
              simpleteext('0 comments'),
            ]
            )
            ),


            ],
          ),
        ),
      ),
              ),


              
            ],
          ),
        ),
     
    
  
                    
                    // simpleteext(''),
                     
                  
                     

                      
                      ]
                      
                         
                  
                    ),
                  )
  
    
  
   
 
    
   
   
    
     






  //  Container(
  //   height: 300,
  //  width: 800,
   
  //  color:Colors.white ,


   


  //  Image.network("https://images.pexels.com/photos/6846044/pexels-photo-6846044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  //  height: 300,
  //  width:600,
  //  fit: BoxFit.cover,)
   
  //  Center(child: Icon(Icons.favorite,size: 30,
  //  color: Colors.black,),)

  //  Center(child: textRich('hello','world','hello')  ),
   
   
   
    //  simpleText("hello world"))
   
   


  //  )
    );
  }
}
Text simpleText(String text){
  return Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold
    ),

  );}
  Text simpleteext(String text){
  return Text(
    text,
    style: const TextStyle(
      fontSize: 14,
      color: Colors.grey,
      fontStyle: FontStyle.italic
    
      
    ),
    textAlign:TextAlign.center,

  );


}
Text textRich(String a,String b,String c){
  return Text.rich(
    
    TextSpan(text:a,style: TextStyle(fontSize: 30,color: Colors.pink,),
    children: [

      TextSpan(text:b,style: TextStyle(fontSize: 10,color: const Color.fromARGB(255, 7, 255, 210))),
    TextSpan(text:c,style: TextStyle(fontSize: 10,color: const Color.fromARGB(255, 7, 197, 255))),
  
  


    ])
    );
   
    
   
}
 Icon simpleicons (Icons){
  return Icon(
    Icons as IconData?,
    
      
  );

}

Column simplecolumn(){
  return Column(
          children: [
            // Container(decoration: image,)
          Image.asset("assets/istockphoto-1370481100-612x612.webp", 
          height: 100,
          width: 100,),
          
simpleText("test"),
          ],
            );
}




//  Row(
//       children: <Widget>[
//         Expanded(
//           child: Image.asset('images/penny.png'),
//         ),
//         Expanded(
//           child: Image.asset('images/penny.png'),
//         ),
//         Expanded(
//           child: Image.asset('images/penny.png'),
//         ),
//         Expanded(
//           child: Image.asset('images/penny.png'),
//         ),
//         Expanded(
//           child: Image.asset('images/penny.png'),
//         ),
//       ],
//     ),