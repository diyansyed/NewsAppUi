import 'package:flutter/material.dart';
import 'account.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({super.key});

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
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
            Text("Forgot your\npassword",style: TextStyle( fontSize: 32, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Give your email address you used during registration",style: TextStyle( fontSize: 13)),
            SizedBox(height: 20,),

            Text("YOUR EMAIL" ,style: TextStyle( fontSize:10, fontWeight: FontWeight.bold)),
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

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                  Icon(Icons.mail_rounded,color: Colors.white,),
                  SizedBox(width: 7,),
                  Text("Recover",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)

                ])),





          ],
        ),
      ),
    );
  }
}
