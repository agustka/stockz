import 'package:stockz/domain/core/value_objects/int_value_object.dart';

abstract interface class Statements {
  bool hasYear(int year);
}

abstract interface class Statement {
  IntValueObject get statementYear;
}
