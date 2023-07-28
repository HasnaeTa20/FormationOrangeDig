import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    //  double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 177, 245, 198),
          leading: Icon(
            Icons.facebook,
            color: Colors.black,
            size: 20,
          ),
          title: Text(
            'My Rabbit',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [Icon(Icons.logout)],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(children: [
            // simpleText('Rabbit'),

            Image.asset(
              'assets/rabbit_banner-1024x211.webp',
              height: 180,
              fit: BoxFit.cover,
            ),

            Center(
              //now Center works
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 58,
                    backgroundImage:
                        AssetImage('assets/pexels-photo-6897434.jpeg'),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                children: [
                  simpleText('Rabbit'),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: simpleteext(
                        'The Rabbit is any number of mammals in the Leporidae family.'),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            child: Text(
                              'Modify Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              side: BorderSide(color: Colors.green, width: 1),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),
                        child: SizedBox(
                          width: 56, // Width of ElevatedButton by default
                          height: 56,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  simpleText('About Me'),

                  Container(
                      padding: EdgeInsets.all(4.0),
                      child: Row(children: <Widget>[
                        simpleicons(
                          Icons.home,
                        ),
                        SizedBox(width: 20.0),
                        simpleteext('home'),
                      ])),

                  Container(
                      padding: EdgeInsets.all(4.0),
                      child: Row(children: <Widget>[
                        simpleicons(
                          Icons.work,
                        ),
                        SizedBox(width: 20.0),
                        simpleteext('work'),
                      ])),

                  Container(
                      padding: EdgeInsets.all(4.0),
                      child: Row(children: <Widget>[
                        simpleicons(
                          Icons.favorite,
                        ),
                        SizedBox(width: 20.0),
                        simpleteext('favorite')
                      ])),
                  Divider(
                    thickness: 2,
                  ),
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
                        simpleecolumn(),
                        SizedBox(width: 20.0),
                        simpleecolumnn(),
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
                  Divider(
                    thickness: 2,
                  ),
                  simpleText('Posts'),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            Row(children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    'assets/pexels-photo-6897434.jpeg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              simpleteex('text'),
                              Spacer(),
                              simplee('text2')
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/istockphoto-1370481100-612x612.webp",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            simplee('text3'),
                            Divider(
                              thickness: 2,
                            ),
                            Container(
                                padding: EdgeInsets.all(4.0),
                                child: Row(children: <Widget>[
                                  simpleicons(
                                    Icons.favorite,
                                  ),
                                  SizedBox(width: 20.0),
                                  simpleteex('0 likes'),
                                  Spacer(),
                                  simpleicons(
                                    Icons.comment,
                                  ),
                                  SizedBox(width: 20.0),
                                  simpleteex('0 comments'),
                                ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          children: <Widget>[
                            Row(children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    'assets/pexels-photo-6897434.jpeg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              simpleteex('text'),
                              Spacer(),
                              simplee('text2')
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/bunny-5014814_640.jpg",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            simplee('text3'),
                            Divider(
                              thickness: 2,
                            ),
                            Container(
                                padding: EdgeInsets.all(4.0),
                                child: Row(children: <Widget>[
                                  simpleicons(
                                    Icons.favorite,
                                  ),
                                  SizedBox(width: 20.0),
                                  simpleteex('0 likes'),
                                  Spacer(),
                                  simpleicons(
                                    Icons.comment,
                                  ),
                                  SizedBox(width: 20.0),
                                  simpleteex('0 comments'),
                                ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // simpleteext(''),
          ]),
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

Text simpleText(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
  );
}

Text simpleteext(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 14, color: Colors.grey, fontStyle: FontStyle.italic),
    textAlign: TextAlign.center,
  );
}

Text simpleteex(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
    textAlign: TextAlign.center,
  );
}

Text simplee(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 14,
      color: Colors.blue,
    ),
    textAlign: TextAlign.center,
  );
}

Text textRich(String a, String b, String c) {
  return Text.rich(TextSpan(
      text: a,
      style: TextStyle(
        fontSize: 30,
        color: Colors.pink,
      ),
      children: [
        TextSpan(
            text: b,
            style: TextStyle(
                fontSize: 10, color: const Color.fromARGB(255, 7, 255, 210))),
        TextSpan(
            text: c,
            style: TextStyle(
                fontSize: 10, color: const Color.fromARGB(255, 7, 197, 255))),
      ]));
}

Icon simpleicons(Icons) {
  return Icon(
    Icons as IconData?,
  );
}

Column simplecolumn() {
  return Column(
    children: [
      // Wrap the Image with ClipRRect

      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/istockphoto-1370481100-612x612.webp"),
            fit: BoxFit.cover,
          ),
        ),
        height: 100,
        width: 100,
      ),

      simpleteex("test"),
    ],
  );
}

Column simpleecolumn() {
  return Column(
    children: [
      // Wrap the Image with ClipRRect

      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/pexels-photo-4588423.webp"),
            fit: BoxFit.cover,
          ),
        ),
        height: 100,
        width: 100,
      ),

      simpleteex("test"),
    ],
  );
}

Column simpleecolumnn() {
  return Column(
    children: [
      // Wrap the Image with ClipRRect

      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/pexels-photo-6897434.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        height: 100,
        width: 100,
      ),

      simpleteex("test"),
    ],
  );
}
