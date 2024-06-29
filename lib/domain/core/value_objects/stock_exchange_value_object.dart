import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class StockExchangeValueObject extends ValueObject<StockExchange> {
  StockExchange get get => getOr(StockExchange.invalid);

  factory StockExchangeValueObject(String? input, {bool logError = true}) {
    return StockExchangeValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory StockExchangeValueObject.invalid() = _$InvalidCardIssuer;

  const StockExchangeValueObject._(StockExchange super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final StockExchange type = _parse(input, logError: false);
    if (type == StockExchange.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static StockExchange _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "new york stock exchange":
      case "nyse":
        return StockExchange.newYorkStockExchange;
      case "new york stock exchange arca":
        return StockExchange.newYorkStockExchangeArca;

      case "nasdaq":
        return StockExchange.nasdaq;
      case "nasdaq global select":
        return StockExchange.nasdaqGlobalSelect;
      case "nasdaq global market":
        return StockExchange.nasdaqGlobalMarket;
      case "nasdaq capital market":
        return StockExchange.nasdaqCapitalMarket;
      case "other otc":
        return StockExchange.otherOtc;
      case "international order book":
      case "iob":
        return StockExchange.internationalOrderBook;
      case "american stock exchange":
        return StockExchange.americanStockExchange;
      case "bats":
      case "cboe bzx":
        return StockExchange.cboe;
      case "cboe us":
        return StockExchange.cboeUs;
      case "cboe ca":
        return StockExchange.cboeCanada;
      case "cboe europe":
        return StockExchange.cboeEurope;

      case "toronto stock exchange":
        return StockExchange.torontoStockExchange;
      case "canadian securities exchange":
      case "canadian sec":
        return StockExchange.canadianSecuritiesExchange;
      case "toronto stock exchange ventures":
        return StockExchange.torontoStockExchangeVentures;
      case "neo":
        return StockExchange.neo;
      case "tsxv":
        return StockExchange.tsxv;

      case "mexico":
        return StockExchange.mexico;
      case "são paulo":
        return StockExchange.saoPaulo;
      case "santiago":
        return StockExchange.santiago;
      case "buenos aires":
        return StockExchange.buenosAires;

      case "tokyo":
        return StockExchange.tokyo;
      case "shanghai":
        return StockExchange.shanghai;
      case "shenzhen":
        return StockExchange.shenzhen;
      case "taiwan":
        return StockExchange.taiwan;
      case "taipei exchange":
        return StockExchange.taipeiExchange;
      case "kuala lumpur":
        return StockExchange.kualaLumpur;
      case "hkse":
        return StockExchange.hkse;
      case "kosdaq": // Korea
        return StockExchange.kosdaq;
      case "stock exchange of singapore":
        return StockExchange.stockExchangeOfSingapore;
      case "thailand":
        return StockExchange.thailand;
      case "jakarta stock exchange":
        return StockExchange.jakartaStockExchange;
      case "national stock exchange of india":
        return StockExchange.nationalStockExchangeOfIndia;
      case "bombay stock exchange":
      case "bse":
        return StockExchange.bombayStockExchange;
      case "mcx":
        return StockExchange.multiCommodityExchangeOfIndia;
      case "kse":
        return StockExchange.kse;

      case "australian securities exchange":
        return StockExchange.australianSecuritiesExchange;
      case "nzse":
        return StockExchange.nzse;

      case "johannesburg":
        return StockExchange.johannesburg;
      case "cai":
        return StockExchange.cairo;

      case "tel aviv":
        return StockExchange.telAviv;
      case "istanbul stock exchange":
        return StockExchange.istanbulStockExchange;
      case "dubai":
        return StockExchange.dubai;
      case "saudi":
        return StockExchange.saudi;
      case "qatar":
        return StockExchange.qatar;
      case "kuwait":
        return StockExchange.kuwait;

      case "london stock exchange":
        return StockExchange.londonStockExchange;
      case "aquis aqse":
        return StockExchange.aquisAqse;
      case "egx":
        return StockExchange.egx;
      case "xetra":
        return StockExchange.xetra;
      case "berlin":
        return StockExchange.berlin;
      case "hamburg":
        return StockExchange.hamburg;
      case "frankfurt stock exchange":
      case "frankfurt":
        return StockExchange.frankfurtStockExchange;
      case "munich":
        return StockExchange.munich;
      case "stuttgart":
        return StockExchange.stuttgart;
      case "dusseldorf":
        return StockExchange.dusseldorf;
      case "moscow stock exchange":
        return StockExchange.moscowStockExchange;
      case "amsterdam":
        return StockExchange.amsterdam;
      case "paris":
        return StockExchange.paris;
      case "prague":
        return StockExchange.prague;
      case "swiss exchange":
        return StockExchange.swissExchange;
      case "stockholm stock exchange":
        return StockExchange.stockholmStockExchange;
      case "oslo stock exchange":
        return StockExchange.osloStockExchange;
      case "brussels":
        return StockExchange.brussels;
      case "copenhagen":
        return StockExchange.copenhagen;
      case "milan":
        return StockExchange.milan;
      case "warsaw stock exchange":
        return StockExchange.warsawStockExchange;
      case "lisbon":
        return StockExchange.lisbon;
      case "vienna":
        return StockExchange.vienna;
      case "irish":
        return StockExchange.irish;
      case "madrid stock exchange":
        return StockExchange.madridStockExchange;
      case "athens":
        return StockExchange.athens;
      case "helsinki":
        return StockExchange.helsinki;
      case "budapest":
        return StockExchange.budapest;
      case "riga":
        return StockExchange.riga;
      case "iceland":
        return StockExchange.iceland;
      case "nordic growth market":
        return StockExchange.nordicGrowthMarket;
      case "ice":
        return StockExchange.icelandStockMarket;

      case "invalid":
        return StockExchange.invalid;
      default:
        if (logError) {
          errEnum(type: "StockExchange", input: input);
        }
        return StockExchange.invalid;
    }
  }
}

class _$InvalidCardIssuer extends StockExchangeValueObject {
  const _$InvalidCardIssuer()
      : super._(StockExchange.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum StockExchange {
  newYorkStockExchange,
  newYorkStockExchangeArca,

  nasdaq,
  nasdaqGlobalSelect,
  nasdaqGlobalMarket,
  nasdaqCapitalMarket,

  otherOtc,
  internationalOrderBook,
  americanStockExchange,
  cboe,
  cboeUs,
  cboeCanada,
  cboeEurope,

  torontoStockExchange,
  canadianSecuritiesExchange,
  torontoStockExchangeVentures,
  neo,
  tsxv,

  mexico,
  saoPaulo,
  santiago,
  buenosAires,

  tokyo,
  shanghai,
  shenzhen,
  taiwan,
  taipeiExchange,
  kualaLumpur,
  hkse,
  kosdaq,
  stockExchangeOfSingapore,
  thailand,
  jakartaStockExchange,
  nationalStockExchangeOfIndia,
  bombayStockExchange,
  multiCommodityExchangeOfIndia,
  kse, //Pakistan

  australianSecuritiesExchange,
  nzse,

  johannesburg,
  cairo,

  telAviv,
  istanbulStockExchange,
  dubai,
  saudi,
  qatar,
  kuwait,

  londonStockExchange,
  aquisAqse,
  egx,
  xetra,
  berlin,
  hamburg,
  frankfurtStockExchange,
  munich,
  stuttgart,
  dusseldorf,
  moscowStockExchange,
  amsterdam,
  paris,
  prague,
  swissExchange,
  stockholmStockExchange,
  osloStockExchange,
  brussels,
  copenhagen,
  milan,
  warsawStockExchange,
  lisbon,
  vienna,
  irish,
  madridStockExchange,
  athens,
  helsinki,
  budapest,
  riga,
  iceland,
  icelandStockMarket,
  nordicGrowthMarket,

  invalid,
}
