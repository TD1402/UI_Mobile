import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_work/screens/mode.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
 final List<Category> catego = [
    Category(
      imagUrl: "assets/image/image1.png",
      name: "Yoga exercises",
    ),
    Category(
      imagUrl: "assets/image/image2.jpg",
      name: "Example exercises",
    ),
    Category(
      imagUrl: "assets/image/image003.jpg",
      name: "Example exercises",
    ),
  ];
  final List<Category> catego1 = [
    Category(
      imagUrl: "assets/image/image005.jpg",
      name: "Yoga exercises",
    ),
    Category(
      imagUrl: "assets/image/image006.jpg",
      name: "Example exercises",
    ),
    Category(
      imagUrl: "assets/image/image007.jpg",
      name: "Example exercises",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image:DecorationImage(
            image:AssetImage("assets/image/imagebg.png"),
            fit:BoxFit.cover,
          ) 
        ),
       
        child: Column(
          children: [

            // HEADER PROGRAM 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 20 , bottom: 20),
                  child: Text(
                    "PROGRAMS",
                    style:GoogleFonts.bebasNeue(
                      fontSize: 32,
                      color:Colors.white,
                      letterSpacing: 1.8,
                      
                    )  
                  ),
                ),
                Padding(
                   padding: const EdgeInsets.only(top: 40.0, right: 20 , bottom: 20),
                   child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            width: 3,
                            color: const Color(0xFF40D876),
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/image/imagebg.png"),
                            fit: BoxFit.cover,
                          ),
                      ),
                  ),
                ),             
              ],             
            ),
            

            // EX for you

            Stack(
                children: [
                  
                  Container(
                      height: 172,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFF40D876),
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/image/image008.jpg"),
                            fit: BoxFit.cover,
                          ),  
                        ),
                    ),
                    Container(
                      height: 172,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(colors:[
                            Theme.of(context).primaryColor.withOpacity(0.01),
                            Theme.of(context).primaryColor.withOpacity(0.6),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                           )

                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child:Text(
                              "FOR YOU",
                              style: GoogleFonts.bebasNeue(
                              fontSize: 20,
                              color:Colors.white,
                              letterSpacing: 1.8,
                              
                              )  
                            ),
                          ),
                        ),
                    ),
                ],                 
              ),

            // List EX
            Row(
              children: [
                Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20),
                      child: Text(
                        "FAT Burning",
                        style:GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color:Colors.white,
                          letterSpacing: 1.8,
                          
                        )  
                      ),
                    ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                      itemCount: catego.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Container(
                                height: 172,
                                width: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(catego[index].imagUrl),
                                    
                                    fit: BoxFit.cover,
                                    
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF000000),
                                    width: 0.0,
                                    style: BorderStyle.solid), //Border.all
                                /*** The BorderRadius widget  is here ***/
                                  borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                  ), //BorderRadius.all 
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                catego[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            Row(
              children: [
                Padding(
                      padding: const EdgeInsets.only(top: 0.0, left: 20),
                      child: Text(
                        "ABS",
                        style:GoogleFonts.bebasNeue(
                          fontSize: 20,
                          color:Colors.white,
                          letterSpacing: 1.8,
                          
                        )  
                      ),
                    ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                      itemCount: catego.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            children: [
                              Container(
                                height: 172,
                                width: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(catego1[index].imagUrl),
                                    
                                    fit: BoxFit.cover,
                                    
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF000000),
                                    width: 0.0,
                                    style: BorderStyle.solid), //Border.all
                                /*** The BorderRadius widget  is here ***/
                                  borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                  ), //BorderRadius.all 
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                catego[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
          ],
        ),
      )
    );
  }
}