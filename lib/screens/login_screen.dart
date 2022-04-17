import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_apps/theme.dart';
import 'package:food_apps/screens/confirm_screen.dart';
import 'package:food_apps/screens/home_screen.dart';
import 'package:food_apps/widgets/menu_card.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late bool obscureText;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body:  Container(
          padding: const EdgeInsets.all(20),
          color: BlueColor,
      
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.png', width: 150,
              ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: <Widget>[
                            Material(
                                color: whiteColor,
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                elevation: 2,
                                child: AspectRatio(
                                    aspectRatio: 7 / 1,
                                    child: Center(
                                        child: TextFormField(
                                          decoration: const InputDecoration(hintText: 'Email', border: InputBorder.none, contentPadding: EdgeInsets.all(8)),
                                          controller: emailController,
                                          keyboardType: TextInputType.emailAddress,
                                        )))),
                            Container(
                                margin: const EdgeInsets.only(top: 16),
                                child: Material(
                                    color: whiteColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    elevation: 2,
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: AspectRatio(
                                              aspectRatio: 7 / 1,
                                              child: Center(
                                                  child: TextFormField(
                                                    decoration: const InputDecoration(hintText: 'Password', border: InputBorder.none, contentPadding: EdgeInsets.all(8)),
                                                    controller: passwordController,
                                                    obscureText: obscureText,
                                                  ))),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            color: !obscureText ? blackColor.withOpacity(0.3) : blackColor,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              obscureText = !obscureText;
                                            });
                                          },
                                        )
                                      ],
                                    ))),
                            Container(
                                margin: const EdgeInsets.only(top: 30),
                                width: MediaQuery.of(context).size.width,
                                child: MaterialButton(
                                  onPressed: () {
                                  Navigator.push(context, 
                                    MaterialPageRoute(builder: (context) => const HomeScreen()));
                                  },
                                  child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
                                  color: yellowColor,
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                  padding: const EdgeInsets.all(16),
                                )),
                          ],
                        )
                        ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){

                            },
                            child: const Text(
                              'Sign Up',
                              style: 
                              TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                              ),
                            ),
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          InkWell(
                            onTap: (){},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal
                              ),
                            ),
                          ),
                        ],
                  ),
                ),
            ],
          ),
        ));
  }
}
