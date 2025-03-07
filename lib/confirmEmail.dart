import 'package:flutter/material.dart';
import 'package:nae/addprofile.dart';

class confirmEmail extends StatelessWidget {
  const confirmEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(

         padding: EdgeInsets.symmetric(vertical: 70,horizontal: 30),
        
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Confirm your email\naddress",style: TextStyle(fontWeight: FontWeight.bold,fontSize:32 )),
            SizedBox(height: 20,),

            Text("CONFIRMATION CODE",style: TextStyle(fontSize: 10),),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                       contentPadding: EdgeInsets.symmetric(vertical: 10),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)

                    )
                   ),
            ),
            SizedBox(height: 20,),

            Text("Please check your email svarup03@gmail.com to\nconfirm your registration",style: TextStyle(fontSize: 10),),
            SizedBox(height: 50,),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePictureScreen()));
              },
              child: Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(60),

                ),
                child: Center(
                  child:
                  Text("CONTINUE",style: TextStyle(fontSize: 18 ,color: Colors.white),),

                  ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 60,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  color: Color(0xFFC4C4C4),
                  style: BorderStyle.solid,
                  width: 1,

                )
              ),

              child: Center(
                child:
                Text("Resend",style: TextStyle(fontSize: 18),),

                ),
            )


          ],
        ),
      ),
    );
  }
}
