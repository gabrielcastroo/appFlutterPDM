import 'package:aider/models/institutes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class InstituteDetailsScreen extends StatelessWidget {
  final Function(Institutes) onToggleFavorite;

  final bool Function(Institutes) isFavorite;

  const InstituteDetailsScreen(this.onToggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final institute = ModalRoute.of(context)!.settings.arguments as Institutes;

    return Scaffold(
      appBar: AppBar(
        title: Text(institute.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Container(
            //   height: 300,
            //   width: double.infinity,
            //   child: Image.network(
            //     institute.imageUrl!,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Image.network(
                    institute.imageUrl!,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_drop_down_circle),
                    title: Text(institute.title!),
                    subtitle: Text(
                      institute.purposeInstitute![0],
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      institute.description!,
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () async {
                          final url = Uri.parse(institute.instituteLink as String);

                          if (await canLaunchUrl(url)) {
                            launchUrl(url);
                          }
                        },
                        child: const Text('SABER MAIS'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
              isFavorite(institute) ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            onToggleFavorite(institute);
          }),
    );
  }
}
