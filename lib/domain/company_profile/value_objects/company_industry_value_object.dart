import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class CompanyIndustryValueObject extends ValueObject<CompanyIndustry> {
  CompanyIndustry get get => getOr(CompanyIndustry.invalid);

  factory CompanyIndustryValueObject(String? input, {bool logError = true}) {
    return CompanyIndustryValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory CompanyIndustryValueObject.invalid() = _$InvalidCardIssuer;

  const CompanyIndustryValueObject._(CompanyIndustry super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final CompanyIndustry type = _parse(input, logError: false);
    if (type == CompanyIndustry.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static CompanyIndustry _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "consumer electronics":
        return CompanyIndustry.consumerElectronics;
      case "tobacco":
        return CompanyIndustry.tobacco;
      case "entertainment":
        return CompanyIndustry.entertainment;
      case "biotechnology":
        return CompanyIndustry.biotechnology;
      case "drug manufacturers—specialty & generic":
        return CompanyIndustry.drugManufacturersSpecialtyAndGeneric;
      case "medical care facilities":
        return CompanyIndustry.medicalCareFacilities;
      case "apparel retail":
        return CompanyIndustry.apparelRetail;
      case "specialty retail":
        return CompanyIndustry.specialtyRetail;
      case "internet content & information":
        return CompanyIndustry.internetContentAndInformation;
      case "oil & gas midstream":
        return CompanyIndustry.oilAndGasMidstream;
      case "software—infrastructure":
        return CompanyIndustry.softwareInfrastructure;
      case "footwear & accessories":
        return CompanyIndustry.footwearAndAccessories;
      case "healthcare plans":
        return CompanyIndustry.healthcarePlans;
      case "gambling":
        return CompanyIndustry.gambling;
      case "auto parts":
        return CompanyIndustry.autoParts;
      case "oil & gas e&p":
        return CompanyIndustry.oilAndGasEAndP;
      case "personal services":
        return CompanyIndustry.personalServices;
      case "staffing & employment services":
        return CompanyIndustry.staffingAndEmploymentServices;
      case "computer hardware":
        return CompanyIndustry.computerHardware;
      case "software—application":
        return CompanyIndustry.softwareApplication;
      case "telecom services":
        return CompanyIndustry.telecomServices;
      case "leisure":
        return CompanyIndustry.leisure;
      case "recreational vehicles":
        return CompanyIndustry.recreationalVehicles;
      case "metal fabrication":
        return CompanyIndustry.metalFabrication;
      case "restaurants":
        return CompanyIndustry.restaurants;
      case "advertising agencies":
        return CompanyIndustry.advertisingAgencies;
      case "education & training services":
        return CompanyIndustry.educationAndTrainingServices;
      case "electronic gaming & multimedia":
        return CompanyIndustry.electronicGamingAndMultimedia;
      case "health information services":
        return CompanyIndustry.healthInformationServices;
      case "conglomerates":
        return CompanyIndustry.conglomerates;
      case "medical devices":
        return CompanyIndustry.medicalDevices;
      case "luxury goods":
        return CompanyIndustry.luxuryGoods;
      case "specialty business services":
        return CompanyIndustry.specialtyBusinessServices;
      case "information technology services":
        return CompanyIndustry.informationTechnologyServices;
      case "oil & gas integrated":
        return CompanyIndustry.oilAndGasIntegrated;
      default:
        if (logError) {
          errEnum(type: "CompanyIndustry", input: input);
        }
        return CompanyIndustry.invalid;
    }
  }
}

class _$InvalidCardIssuer extends CompanyIndustryValueObject {
  const _$InvalidCardIssuer()
      : super._(CompanyIndustry.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum CompanyIndustry {
  consumerElectronics,
  tobacco,
  entertainment,
  biotechnology,
  drugManufacturersSpecialtyAndGeneric,
  medicalCareFacilities,
  apparelRetail,
  specialtyRetail,
  internetContentAndInformation,
  oilAndGasMidstream,
  softwareInfrastructure,
  footwearAndAccessories,
  healthcarePlans,
  gambling,
  autoParts,
  oilAndGasEAndP,
  personalServices,
  staffingAndEmploymentServices,
  computerHardware,
  softwareApplication,
  telecomServices,
  leisure,
  recreationalVehicles,
  metalFabrication,
  restaurants,
  advertisingAgencies,
  educationAndTrainingServices,
  electronicGamingAndMultimedia,
  healthInformationServices,
  conglomerates,
  medicalDevices,
  luxuryGoods,
  specialtyBusinessServices,
  informationTechnologyServices,
  oilAndGasIntegrated,
  invalid,
}
