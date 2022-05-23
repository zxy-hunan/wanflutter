class CateGroyEntity {
  List<CateGroyData>? data;
  int? errorCode;
  String? errorMsg;

  CateGroyEntity({this.data, this.errorCode, this.errorMsg});

  CateGroyEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <dynamic>[].cast<CateGroyData>();
      (json['data'] as List).forEach((v) {
        data!.add(new CateGroyData.fromJson(v));
      });
    }
    errorCode = json['errorCode'];
    errorMsg = json['errorMsg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}

class CateGroyData {
  int? visible;
  List<CateGroyDataChild>? children;
  String name = '';
  bool? userControlSetTop;
  int? id;
  int? courseId;
  int? parentChapterId;
  int? order;
  bool? isExpanded;

  CateGroyData(
      {this.visible,
      this.children,
      this.name = '',
      this.userControlSetTop,
      this.id,
      this.courseId,
      this.parentChapterId,
      this.order,
      this.isExpanded}); //标识是否初始化

  CateGroyData.fromJson(Map<String, dynamic> json) {
    visible = json['visible'];
    if (json['children'] != null) {
      children = [];
      (json['children'] as List).forEach((v) {
        children!.add(new CateGroyDataChild.fromJson(v));
      });
    }
    name = json['name'];
    userControlSetTop = json['userControlSetTop'];
    id = json['id'];
    courseId = json['courseId'];
    parentChapterId = json['parentChapterId'];
    order = json['order'];
    isExpanded = json['isExpanded'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['visible'] = this.visible;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['userControlSetTop'] = this.userControlSetTop;
    data['id'] = this.id;
    data['courseId'] = this.courseId;
    data['parentChapterId'] = this.parentChapterId;
    data['order'] = this.order;
    data['isExpanded'] = this.isExpanded;
    return data;
  }
}

class CateGroyDataChild {
  int? visible;
  List<Null>? children;
  String name = '';
  bool? userControlSetTop;
  int? id;
  int? courseId;
  int? parentChapterId;
  int? order;

  CateGroyDataChild(
      {this.visible,
      this.children,
      this.name = '',
      this.userControlSetTop,
      this.id,
      this.courseId,
      this.parentChapterId,
      this.order});

  CateGroyDataChild.fromJson(Map<String, dynamic> json) {
    visible = json['visible'];
    if (json['children'] != null) {
      children = [];
    }
    name = json['name'];
    userControlSetTop = json['userControlSetTop'];
    id = json['id'];
    courseId = json['courseId'];
    parentChapterId = json['parentChapterId'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['visible'] = this.visible;
    if (this.children != null) {
      data['children'] = [];
    }
    data['name'] = this.name;
    data['userControlSetTop'] = this.userControlSetTop;
    data['id'] = this.id;
    data['courseId'] = this.courseId;
    data['parentChapterId'] = this.parentChapterId;
    data['order'] = this.order;
    return data;
  }
}
