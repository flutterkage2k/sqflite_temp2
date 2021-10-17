class Category {
  int? id;
  String? name;

  Category({this.id, this.name});

  Category.fromMap(dynamic obj) {
    id = obj['categoryId'];
    name = obj['categoryName'];
  }

  // Map<String, dynamic> toMap() {
  //   var map = <String, dynamic>{
  //     'categoryName': name,
  //   };
  //   return map;
  // }

  Map<String, dynamic> toMap() {
    return {
      'categoryName': name,
    };
  }
}
