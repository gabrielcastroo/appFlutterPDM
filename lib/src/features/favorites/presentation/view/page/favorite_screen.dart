import 'package:aider/components/institute_item.dart';
import 'package:aider/models/institutes.dart';
import 'package:flutter/widgets.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Institutes> favoriteInstitutes;

  const FavoriteScreen(this.favoriteInstitutes);

  @override
  Widget build(BuildContext context) {
    if (favoriteInstitutes.isEmpty) {
      return const Center(
        child: Text('Sem Favoritos'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteInstitutes.length,
        itemBuilder: (context, index) {
          return InstituteItem(favoriteInstitutes[index]);
        },
      );
    }
  }
}
