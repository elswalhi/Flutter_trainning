import 'package:flutter/material.dart';

class login extends StatelessWidget{
  var Email=TextEditingController();
  var Password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Deathly Hallows"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20,end: 20,top: 70),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                child: const Image(image: NetworkImage("https://m.media-amazon.com/images/I/91+1gpRZiPL._AC_SY450_.jpg"),
                height: 200,width: 200,),
              ),
              const SizedBox(height: 10,),
              const Text("Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(height: 30,),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: Email,
                decoration: const InputDecoration(
                  labelText: 'Email adress',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                controller: Password,
                decoration: const InputDecoration(
                  labelText: 'password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                color: Colors.black,
                width: double.infinity,
                child: MaterialButton(onPressed: (){
                  print("the email is ${Email.text} and password is ${Password.text}");
                },child:
                  const Text("LOGIN",style: TextStyle(color: Colors.white),),),
              ),const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don\'t Have an account?"),
                  TextButton(onPressed: (){}, child: const Text("Register Now",style: const TextStyle(color: Colors.black),),)
                ],
              ),
            ],
          ),
        ),
      ),
      );
  }

}