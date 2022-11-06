class BeerModel {
  final String id;
  final String name;
  final String breweryType;
  final String street;
  final String? address2;
  final String? address3;
  final String city;
  final String state;
  final String? countyProvince;
  final String postalCode;
  final String country;
  final String longitude;
  final String latitude;
  final String phone;
  final String? websiteUrl;
  final String updatedAt;
  final String createdAt;

  const BeerModel({
    required this.id,
    required this.name,
    required this.breweryType,
    required this.street,
    this.address2,
    this.address3,
    required this.city,
    required this.state,
    this.countyProvince,
    required this.postalCode,
    required this.country,
    required this.longitude,
    required this.latitude,
    required this.phone,
    this.websiteUrl,
    required this.updatedAt,
    required this.createdAt,
  });

  factory BeerModel.fromJson(Map<String, dynamic> json) {
    return BeerModel(
      id: json['id'],
      name: json['name'],
      breweryType: json['brewery_type'],
      street: json['street'],
      address2: json['address_2'],
      address3: json['address_3'],
      city: json['city'],
      state: json['state'],
      countyProvince: json['county_province'],
      postalCode: json['postal_code'],
      country: json['country'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      phone: json['phone'],
      websiteUrl: json['website_url'],
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
    );
  }
}
