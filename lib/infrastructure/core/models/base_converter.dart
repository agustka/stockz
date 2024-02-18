import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

mixin BaseConverter {
  Map<dynamic, Function> get conversions;

  T Function(Map<String, dynamic> input) getConversionFunction<T>() {
    T fallback(_) {
      throw Exception("No conversion function available for type: $T");
    }

    return (conversions[T] as T Function(Map<String, dynamic> input)?) ?? fallback;
  }

  Response<BodyType> convertToCustomObject<SingleItemType, BodyType>(
      Response rawResponse,
      Map<dynamic, Function> conversions,
      ) {
    final dynamic element = rawResponse.body;
    BodyType customBody;
    if (element is SingleItemType) {
      customBody = element as BodyType;
    } else if (element is List) {
      customBody = _deserializeList<SingleItemType>(element, conversions) as BodyType;
    } else {
      Map<String, dynamic> map;
      if (element is String) {
        map = json.decode(element) as Map<String, dynamic>;
      } else {
        map = element as Map<String, dynamic>;
      }
      customBody = _deserialize<SingleItemType>(map, conversions) as BodyType;
    }
    return rawResponse.copyWith<BodyType>(body: customBody);
  }

  List<SingleItemType> _deserializeList<SingleItemType>(List<dynamic> elements, Map<dynamic, Function> conversions) {
    final List<SingleItemType?> withNulls =
    elements.map((value) => _deserialize<SingleItemType>(value, conversions)).toList();
    return withNulls.where((element) => element != null).map((e) => e!).toList();
  }

  SingleItemType? _deserialize<SingleItemType>(dynamic value, Map<dynamic, Function> conversions) {
    try {
      if (conversions.containsKey(SingleItemType)) {
        return conversions[SingleItemType]!(value) as SingleItemType;
      } else {
        err(
          Error.safeToString("$SingleItemType is not in the model converter array - did you forget to add it?."),
          trace: StackTrace.current,
        );
        return null;
      }
    } catch (e, trace) {
      err(e, trace: trace);
      err(Error.safeToString("Unable to convert type $SingleItemType to a model class."));
      return null;
    }
  }
}
