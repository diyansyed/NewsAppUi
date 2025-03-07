import 'package:flutter/material.dart';
import 'package:nae/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard2 extends StatelessWidget {
  Onboard2({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Positioned(
            top: 70,
            right: 25,
            child: InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>signUp()));
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),


          Positioned.fill(
            top: -360,
            child: PageView(
              controller: _controller,
              children: const [
                PicOne(),
                PicTwo(),
                PicThree(),
                PicFour(),
              ],
            ),
          ),


          Positioned(
            top: 500,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Continue with Email Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>signUp()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    icon: const Icon(Icons.email, color: Colors.white),
                    label: const Text("Continue with Email", style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Social Login Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton(),
                    const SizedBox(width: 20),
                    socialButton(),
                    const SizedBox(width: 20),
                    socialButton(),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

// Image Pages
class PicOne extends StatelessWidget {
  const PicOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Image.asset(
          'images/img.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 30,),
        Text('Trending News', style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),)
        ]
      ),
    );
  }
}

class PicTwo extends StatelessWidget {
  const PicTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Image.asset(
            'images/img.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
            SizedBox(height: 30,),
            Text('React, Save, and\nShare News', style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),)
          ]
      ),
    );
  }
}

class PicThree extends StatelessWidget {
  const PicThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Image.asset(
            'images/img.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
            SizedBox(height: 30,),
            Text('Videos & Live News From\nYouTube', style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),)
          ]
      ),
    );
  }
}

class PicFour extends StatelessWidget {
  const PicFour({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Image.asset(
            'images/img.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
            SizedBox(height: 30,),
            Text('Browse News From Variety\nOf Categories', style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),)
          ]
      ),
    );
  }


}

Widget socialButton() {
  return InkWell(
    onTap: () {
      // Handle social login action
    },
    child: Container(

      height: 60,
      width: 96,

      padding: EdgeInsets.symmetric(vertical: 17,horizontal: 35), // Add padding for better look
      child: Text('fb', style: TextStyle(fontSize: 16)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          color: Color(0xFFC4C4C4), // Border color
          width: 1, // Border thickness
        ),
      ),
    )
  );
}

