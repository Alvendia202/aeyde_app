// ignore_for_file: unused_element

class ProductPage {
  final String name;
  final String price;
  final String imagePath;
  final String rating;
  final String desc;
  

  ProductPage({
    required this.name, 
    required this.price, 
    required this.imagePath, 
    required this.rating,
    required this.desc,
    
  });
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
  String get _desc => desc;
}