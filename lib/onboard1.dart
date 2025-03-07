import 'package:flutter/material.dart';
import 'onboard2.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'images/img.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Spacing
          const SizedBox(height: 30),

          // Text Section with Padding (No Extra Column Needed)
           Padding(
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  'Discover daily news',
                  style: TextStyle(
                    color: Color(0xFF209CEE),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8), // Spacing
                Text(
                  'We bring you\ncloser to the\nnews.',
                  style: TextStyle(
                    color: Color(0xFF1E1A15),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    height: 1.2,
                  ),
                ),
            SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboard2()));
                  },
                  child: Container(
                    height: 48,
                    width: 144,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color(0xFF209CEE), // Button color
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF209CEE).withOpacity(0.5), // Blue shadow
                          blurRadius: 15,
                          spreadRadius: 2,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
