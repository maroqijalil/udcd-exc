import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udcd_task3/ui/items/login_item.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// Form Validation using ScaffoldState
class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  Timer timer;
  LoginItem uname = LoginItem(
      controller: TextEditingController(),
      hint: "Nama Pengguna",
      label: "Username",
      type: TextInputType.name,
      icon: Icon(Icons.person),
      validator: (value) {
        if (value.isEmpty) {
          return "Username tidak boleh kosong";
        }
        return null;
      });
  LoginItem passwd = LoginItem(
      controller: TextEditingController(),
      hint: "Kata Sandi",
      label: "Password",
      type: TextInputType.visiblePassword,
      icon: Icon(Icons.lock),
      validator: (value) {
        if (value.isEmpty) {
          return "Password tidak boleh kosong";
        }
        return null;
      });

  Function loginValidation(ScaffoldState currentState) {
    FocusScope.of(context).requestFocus(FocusNode());

    String sbMsg = "";

    if (uname.controller.text.isEmpty && passwd.controller.text.isEmpty) {
      sbMsg = "Username dan Password tidak boleh kosong!";
    } else if (uname.controller.text.isNotEmpty &&
        passwd.controller.text.isEmpty) {
      sbMsg = "Password tidak boleh kosong!";
    } else if (uname.controller.text.isEmpty &&
        passwd.controller.text.isNotEmpty) {
      sbMsg = "Username tidak boleh kosong";
      if (passwd.controller.text.length < 6) {
        sbMsg += " dan password tidak kurang dari 5 karakter";
      }
      sbMsg += "!";
    } else {
      String user = uname.controller.text;
      String pass = passwd.controller.text;

      if (passwd.controller.text.length < 6) {
        sbMsg = "Password tidak boleh kurang dari 5 karakter!";
      } else if (user != "udacodingid" && pass != "udacodingJaya2021") {
        sbMsg = "Username dan Password Anda salah!";
      } else if (user == "udacodingid" && pass != "udacodingJaya2021") {
        sbMsg = "Password Anda salah!";
      } else if (user != "udacodingid" && pass == "udacodingJaya2021") {
        sbMsg = "Username Anda salah!";
      } else {
        sbMsg = "Berhasil masuk!";
      }
    }

    currentState.showSnackBar(SnackBar(
      content: Text(sbMsg),
    ));

    if (sbMsg == "Berhasil masuk!") {
      timer = Timer(Duration(milliseconds: 1000), () {
        Navigator.pushReplacementNamed(context, '/');
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 18.0),
                Form(
                  child: Theme(
                    data:
                        Theme.of(context).copyWith(primaryColor: Colors.amber),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.0),
                          child: TextFormField(
                            controller: uname.controller,
                            keyboardType: uname.type,
                            decoration: InputDecoration(
                              hintText: uname.hint,
                              icon: uname.icon,
                              labelText: uname.label,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.amber,
                                    width: 1,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.amberAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          child: TextFormField(
                            controller: passwd.controller,
                            obscureText: true,
                            keyboardType: passwd.type,
                            decoration: InputDecoration(
                              hintText: passwd.hint,
                              icon: passwd.icon,
                              labelText: passwd.label,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.amber,
                                    width: 1,
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                    color: Colors.amberAccent,
                                    width: 1,
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0),
                        MaterialButton(
                          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text(
                            "Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          color: Colors.amber,
                          onPressed: () {
                            loginValidation(_key.currentState);
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Form Validation using FormState Validator
// class _LoginPageState extends State<LoginPage> {
//   final GlobalKey<FormState> _key = GlobalKey<FormState>();

//   LoginItem uname = LoginItem(
//       controller: TextEditingController(),
//       hint: "Nama Pengguna",
//       label: "Username",
//       type: TextInputType.name,
//       icon: Icon(Icons.person),
//       validator: (value) {
//         if (value.isEmpty) {
//           return "Username tidak boleh kosong";
//         }
//         return null;
//       });
//   LoginItem passwd = LoginItem(
//       controller: TextEditingController(),
//       hint: "Kata Sandi",
//       label: "Password",
//       type: TextInputType.visiblePassword,
//       icon: Icon(Icons.lock),
//       validator: (value) {
//         if (value.isEmpty) {
//           return "Password tidak boleh kosong";
//         }
//         return null;
//       });

//   Function loginValidation() {
//     FormState currentState = _key.currentState;

//     if (currentState.validate()) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Selamat Datang",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.amber,
//                   fontSize: 32,
//                 ),
//               ),
//               SizedBox(height: 18.0),
//               Form(
//                 key: _key,
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(4.0),
//                       child: TextFormField(
//                         validator: uname.validator,
//                         controller: uname.controller,
//                         keyboardType: uname.type,
//                         decoration: InputDecoration(
//                           hintText: uname.hint,
//                           icon: uname.icon,
//                           labelText: uname.label,
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide(
//                                 color: Colors.amber,
//                                 width: 1,
//                               )),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide(
//                                 color: Colors.amberAccent,
//                                 width: 1,
//                               )),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 12.0),
//                     Container(
//                       padding: EdgeInsets.all(4.0),
//                       child: TextFormField(
//                         validator: passwd.validator,
//                         controller: passwd.controller,
//                         obscureText: true,
//                         keyboardType: passwd.type,
//                         decoration: InputDecoration(
//                           hintText: passwd.hint,
//                           icon: passwd.icon,
//                           labelText: passwd.label,
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide(
//                                 color: Colors.amber,
//                                 width: 1,
//                               )),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide: BorderSide(
//                                 color: Colors.amberAccent,
//                                 width: 1,
//                               )),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 12.0),
//                     MaterialButton(
//                       padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
//                       child: Text(
//                         "Masuk",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       color: Colors.amber,
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
