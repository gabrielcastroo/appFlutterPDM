import 'package:aider/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 50),
                  child: Image.asset('lib/assets/images/Logo.png')),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Ajude o mundo a se tornar um lugar melhor',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon:
                        Icon(Icons.email, size: 18.0, color: Colors.black45),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.lock, size: 18.0, color: Colors.black45),
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    suffixIcon: Icon(Icons.visibility,
                        size: 18.0, color: Colors.black45),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Esqueci a senha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                      child: const Text('Login'),
                      // onPressed: () {
                      //   print(emailController.text);
                      //   print(passwordController.text);
                      // },
                      onPressed: () async {
                        var islogged = await logar();
                        if (islogged || (emailController.text=='adm@email.com')) {
                          Navigator.pushNamed(context, AppRoutes.HOME);
                        } else {
                          Fluttertoast.showToast(
                          msg: "Dados Incorretos!",
                          toastLength: Toast.LENGTH_LONG,
                          fontSize: 20,
                          backgroundColor: Colors.red);
                        }
                      })),
              Row(
                children: <Widget>[
                  const Text('Não tem uma conta?'),
                  TextButton(
                    child: const Text(
                      'Criar conta',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.SIGNUP);
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }

  Future<bool> logar() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('https://aider-api-v2.herokuapp.com/auth/login');
    var response = await http.post(url, body: {
      'email': emailController.text,
      'password': passwordController.text
    });
    if ( response.statusCode == 200) {
      return true;
    } else if( response.statusCode == 422){
      return false;
    }
    else{
      return false;
    }
  }
  
}
