import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
            margin:const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.account_box_rounded, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Nome Completo',
              ),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.email, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Informe o seu email',
              ),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.email, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Confirme seu email',
              ),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(5),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.lock, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Digite sua senha',
                suffixIcon:
                    Icon(Icons.visibility, size: 18.0, color: Colors.black45),
              ),
            ),
          ),
          Container(
            margin:const EdgeInsets.all(5),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon:
                    Icon(Icons.lock, size: 18.0, color: Colors.black45),
                border: OutlineInputBorder(),
                labelText: 'Confirme sua senha',
                suffixIcon:
                    Icon(Icons.visibility, size: 18.0, color: Colors.black45),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //signup screen
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
}
