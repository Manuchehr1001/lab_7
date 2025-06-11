import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});


  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

bool _hidePass=true;

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Form(child: ListView(padding: EdgeInsets.all(16.0),
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: "Full Name",
            hintText: "What is your name?",
            prefixIcon: Icon(Icons.person),
            suffixIcon: Icon(Icons.delete_outline, color: Colors.red,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            focusedBorder: OutlineInputBorder(
               
              borderRadius: BorderRadius.all(Radius.circular(16)), 
              borderSide: BorderSide(color: Colors.pink, width: 2.0),
              ),
            ),
            
          ),
          SizedBox(height: 10),

          TextField(
          decoration: InputDecoration(
            labelText: "Phone Number",
            hintText: "Where can we reach you?",
            helperText: "Phone format: (xxx)-xxx-xxxx",
            prefixIcon: Icon(Icons.phone),
            suffixIcon: Icon(Icons.delete_outline, color: Colors.red,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            focusedBorder: OutlineInputBorder(
               
              borderRadius: BorderRadius.all(Radius.circular(16)), 
              borderSide: BorderSide(color: Colors.pink, width: 2.0),
              ),
            ),
            
          ),

          SizedBox(height: 10,),
          TextField(
          decoration: InputDecoration(
            labelText: "Email Adress",
            hintText: "Where can we find you?",
            helperText: "Email format: @gmail.com",
            prefixIcon: Icon(Icons.email),
            suffixIcon: Icon(Icons.delete_outline, color: Colors.red,),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            focusedBorder: OutlineInputBorder(
               
              borderRadius: BorderRadius.all(Radius.circular(16)), 
              borderSide: BorderSide(color: Colors.pink, width: 2.0),
              ),
            ),
            keyboardType: TextInputType.phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            
          ),
          SizedBox(height: 10,),
          TextField(
          obscureText: _hidePass,
          maxLength: 8,
          decoration: InputDecoration(
            labelText: "Password *",
            hintText: "Enter the password",
            suffixIcon: IconButton(
              icon: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              onPressed: (){
                setState(() {
                  _hidePass = !_hidePass;
                });
              },
            ),
            icon: Icon(Icons.security),
          ),
          ),

          SizedBox(height: 10,),
          TextField(
          obscureText: _hidePass,
          maxLength: 8,
          decoration: InputDecoration(
            labelText: "Confirm Password",
            hintText: "Enter the same password",
            suffixIcon: IconButton(
              icon: Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
              onPressed: (){
                setState(() {
                  _hidePass = !_hidePass;
                });
              },
            ),
            icon: Icon(Icons.confirmation_num),
          ),
          ),

          SizedBox(height: 10,),
          TextButton(onPressed: (){}, 
          child: Text("Submit Form"))
          

          
      ]
      )
    
        ),


        
    );
  }
}