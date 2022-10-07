class RoleEntity {
  late int id;
  final String name;

  RoleEntity({required this.name});
}

enum Roles { admin, user }
