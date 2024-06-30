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
      case "nyse" || "amex":
        return StockExchange.newYorkStockExchange;
      case "new york stock exchange arca":
        return StockExchange.newYorkStockExchangeArca;
      case "etf":
        return StockExchange.cboeUs;
      case "euronext":
        return StockExchange.cboeEurope;

      case "nasdaq":
        return StockExchange.nasdaq;
      case "nasdaq global select":
        return StockExchange.nasdaqGlobalSelect;
      case "nasdaq global market":
        return StockExchange.nasdaqGlobalMarket;
      case "nasdaq capital market":
        return StockExchange.nasdaqCapitalMarket;
      case "other otc" || "otc":
        return StockExchange.otherOtc;
      case "international order book":
      case "iob":
        return StockExchange.internationalOrderBook;
      case "american stock exchange":
        return StockExchange.americanStockExchange;
      case "pnk":
        return StockExchange.pinkSheets;
      case "bats":
      case "cboe bzx" || "cboe":
        return StockExchange.cboe;
      case "cboe us":
        return StockExchange.cboeUs;
      case "cboe ca" || "cnq":
        return StockExchange.cboeCanada;
      case "cboe europe":
        return StockExchange.cboeEurope;

      case "toronto stock exchange" || "tsx":
        return StockExchange.torontoStockExchange;
      case "canadian securities exchange":
      case "canadian sec":
        return StockExchange.canadianSecuritiesExchange;
      case "toronto stock exchange ventures" || "tsxv":
        return StockExchange.torontoStockExchangeVentures;
      case "neo":
        return StockExchange.neo;

      case "mexico" || "mex":
        return StockExchange.mexico;
      case "são paulo" || "sao":
        return StockExchange.saoPaulo;
      case "santiago" || "sgo":
        return StockExchange.santiago;
      case "buenos aires" || "bue":
        return StockExchange.buenosAires;

      case "tokyo":
        return StockExchange.tokyo;
      case "shanghai" || "shh":
        return StockExchange.shanghai;
      case "shenzhen" || "shz":
        return StockExchange.shenzhen;
      case "taiwan" || "tai":
        return StockExchange.taiwan;
      case "taipei exchange" || "two":
        return StockExchange.taipeiExchange;
      case "kuala lumpur" || "kls":
        return StockExchange.kualaLumpur;
      case "hkse":
        return StockExchange.hkse;
      case "koe": // Korea
        return StockExchange.kosdaq;
      case "stock exchange of singapore" || "ses":
        return StockExchange.stockExchangeOfSingapore;
      case "thailand" || "set":
        return StockExchange.thailand;
      case "jakarta stock exchange" || "jkt":
        return StockExchange.jakartaStockExchange;
      case "national stock exchange of india" ||"nse":
        return StockExchange.nationalStockExchangeOfIndia;
      case "bombay stock exchange":
      case "bse":
        return StockExchange.bombayStockExchange;
      case "mcx":
        return StockExchange.multiCommodityExchangeOfIndia;
      case "kse":
        return StockExchange.kse;

      case "australian securities exchange" || "asx":
        return StockExchange.australianSecuritiesExchange;
      case "nzse":
        return StockExchange.nzse;

      case "johannesburg" || "jnb":
        return StockExchange.johannesburg;
      case "cai":
        return StockExchange.cairo;

      case "jpx":
        return StockExchange.tokyo;
      case "tel aviv" || "tlv":
        return StockExchange.telAviv;
      case "istanbul stock exchange" || "ist":
        return StockExchange.istanbulStockExchange;
      case "dubai" || "dfm":
        return StockExchange.dubai;
      case "saudi" || "sau":
        return StockExchange.saudi;
      case "qatar" || "doh":
        return StockExchange.qatar;
      case "ksc":
      case "kuwait" || "kuw":
        return StockExchange.kuwait;

      case "london stock exchange" || "lse":
        return StockExchange.londonStockExchange;
      case "aquis aqse" || "aqs":
        return StockExchange.aquisAqse;
      case "egx":
        return StockExchange.egx;
      case "xetra":
        return StockExchange.xetra;
      case "berlin" || "ber":
        return StockExchange.berlin;
      case "hamburg" || "ham":
        return StockExchange.hamburg;
      case "frankfurt stock exchange":
      case "frankfurt":
        return StockExchange.frankfurtStockExchange;
      case "munich" || "mun":
        return StockExchange.munich;
      case "stuttgart" || "stu":
        return StockExchange.stuttgart;
      case "dusseldorf" || "dus":
        return StockExchange.dusseldorf;
      case "moscow stock exchange" || "mcx":
        return StockExchange.moscowStockExchange;
      case "amsterdam" || "ams":
        return StockExchange.amsterdam;
      case "paris":
        return StockExchange.paris;
      case "prague" || "pra":
        return StockExchange.prague;
      case "swiss exchange" || "six":
        return StockExchange.swissExchange;
      case "stockholm stock exchange" || "sto":
        return StockExchange.stockholmStockExchange;
      case "oslo stock exchange" || "osl":
        return StockExchange.osloStockExchange;
      case "brussels" || "bru":
        return StockExchange.brussels;
      case "copenhagen" || "cph":
        return StockExchange.copenhagen;
      case "milan" || "mil":
        return StockExchange.milan;
      case "warsaw stock exchange" || "wse":
        return StockExchange.warsawStockExchange;
      case "lisbon":
        return StockExchange.lisbon;
      case "vienna" || "vie":
        return StockExchange.vienna;
      case "irish":
        return StockExchange.irish;
      case "madrid stock exchange" || "bme":
        return StockExchange.madridStockExchange;
      case "athens" || "ath":
        return StockExchange.athens;
      case "helsinki" || "hel":
        return StockExchange.helsinki;
      case "budapest" || "bud":
        return StockExchange.budapest;
      case "riga" ||"ris":
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
  americanExchangeTradedFund,
  pinkSheets,
  cboe,
  cboeUs,
  cboeCanada,
  cboeEurope,

  torontoStockExchange,
  canadianSecuritiesExchange,
  torontoStockExchangeVentures,
  neo,

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
