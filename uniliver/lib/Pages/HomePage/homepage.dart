import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(17, 86, 142, 0.85),
                Color.fromRGBO(17, 86, 143, 0.850469),
                Color(0xFF5B98CA),
              ],
              stops: [0.0, 0.4927, 1.0],
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              buildMenuItems(context),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/homeBG.png",
          )
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container();

  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: '   Search',
                suffixIcon: Icon(Icons.search),
                labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFFFFFFFF).withOpacity(0.5)),
              ),
            ),
            width: 211,
            height: 30,
            decoration: BoxDecoration(
                color: Color(0xFF0B2840).withOpacity(0.5),
                border: Border.all(color: Colors.white, width: 0.7)),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/home_icon.png"),
              title: Text(
                'Home',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/profile_icon.png"),
              title: Text(
                'My Profile',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/cart_icon.png"),
              title: Text(
                'My Cart',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/kiosk_icon.png"),
              title: Text(
                'Kiosk/Supermarket',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/job_icon.png"),
              title: Text(
                'Job Opportunities',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/laundry_icon.png"),
              title: Text(
                'Laundry Service',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/gaming_icon.png"),
              title: Text(
                'Gaming',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/About_icon.png"),
              title: Text(
                'About Us',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Container(
            width: 220,
            child: ListTile(
              leading: Image.asset("assets/icons/LogOut_icon.png"),
              title: Text(
                'Logout',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
        ],
      );
}
