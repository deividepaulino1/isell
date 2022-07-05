import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 200,
                  width: 200,
                  child:
                      Image(image: AssetImage('assets/logotipo/logotipo.png')),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 30),
                child: Column(
                  children: [
                    TextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Esqueceu sua senha?',
                            style: TextStyle(
                              color: Colors.purple,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 40,
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.yellow.shade700,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      'Fazer Login',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      child: Image.asset('assets/logotipo/facebook.png')),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 50,
                      child: Image.asset('assets/logotipo/google.png')),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('Não tem uma conta? '),
            ],
          ),
        ),
      ),
    );
  }
}
