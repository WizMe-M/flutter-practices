import 'package:practice_2/domain/entity/role_entity.dart';

class Role extends RoleEntity {
  Role({required super.name});

  Map<String, dynamic> toJson() => {'name': name};
  factory Role.fromJson(Map<String, dynamic> json) => Role(name: json['name']);
}
