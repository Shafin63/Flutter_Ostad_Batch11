import 'package:flutter/material.dart';
import 'package:flutter1/module%208/class_2_List_View.dart';

class Module8Class2 extends StatelessWidget {
  Module8Class2({super.key});

  final _formKey = GlobalKey <FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 8 Class 2"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                  height: 100,
                  width: 200,
                  "https://bcassetcdn.com/public/blog/wp-content/uploads/2023/01/23175156/Facebook-Logo-2005-1024x636.jpg"),
            ),
            Image.asset(
                "assets/YT.png",
            height: 100,
            width: 200),
            Text("Log in with Phone and Password",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Form(
                key: _formKey,
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // Text("Phone Number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Your Phone Number";
                      }
                      else if(value.length != 11) {
                        return "Please Enter a Valid Phone Number";
                      }
                      else {
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: 20,),
                  // Text("Password", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        }
                        else if(value.length <8) {
                          return "Password must be at least 8 characters";
                        }
                        else {
                          return null;
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(content: Text("Login Success"))
                        // );
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ListV(name: phoneController.text,)));
                      }
                    },
                      child: Text("Login"),),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
