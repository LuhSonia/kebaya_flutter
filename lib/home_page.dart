import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
 class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
        BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Transaksi"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140, width: double.infinity, color: Colors.grey),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                            Container(
                              alignment: Alignment.topLeft, 
                              height: 45, 
                              width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                "https://studiolorier.com/about-us/profile-round-sander-lorier/")),
                              borderRadius: BorderRadiusDirectional.circular(25),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid, 
                                width: 2))), 
                    SizedBox(
                      width: 10,
                    ), 
                    Text(
                            "Hallo Sonia,Selamat Datang!", 
                            style: 
                                GoogleFonts.montserrat(color: Colors.white),
                              )
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight, 
                            child: Icon(Icons.shopping_cart,
                            color: Colors.white,
                            size: 30,
                            )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: 
                       Container(
                        height: 50, 
                        width: double.infinity, 
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7), 
                          borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            cursorHeight: 20, 
                            autofocus: false, 
                            decoration: InputDecoration(
                              hintText: "Cari Kebaya Favorit", 
                              prefixIcon: Icon(Icons.search), 
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                                ),
                              ),
                        ),
                      ],
                    )
                  ],
              ),
               Padding(
                          padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            category(imagePath: "assets/kebaya_bordir.png",title: "Bordiran"),
                            category(imagePath: "assets/kebaya_brokat.png",title: "Brokat"),
                            category(imagePath: "assets/kebaya_satin.png",title: "Satin"),
                            category(imagePath: "assets/kebaya_Sifon.png",title: "Sifon"),
                          ],
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Produk Best Seller", 
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          ),
                        ),
                     butik(imagePath: "assets/Brokat.jpg", nameitem: "Kebaya Brokat", harga: "Rp.120.000", tempat: "Jinengdalem",),
                     butik(imagePath: "assets/Metalica.jpg", nameitem: "Kebaya Metalica", harga: "Rp.220.000", tempat: "Jinengdalem",),  
                     butik(imagePath: "assets/Satin.jpg", nameitem: "Kebaya Satin", harga: "Rp.50.000", tempat: "Jinengdalem",),
                     butik(imagePath: "assets/Sifon.jpg", nameitem: "Kebaya Sifon", harga: "Rp.70.000", tempat: "Jinengdalem",),                ],
              )),
      ),
         );
       }
      }

class butik extends StatelessWidget {
  final String imagePath;
  final String nameitem;
  final String harga;
  final String tempat;
  const butik(
    {Key? key,
    required this.imagePath,
    required this.nameitem,
    required this.harga,
    required this.tempat,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: double.infinity, height: 200,child: Stack(
     children: [
       Card(
         clipBehavior: Clip.antiAliasWithSaveLayer,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         elevation: 10,
         child: Column(
           children: [
             SizedBox(
               width: double.infinity,
               height: 150
               
               ,
               child: Image.asset(imagePath, 
               fit: BoxFit.cover
               ),
             )
           ],
         ),
       ),
       Positioned(
         bottom: 0, 
         left: 10, 
         child: SizedBox(
           height: 70, 
           child: Padding(
             padding: const EdgeInsets.only(left: 15, right: 10),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(nameitem,
                   style: GoogleFonts.montserrat(
                   fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(
                     height: 10,
                    ),
                    Row(
                     children: [
                       Icon(Icons.paid, color: Colors.amber), 
                     SizedBox(
                       width: 5,
                     ),
                     Text(harga, style: GoogleFonts.montserrat(fontSize: 12)),
                     SizedBox(
                       width: 20,
                     ),
                     Icon(Icons.pin_drop, color: Colors.grey),
                     SizedBox(
                       width: 5,
                     ),
                     Text(tempat,
                        style: GoogleFonts.montserrat(fontSize: 12)),
                    ],
           
                    )
                    ],
             ),
           ),
           ))
     ],
    ));
  }
}

class category extends StatelessWidget {
  final String imagePath;
  final String title;
  const category({Key? key,required this.imagePath, required this.title})
 : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 50,
          height: 60,
          child: Column(
            children: [
              Image.asset(
                imagePath, 
                width: 30,
                ), 
              SizedBox(
                height: 10,
                ),
                
              Text(
                title, 
                style: GoogleFonts.montserrat(fontSize: 10),
              
              )
            ],
          ),
        ),
      ),
    );
  }
}