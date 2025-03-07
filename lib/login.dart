import 'package:flutter/material.dart';
import 'package:nae/account.dart';
import 'package:nae/forgotpassword.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70,horizontal: 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.cancel)
              ],
            ),
            SizedBox(height: 20,),
            Text("Login",style: TextStyle( fontSize: 32, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Using your email,username and password",style: TextStyle( fontSize: 13)),
            SizedBox(height: 20,),

            Text("YOUR EMAIL/USERNAME" ,style: TextStyle( fontSize:10, fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)
                )
              ),
            ),
            SizedBox(height: 20,),

            Text("YOUR PASSWORD" ,style: TextStyle( fontSize:10, fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
            SizedBox(height: 50,),

            ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  minimumSize: Size(350, 60)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
                },
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)),

            Spacer(),
            Center(
              child: Column(
                children:[
                  Text('Forgot your password?',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('Forgot your username?',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),

                  RichText(
                  text: TextSpan(
                    text: "Don't have an account? ", style: const TextStyle(color: Colors.black, fontSize: 13,fontWeight: FontWeight.bold

                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline, // Optional underline
                        ),

                      ),
                    ],
                  ),
                ),]
              ),
            )



          ],
        ),
      ),
    );
  }
}
