import 'package:aider/models/institutes.dart';
import 'package:flutter/material.dart';

class InstituteDetailsScreen extends StatelessWidget {
  const InstituteDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final institute = ModalRoute.of(context)!.settings.arguments as Institutes;

    return Scaffold(
      appBar: AppBar(
        title: Text(institute.title!),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              institute.imageUrl!,
              fit: BoxFit.cover,
            )
          )
        ],
      ),
    );
  }
}