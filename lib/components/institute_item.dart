import 'package:aider/models/institutes.dart';
import 'package:aider/utils/app_routes.dart';
import 'package:flutter/material.dart';

class InstituteItem extends StatelessWidget {
  final Institutes institute;

  const InstituteItem(this.institute);

  void _selectInstitute(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.INSTITUTES_DETAILS,
      arguments: institute
      );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectInstitute(context),
      child: Card(
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero
                  ),
        ),
        elevation: 5,
        margin:const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero
                  ),
                  child: Image.network(
                    institute.imageUrl as String,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    width: 350,
                    color: Colors.white70,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 80
                    ),
                    child: Text(
                      institute.title!,
                      style: const TextStyle(
                        fontFamily: 'RobotoCondesed',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                    
                  ),
                )
              ],

            ),
            Padding(
              padding:const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children:<Widget>[
                      const Icon(Icons.settings_accessibility),
                      const SizedBox(width: 6),
                      Text(
                        ' ${institute.purposeInstitute![0]}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                  Row(
                    children:<Widget>[
                      const Icon(Icons.location_on_sharp),
                      const SizedBox(width: 6),
                      Text(
                        '${institute.localState}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
