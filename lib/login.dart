import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.jpg'), fit: BoxFit.cover)),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 35,top: 130),
            child: Text('Kính Chào\nQúy Khách', style: TextStyle(
              color: Colors.white,
              fontSize: 33
            ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.30, right: 35, left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Mật Khẩu',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    child: Container(

                      alignment: Alignment.center,
                      width: 250,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF1317C2),
                                Color(0xFF0FC4DC),
                                Color(0xFF530EC7),
                              ])
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text('Đăng Nhập',
                          style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'Đăng Ký',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 18),
                        ),
                        style: ButtonStyle(),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Quên Mật Khẩu?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff4c505b),
                              fontSize: 18,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
        ),
    ),
    );
  }
}
