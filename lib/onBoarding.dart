import 'package:flutter/material.dart';
import 'package:nae/login.dart';

class onBoarding extends StatelessWidget {
  const onBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),

        child: Center(
          child: Stack(

            children: [
              Positioned(
                top: 0,
                left: -20,
                child: Image.asset(
                    'images/img.png',
                width: 390,
                  height: 390,
                ),
              ),
              Positioned(
                  top: 420,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   const Text('Welcome , Darrel' , style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      const Text('Enjoy our best\nnews engine\nexperience ever.', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 40, height: 1.1),),
                      const SizedBox(height:30 ,),
                    ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Button color
                          foregroundColor: Colors.white, // Text color
                          minimumSize: const Size(150, 50), // Button size
                          // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded edges
                          ),
                          elevation: 10, // Shadow effect
                          shadowColor: Colors.blueAccent, // Shadow color
                        ),
                        onPressed: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                        },

                        child: Text("Let's Start"))
                    ],)
              )


            ],

          ),
        ),
      ),
    );
  }
}
