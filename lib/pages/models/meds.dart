class Post {
  int? id;
  String? invId;
  String? medsName;
  String? medsManufacturer;
  String? medsDescription;
  String? medsPrice;
  int? isActive;
  String? createdAt;
  String? updatedAt;

  Post(
      {this.id,
      this.invId,
      this.medsName,
      this.medsManufacturer,
      this.medsDescription,
      this.medsPrice,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    invId = json['inv_id'];
    medsName = json['meds_name'];
    medsManufacturer = json['meds_manufacturer'];
    medsDescription = json['meds_description'];
    medsPrice = json['meds_price'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['inv_id'] = this.invId;
    data['meds_name'] = this.medsName;
    data['meds_manufacturer'] = this.medsManufacturer;
    data['meds_description'] = this.medsDescription;
    data['meds_price'] = this.medsPrice;
    data['is_active'] = this.isActive;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
