import 'package:flutter/material.dart';
import 'package:udcd_task3/ui/items/login_item.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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

  Function loginValidation() {
    FormState currentState = _key.currentState;

    if (currentState.validate()) {
      if (uname.controller.text.isEmpty && passwd.controller.text.isEmpty) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                key: _key,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4.0),
                      child: TextFormField(
                        validator: uname.validator,
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
                        validator: passwd.validator,
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
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: () {},
                    ),
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
