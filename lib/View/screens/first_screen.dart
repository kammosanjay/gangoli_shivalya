import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Future<void> pickFolder() async {
    final folderPath = await FilePicker.platform.getDirectoryPath();
    if (folderPath != null) {
      print("Selected folder: $folderPath");
    } else {
      print("No folder selected.");
    }
  }

  FocusNode _focusName = FocusNode();
  FocusNode _focusPass = FocusNode();
  RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 100),
        child: GestureDetector(
          onTap: () {
            // _focusName.unfocus();
            // _focusPass.unfocus();
            FocusScope.of(context).unfocus();
          },
          child: ListView(children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  "Hello User!",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 40, left: 10, right: 10),
              height: h * 0.6,
              width: w,
              decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.2),
                  // boxShadow: [
                  //   BoxShadow(
                  //       spreadRadius: 1, color: Colors.black)
                  // ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("User"),
                    ),
                    customTextFeild(
                        focusNode: _focusName,
                        name: "User",
                        iconColor: Colors.amber[700],
                        icon: Icon(Icons.person_2_outlined),
                        action: TextInputAction.next),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("Password"),
                    ),
                    customTextFeild(
                        focusNode: _focusPass,
                        iconColor: Colors.amber[700],
                        icon: Icon(Icons.password),
                        suffIcons: Icon(Icons.remove_red_eye_outlined),
                        isPassword: true,
                        name: "Password"),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Obx(
                                  () => SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Checkbox(
                                      value: isChecked.value,
                                      activeColor: Colors.white,
                                      checkColor: Colors.black,
                                      onChanged: (value) {
                                        isChecked.value = !isChecked.value;
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Remember Me!"),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            child: TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password?")),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        // Left Divider
                        Expanded(
                          child: Divider(
                            height: 0,
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ),
                        // Text in the center
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "or",
                            style: TextStyle(
                                color: Colors.white), // Customize text style
                          ),
                        ),
                        // Right Divider
                        Expanded(
                          child: Divider(
                            height: 0,
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign IN"),
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
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: Text("Don't have an Account? Sign up")),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }

  Widget customTextFeild(
      {String? name,
      String? hint,
      FocusNode? focusNode,
      Icon? icon,
      bool isPassword = false,
      Color? iconColor,
      Icon? suffIcons,
      TextInputAction? action}) {
    return TextFormField(
      focusNode: focusNode,
      textInputAction: action,
      obscureText: isPassword,
      decoration: InputDecoration(
        suffixIcon: suffIcons,
        prefixIcon: icon,
        prefixIconColor: iconColor,

        constraints: BoxConstraints(
            maxHeight: 50, maxWidth: MediaQuery.of(context).size.width),

        label: Text(name!),
        hintText: hint,

        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(10)))
      ),
    );
  }
}

PreferredSizeWidget appBar(String title, bool type, Icon icon) {
  return AppBar(
    backgroundColor: Colors.amberAccent,
    title: Text(title),
    centerTitle: type,
    leading: Container(child: icon),
  );
}

Widget customButton() {
  return Container(
    color: Colors.amber,
    constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: double.infinity,
        maxHeight: double.infinity,
        maxWidth: double.infinity),
  );
}
