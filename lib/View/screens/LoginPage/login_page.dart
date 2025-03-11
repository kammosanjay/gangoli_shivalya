import 'package:flutter/material.dart';
import 'package:gangoli_shivalya/constant/customWidget.dart';
import 'package:gangoli_shivalya/database/dbHelper.dart';
import 'package:gangoli_shivalya/resources/mypagenames/mypage_names.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode _focusName = FocusNode();
  FocusNode _focusPass = FocusNode();
  RxBool isChecked = false.obs;
  RxBool isPhone = false.obs;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController userC;
  late TextEditingController passC;

  DBHelper? dbHelper;
  @override
  void initState() {
    super.initState();

    userC = TextEditingController();
    passC = TextEditingController();
    dbHelper = DBHelper.instance;
  }

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
                  "Welcome!",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 40, left: 10, right: 10),
              height: h * 0.7,
              width: w,
              decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.2),
                  // boxShadow: [
                  //   BoxShadow(
                  //       spreadRadius: 1, color: Colors.black)
                  // ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Obx(
                () => Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        isPhone.value
                            ? loginWithPhone()
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      "User",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                  ),
                                  CustomWidgets.customTextFeild(
                                    context: context,
                                    focusNode: _focusName,
                                    controller: userC,
                                    validate: (userC) {
                                      if (userC!.isEmpty) {
                                        return "Invalid";
                                      } else {
                                        return null;
                                      }
                                    },
                                    name: "User",
                                    icon: Icon(Icons.person_2_outlined),
                                    iconColor: Colors.lightBlue,
                                    action: TextInputAction.next,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Text("Password",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 20)),
                                  ),
                                  CustomWidgets.customTextFeild(
                                    context: context,
                                    focusNode: _focusPass,
                                    controller: passC,
                                    validate: (passC) {
                                      if (passC!.isEmpty) {
                                        return "Invalid";
                                      } else {
                                        return null;
                                      }
                                    },
                                    name: "Password",
                                    icon: Icon(Icons.password),
                                    iconColor: Colors.lightBlue,
                                    suffIcons:
                                        Icon(Icons.remove_red_eye_outlined),
                                    isPassword: true,
                                  ),
                                ],
                              ),
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
                                          fillColor: MaterialStatePropertyAll(
                                              Colors.blue),
                                          activeColor: Colors.blue,
                                          checkColor: Colors.white,
                                          onChanged: (value) {
                                            isChecked.value = !isChecked.value;
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Remember Me!",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                child: TextButton(
                                    onPressed: () {
                                      Get.toNamed(MyPageNames.forgot);
                                    },
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
                                indent: 20,
                                thickness: 1,
                                color: Colors.blue,
                              ),
                            ),
                            // Text in the center
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "or",
                                style: TextStyle(
                                    color: Colors.blue), // Customize text style
                              ),
                            ),
                            // Right Divider
                            Expanded(
                              child: Divider(
                                endIndent: 20,
                                height: 0,
                                thickness: 1,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            child: Obx(
                              () => isPhone.value
                                  ? InkWell(
                                      onTap: () {
                                        if (isPhone.value) {
                                          isPhone.value = false;
                                        }
                                      },
                                      child: Text(
                                        'Login with User and Password',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  : Text(
                                      'Login with Mobile',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {
                                  if (!isPhone.value) {
                                    isPhone.value = true;
                                  }
                                },
                                child: Image.asset(
                                  "assets/images/mobile.png",
                                  height: 30,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              "assets/images/google.png",
                              height: 30,
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10.0,
                          ),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                               
                                Get.toNamed(MyPageNames.home);
                              }
                              
                             
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(w, 50), // Width: 200, Height: 50
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius
                              ), // Button color
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                              onPressed: () {
                                Get.toNamed(MyPageNames.signup);
                              },
                              child: Text("Don't have an Account? Sign up")),
                        )
                      ]),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget loginWithPhone() {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text("Mobile Number",
              style: TextStyle(color: Colors.blue, fontSize: 20)),
        ),
        CustomWidgets.customTextFeild(
          context: context,
          focusNode: _focusName,
          name: "User",
          icon: Icon(Icons.person_2_outlined),
          iconColor: Colors.lightBlue,
          action: TextInputAction.next,
        ),
      ],
    ));
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
