class ProfileApiModel {
  ProfileApiModel({
      this.data,});

  ProfileApiModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;
ProfileApiModel copyWith({  List<Data>? data,
}) => ProfileApiModel(  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.firstName, 
      this.lastName, 
      this.employeeId,});

  Data.fromJson(dynamic json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    employeeId = json['employeeId'];
  }
  String? firstName;
  String? lastName;
  num? employeeId;
Data copyWith({  String? firstName,
  String? lastName,
  num? employeeId,
}) => Data(  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  employeeId: employeeId ?? this.employeeId,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['employeeId'] = employeeId;
    return map;
  }

}