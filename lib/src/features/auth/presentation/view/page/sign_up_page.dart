import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordControllerConf = TextEditingController();
  TextEditingController emailControllerConf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                'Insira suas informações abaixo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.account_box_rounded,
                    size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Nome Completo',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                prefixIcon:
                    Icon(Icons.email, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Informe o seu email',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextField(
              controller: emailControllerConf,
              decoration: const InputDecoration(
                prefixIcon:
                    Icon(Icons.email, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Confirme seu email',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Digite sua senha',
                suffixIcon:
                    Icon(Icons.visibility, size: 18.0, color: Colors.black45),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: TextField(
              controller: passwordControllerConf,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Confirme sua senha',
                suffixIcon:
                    Icon(Icons.visibility, size: 18.0, color: Colors.black45),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              var isRegistred = await register();
              if (isRegistred) {
                Fluttertoast.showToast(
                    msg: "Usuário Cadastrado Com Sucesso!",
                    toastLength: Toast.LENGTH_LONG,
                    fontSize: 20,
                    backgroundColor: Colors.green);
              } else {
                Fluttertoast.showToast(
                    msg: "Dados incorretos!",
                    toastLength: Toast.LENGTH_LONG,
                    fontSize: 20,
                    backgroundColor: Colors.red);
              }
            },
            child: const Text('Enviar'),
          ),
          TextButton(
            child: const Text(
              'voltar',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ]),
      ),
    );
  }

  Future<bool> register() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse('https://aider-api-v2.herokuapp.com/auth/register');
    var response = await http.post(url, body: {
      'email': emailController.text,
      'password': passwordController.text,
      'confirmpassword': passwordControllerConf.text,
      'name': nameController.text
    });
    if (response.statusCode == 201) {
      return true;
    } else if (response.statusCode == 422) {
      return false;
    } else {
      return false;
    }
  }
}
