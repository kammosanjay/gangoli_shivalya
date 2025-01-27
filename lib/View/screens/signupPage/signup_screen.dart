import 'package:flutter/material.dart';
import 'package:gangoli_shivalya/constant/customWidget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 223, 236, 247),
        appBar: AppBar(
          elevation: 0,
          title: Text('Signup'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomWidgets.customTextFeild(
                      context: context,
                      name: 'name',
                      hint: 'First name',
                      // focusNode: FocusNode(),
                      icon: Icon(Icons.person),
                      iconColor: Colors.blue,
                      // width: w*0.43,
                      isPassword: false,
                      action: TextInputAction.next,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: CustomWidgets.customTextFeild(
                      context: context,
                      name: 'last name',
                      hint: 'Last name',
                      // focusNode: FocusNode(),
                      icon: Icon(Icons.person),
                      // width: w*0.43,
                      iconColor: Colors.blue,
                      isPassword: false,
                      action: TextInputAction.next,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'dob',
                hint: 'Enter your dob',
                // focusNode: FocusNode(),
                icon: Icon(Icons.location_city),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'email',
                hint: 'Enter your email',
                // focusNode: FocusNode(),
                icon: Icon(Icons.email),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'password',
                hint: 'Enter your password',
                // focusNode: FocusNode(),
                icon: Icon(Icons.lock),
                iconColor: Colors.blue,
                isPassword: true,
                action: TextInputAction.next,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'confirm password',
                hint: 'Enter your confirm password',
                // focusNode: FocusNode(),
                icon: Icon(Icons.lock),
                iconColor: Colors.blue,
                isPassword: true,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'phone',
                hint: 'Enter your phone number',
                // focusNode: FocusNode(),
                icon: Icon(Icons.phone),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'address',
                hint: 'Enter your address',
                // focusNode: FocusNode(),
                icon: Icon(Icons.location_on),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: CustomWidgets.customTextFeild(
                      context: context,
                      name: 'city',
                      hint: 'city',
                      // focusNode: FocusNode(),
                      icon: Icon(Icons.location_city),
                      iconColor: Colors.blue,
                      isPassword: false,
                      action: TextInputAction.done,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: CustomWidgets.customTextFeild(
                      context: context,
                      name: 'state',
                      hint: 'state',
                      // focusNode: FocusNode(),
                      icon: Icon(Icons.location_city),
                      iconColor: Colors.blue,
                      isPassword: false,
                      action: TextInputAction.done,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'country',
                hint: 'Enter your country',
                // focusNode: FocusNode(),
                icon: Icon(Icons.location_city),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              CustomWidgets.customTextFeild(
                context: context,
                name: 'pincode',
                hint: 'Enter your pincode',
                // focusNode: FocusNode(),
                icon: Icon(Icons.location_city),
                iconColor: Colors.blue,
                isPassword: false,
                action: TextInputAction.done,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Get.toNamed(MyPageNames.home);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(w, 50), // Width: 200, Height: 50
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set border radius
                    ), // Button color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
