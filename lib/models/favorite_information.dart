// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_types_as_parameter_names

class favorite_information {
  final String title;
  final String imagUrl;
  final String subtitle;
  final String price;
  final String score;
  final String? status;
  final Icon;

  const favorite_information({
    required this.title,
    required this.imagUrl,
    required this.subtitle,
    required this.price,
    required this.score,
    this.status,
    this.Icon,
  });
}
