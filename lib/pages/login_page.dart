import 'package:flutter/material.dart';
import 'package:farm2table/utils/routes.dart';


final _formKey=GlobalKey<FormState>();


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> { 
  String Name="";
  bool changeButton=false;

  moveToHome(BuildContext context)async{
  if(_formKey.currentState!.validate()){
            setState(() {
                changeButton=true;
                });
              
              await Future.delayed(Duration(seconds: 1));
              await Navigator.pushNamed(context, MyRoutes.homeRoute);
        
            setState(() {
                changeButton=false;
                });
    
  }
  } 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: SingleChildScrollView(//scroll access
           child: Form(
              key:_formKey,
                child: Column(
                  children: [
                    Image.asset("assets/images/farmer.png",
                      fit: BoxFit.fitWidth,
                        height: 500,
                ),
                SizedBox( 
                 height: 40.0,  
                ),
              
              Text(
                "Welcome $Name",
                 style:TextStyle(
                    fontSize: 28,
                     fontWeight: FontWeight.bold,
                   )),
                SizedBox(
                  height: 20.0,
                ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
             child: Column(
              children: [
                     TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                      
                    ),
                 //   validator:(value) =>value!.length<3?'Name should be at least 3 characters':null,
                    validator: (value){
                      if(value!.isEmpty){
                       return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  
                    TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),      
                    // validator:(value) =>value!.length<3?'Password should be at least 3 characters':null,
    
                   //  validator:(value) =>value!.isEmpty?'Password cannot be empty':null,
                   validator: (value) 
                         {
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      }else if(value.length<6){
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                        SizedBox(
                  height: 20.0,
                ),
          Material(
              color: const Color.fromARGB(255, 1, 33, 2),
              borderRadius:
              BorderRadius.circular(changeButton?50:8),
         child: InkWell(
            //  splashColor: Colors.lightGreen,
              onTap: () =>moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width:changeButton?50:150,
                height:50,
                alignment: Alignment.center,
                child:changeButton 
                ?Icon(
                  Icons.done,
                  color: Colors.white,
                )
                :Text(
                  "Login",
                  style: TextStyle(
                 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ),
              ),
          
            ),
            ),
          ),
        
                // ElevatedButton(
                //   child:Text("Login"),
                //   style:TextButton.styleFrom(
                //     minimumSize: Size(150, 40)
                //   ),
                //   onPressed: (){
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);             //ye dusre page pe le jataa hai
                    
                //   },
                // )
              ],
             ),
           )
            ],
          ),
        ),
      ),
    );
  }
}