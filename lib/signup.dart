import 'package:flutter/material.dart';
import 'package:nae/confirmEmail.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.close , color: Colors.black,)),
                ],
              ),
              SizedBox(height: 30,),
        
              Text("Sign Up",style: TextStyle( fontWeight: FontWeight.bold , fontSize: 32),),
              Text("Create your Newzler account",style: TextStyle(  fontSize: 13)),
              SizedBox(height: 20,),
        
              Row(
                children: [
                  Expanded(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('YOUR FIRST NAME', style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.bold, color: Colors.black54,),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            )
                          ),
                    
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
        
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('YOUR LAST NAME', style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.bold, color: Colors.black54,),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                            )
                          ),
                    
                        )
                      ],
                    ),
                  )
        
                ],
              ),
                SizedBox(height: 30,),
               Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('CHOOSE YOUR USERNAME', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold, color: Colors.black54,),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          )
                      ),
        
                    )
                  ],
                ),

              SizedBox(height: 30,),
               Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('YOUR EMAIL', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold, color: Colors.black54,),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          )
                      ),
        
                    )
                  ],
                ),


              SizedBox(height: 30,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('YOUR PASSWORD', style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.bold, color: Colors.black54,),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          )
                      ),
        
                    )
                  ],
                ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blue,
                  ),
                  const Expanded(
                    child: Text(
                      'I agree to the Newzler Terms of Service and Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>confirmEmail()));
                },
                child:Container(
                  width: 330,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(60)
                        
                  ),
                  child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                ) ,)

        
            ],
          ),
        ),
      ),
    );
  }
}