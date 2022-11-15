class CarModel {
  final String id;
  final String url;
  final String model;
  final String color;
  final String year;

  CarModel({
    required this.id,
    required this.url,
    required this.model,
    required this.color,
    required this.year,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      id: json['id'],
      url: json['url'],
      model: json['model'],
      color: json['color'],
      year: json['year'],
    );
  }

  /* Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['model'] = this.model;
    data['color'] = this.color;
    data['year'] = this.year;
    return data;
  } */
}
