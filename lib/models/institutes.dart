import 'package:flutter/foundation.dart';

class Institutes {
  final String? id;
  final List<String>? categories;
  final String? title;
  final String? imageUrl;
  final String? description;
  final List<String>? purposeInstitute;
  final String? instituteLink;
  final String? localState;

  const Institutes({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.purposeInstitute,
    @required this.instituteLink,
    @required this.description,
    @required this.localState
  });
}