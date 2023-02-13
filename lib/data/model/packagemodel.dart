class PackageModel {
  int? id;
  int? packageId;
  String? locale;
  String? image;
  String? title;
  String? slug;
  String? excerpt;
  String? content;
  String? variant;
  String? createdAt;
  String? updatedAt;

  PackageModel(
      {this.id,
      this.packageId,
      this.locale,
      this.image,
      this.title,
      this.slug,
      this.excerpt,
      this.content,
      this.variant,
      this.createdAt,
      this.updatedAt});

  PackageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    packageId = json['package_id'];
    locale = json['locale'];
    image = json['image'];
    title = json['title'];
    slug = json['slug'];
    excerpt = json['excerpt'];
    content = json['content'];
    variant = json['variant'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['package_id'] = this.packageId;
    data['locale'] = this.locale;
    data['image'] = this.image;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['excerpt'] = this.excerpt;
    data['content'] = this.content;
    data['variant'] = this.variant;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
