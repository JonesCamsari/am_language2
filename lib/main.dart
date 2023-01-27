import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Am Language'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonTextSalesReservations = "Sales & reservations";
  String buttonTextAccommodation = "Accommodation";
  String buttonTextLeisureDepartment = "Leisure Department";
  String buttonTextTaxiTransfer = "Taxi Transfer";
  String buttonTextInfoAtAmlanguage = "info@amlanguage.com";
  String buttonTextEmergancy = "All other Emergancy";
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenisligi,
              child: Image.asset("lib/resimler/image001.png"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("gefällt mir");
                      },
                      child: Yazi("Chat", ekranGenisligi / 25),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("feedback was given");
                      },
                      child: Yazi("Questionaries", ekranGenisligi / 25),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "All in one glance",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 15,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(150.0,30.0,8.0,0.0),
                    child: Row(
                      children: [
                        Text(
                            "About Us", style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: ekranGenisligi / 20),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Yazi(
                "One of the first English Language schools in Malta, "
                    "AM Language has a history for offering quality English "
                    "Language courses and customer satisfaction. Established in 1987, "
                    "AM Language is a founder member of FELTOM (Federation of English "
                    "Language Teaching Organizations of Malta), the association for "
                    "quality English Language schools in Malta. AM Language is licensed "
                    "by the Ministry of Education in Malta and all our departments are "
                    "ISO 9001 accredited.",
                ekranGenisligi / 25,
              ),
            ),
            ElevatedButton(
              child: Text("Click here to get more information",style: TextStyle(color: Colors.white),),
              onPressed: () async {
                final url= "https://amlanguage.com/about-us/";
                if(await canLaunchUrl(Uri.parse(url))){
                  await launchUrl(Uri.parse(url));
                }else {
                  throw'Could not launch $url';
                }
                print("information has been clicked");
              },

            ),


            Padding(
              padding:  EdgeInsets.fromLTRB(10.0,30.0,10.0,0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Find Us",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 20,
                    ),
                  ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("AM Language",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),

                    Spacer(),
                    Text("Office Hours:",style: TextStyle(
                      fontWeight: FontWeight.bold,),),
                  ],
                  ),

                  Row(
                    children: [
                      Text("299 Triq Manwel Dimech"),

                      Spacer(),
                      Text("Monday to Friday"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Sliema, SLM 1054 - Malta"),

                      Spacer(),
                      Text("08:30 to 17:30"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: ekranGenisligi,
                    child: Image.asset("lib/resimler/AM_Language_localisation.png"),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text("Click here to find us in realtime",style: TextStyle(color: Colors.white),),
                      onPressed: () async {
                        final url= "https://www.google.com/maps/place/AM+Language/"
                            "@35.9095619,14.4977557,17z/data=!3m1!4b1!4m6!3m5!1s0x130"
                            "e4539a1595a67:0x4d45d767f96a2a0d!8m2!3d35."
                            "9095576!4d14.4999444!16s%2Fg%2F1tf62d7k";
                        if(await canLaunchUrl(Uri.parse(url))){
                          await launchUrl(Uri.parse(url));
                        }else {
                          throw'Could not launch $url';
                        }
                        print("Map has been clicked");
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(ekranYuksekligi / 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: ekranGenisligi / 20,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(isChanged){
                                        buttonTextSalesReservations = "Sales & reservations";
                                        isChanged = false;
                                      }else{
                                        buttonTextSalesReservations= "+356 9940 8943";
                                        isChanged = true;
                                      }
                                    });
                                    print("Sales has been clicked");
                                  },
                                  child: Text(buttonTextSalesReservations),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(isChanged){
                                        buttonTextAccommodation = "Accommodation";
                                        isChanged = false;
                                      }else{
                                        buttonTextAccommodation = "+356 9943 5415";
                                        isChanged = true;
                                      }
                                    });
                                    print("Accommodation has been clicked");
                                  },
                                  child: Text(buttonTextAccommodation),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(isChanged){
                                        buttonTextLeisureDepartment = "Leisure Department";
                                        isChanged = false;
                                      }else{
                                        buttonTextLeisureDepartment= "+356 9940 8943";
                                        isChanged = true;
                                      }
                                    });
                                    print("Leisure Department has been clicked");
                                  },
                                  child: Text(buttonTextLeisureDepartment),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(isChanged){
                                        buttonTextTaxiTransfer = "Taxi Transfer";
                                        isChanged = false;
                                      }else{
                                        buttonTextTaxiTransfer= "+356 7950 7150";
                                        isChanged = true;
                                      }
                                    });
                                    print("Taxi Transfer has been clicked");
                                  },
                                  child: Text(buttonTextTaxiTransfer),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(isChanged){
                                        buttonTextInfoAtAmlanguage = "info@amlanguage.com";
                                        isChanged = false;
                                      }else{
                                        buttonTextInfoAtAmlanguage = "+356 2132 4242";
                                        isChanged = true;
                                      }
                                    });
                                    print("info@amlanguage.com has been clicked");
                                  },
                                  child: Text(buttonTextInfoAtAmlanguage),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: ekranYuksekligi/6,
                                height: ekranGenisligi / 8,
                                child: OutlinedButton(
                                  child: Text(buttonTextEmergancy),
                                  onPressed: () {
                                   setState(() {
                                     if(isChanged){
                                       buttonTextEmergancy = "All other Emergancy";
                                       isChanged = false;
                                     }else{
                                       buttonTextEmergancy = " +356 9947 6108";
                                       isChanged = true;
                                     }

                                   });
                                   print(" Other emengencies has been clicked");
                                  },
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.lightBlueAccent,
                                    side: BorderSide(width: 1.0, color: Colors.lightBlueAccent),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;

  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziBoyut),
    );
  }
}