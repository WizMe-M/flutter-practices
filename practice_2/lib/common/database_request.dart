abstract class DatabaseRequest {
  /// Таблица Роли
  ///
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUser = 'User';

  /// Таблица Категории одежды
  ///
  /// Поля таблицы: Название категории
  static const String tableCategory = 'Category';

  /// Таблица Производители
  ///
  /// Поля таблицы: Название, Дата основания
  static const String tableManufacturer = 'Manufacturer';

  /// Таблица Размеры
  ///
  /// Поля таблицы: Величина (код)
  static const String tableSize = 'Size';

  /// Таблица Одежда
  ///
  /// Поля таблицы: Название, стоимость, категория, производитель, размер
  static const String tableClothes = 'Clothes';

  /// Таблица Статусы
  ///
  /// Поля таблицы: Название
  static const String tableStatus = 'Status';

  /// Таблица Заказы
  ///
  /// Поля таблицы: Номер заказа, Дата создания, Адрес доставки, пользователь, статус
  static const String tableOrder = 'Order';

  /// Таблица Позиции заказов (М:М - заказы:одежда)
  static const String tableOrderPosition = 'Order_Position';
  
  static const List<String> tables = [
    tableRole,
    tableUser,
    tableCategory,
    tableManufacturer,
    tableSize,
    tableClothes,
    tableStatus,
    tableOrder,
    tableOrderPosition
  ];

  static const List<String> createTablesQueries = [
    _createRoleQuery,
    _createUserQuery,
    _createCategoryQuery,
    _createManufacturerQuery,
    _createSizeQuery,
    _createClothesQuery,
    _createStatusQuery,
    _createOrderQuery,
    _createOrderPositionQuery
  ];

  /// Запрос для создания таблицы Role
  static const String _createRoleQuery =
'''
CREATE TABLE '$tableRole' 
(
    'id' INTEGER,
    'name' TEXT NOT NULL UNIQUE, 
    PRIMARY KEY('id' AUTOINCREMENT)
);
''';

  /// Запрос для создания таблицы Users
  static const String _createUserQuery =
'''
CREATE TABLE '$tableUser' 
(
    'id' INTEGER,
    'login'	TEXT NOT NULL UNIQUE,
    'password' TEXT NOT NULL,
    'role_id' INTEGER,
    PRIMARY KEY('id')
    FOREIGN KEY('role_id') REFERENCES $tableRole('id'),
);
''';

  static const String _createCategoryQuery = 
'''
CREATE TABLE '$tableCategory' 
(
    'id' INTEGER,
    'name' TEXT NOT NULL UNIQUE, 
    PRIMARY KEY('id' AUTOINCREMENT)
);
''';

  static const String _createManufacturerQuery = 
'''
CREATE TABLE '$tableManufacturer'
(
    'id' INTEGER,
    'name' TEXT NOT NULL UNIQUE,
    'creation_date' TEXT NOT NULL,
    PRIMARY KEY('id' AUTOINCREMENT)
);
''';

  static const String _createSizeQuery = 
'''
CREATE TABLE '$tableSize'
(
    'id' INTEGER,
    'code' TEXT NOT NULL UNIQUE, 
    PRIMARY KEY('id' AUTOINCREMENT)
);
''';

  static const String _createClothesQuery = 
'''
CREATE TABLE '$tableClothes'
(
    'id' INTEGER,
    'name' TEXT NOT NULL UNIQUE,
    'cost' REAL NOT NULL DEFAULT 100,
    'category_id' INTEGER NOT NULL,
    'manufacturer_id' INTEGER NOT NULL,
    'size_id' INTEGER NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT),
    FOREIGN KEY (category_id) REFERENCES $tableCategory(id) ON DELETE CASCADE,
    FOREIGN KEY (manufacturer_id) REFERENCES $tableManufacturer(id) ON DELETE CASCADE,
    FOREIGN KEY (size_id) REFERENCES $tableSize(id) ON DELETE CASCADE
);
''';

  static const String _createStatusQuery = 
'''
CREATE TABLE '$tableStatus'
(
    'id' INTEGER,
    'name' TEXT NOT NULL UNIQUE, 
    PRIMARY KEY('id' AUTOINCREMENT)
);
''';

  static const String _createOrderQuery = 
'''
CREATE TABLE '$tableOrder'
(
    'id' INTEGER,
    'number' INTEGER NOT NULL UNIQUE,
    'datetime_creation' TEXT NOT NULL DEFAULT datetime('now', 'localtime'),
    'address' TEXT NOT NULL,
    'user_id' INTEGER NOT NULL,
    'status_id' INTEGER NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT),
    FOREIGN KEY (user_id) REFERENCES $tableUser(id) ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES $tableStatus(id) ON DELETE CASCADE
);
''';

  static const String _createOrderPositionQuery = 
'''
CREATE TABLE '$tableOrderPosition'
(
    'order_id' INTEGER,
    'clothes_id' INTEGER,
    PRIMARY KEY ('order_id', 'clothes_id'),
    FOREIGN KEY (order_id) REFERENCES $tableOrder(id) ON DELETE CASCADE,
    FOREIGN KEY (clothes_id) REFERENCES $tableClothes(id) ON DELETE CASCADE,
);
''';

  static String deleteTableQuery(String table)  => 'DROP TABLE $table';
}