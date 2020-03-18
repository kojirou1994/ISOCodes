public enum Currency: UInt16, Identifiable, CaseIterable, Codable {

  case AED = 784
  case AFN = 971
  case ALL = 008
  case AMD = 051
  case ANG = 532
  case AOA = 973
  case ARS = 032
  case AUD = 036
  case AWG = 533
  case AZN = 944
  case BAM = 977
  case BBD = 052
  case BDT = 050
  case BGN = 975
  case BHD = 048
  case BIF = 108
  case BMD = 060
  case BND = 096
  case BOB = 068
  case BOV = 984
  case BRL = 986
  case BSD = 044
  case BTN = 064
  case BWP = 072
  case BYN = 933
  case BZD = 084
  case CAD = 124
  case CDF = 976
  case CHE = 947
  case CHF = 756
  case CHW = 948
  case CLF = 990
  case CLP = 152
  case CNY = 156
  case COP = 170
  case COU = 970
  case CRC = 188
  case CUC = 931
  case CUP = 192
  case CVE = 132
  case CZK = 203
  case DJF = 262
  case DKK = 208
  case DOP = 214
  case DZD = 012
  case EGP = 818
  case ERN = 232
  case ETB = 230
  case EUR = 978
  case FJD = 242
  case FKP = 238
  case GBP = 826
  case GEL = 981
  case GHS = 936
  case GIP = 292
  case GMD = 270
  case GNF = 324
  case GTQ = 320
  case GYD = 328
  case HKD = 344
  case HNL = 340
  case HRK = 191
  case HTG = 332
  case HUF = 348
  case IDR = 360
  case ILS = 376
  case INR = 356
  case IQD = 368
  case IRR = 364
  case ISK = 352
  case JMD = 388
  case JOD = 400
  case JPY = 392
  case KES = 404
  case KGS = 417
  case KHR = 116
  case KMF = 174
  case KPW = 408
  case KRW = 410
  case KWD = 414
  case KYD = 136
  case KZT = 398
  case LAK = 418
  case LBP = 422
  case LKR = 144
  case LRD = 430
  case LSL = 426
  case LYD = 434
  case MAD = 504
  case MDL = 498
  case MGA = 969
  case MKD = 807
  case MMK = 104
  case MNT = 496
  case MOP = 446
  case MRU = 929
  case MUR = 480
  case MVR = 462
  case MWK = 454
  case MXN = 484
  case MXV = 979
  case MYR = 458
  case MZN = 943
  case NAD = 516
  case NGN = 566
  case NIO = 558
  case NOK = 578
  case NPR = 524
  case NZD = 554
  case OMR = 512
  case PAB = 590
  case PEN = 604
  case PGK = 598
  case PHP = 608
  case PKR = 586
  case PLN = 985
  case PYG = 600
  case QAR = 634
  case RON = 946
  case RSD = 941
  case RUB = 643
  case RWF = 646
  case SAR = 682
  case SBD = 090
  case SCR = 690
  case SDG = 938
  case SEK = 752
  case SGD = 702
  case SHP = 654
  case SLL = 694
  case SOS = 706
  case SRD = 968
  case SSP = 728
  case STN = 930
  case SVC = 222
  case SYP = 760
  case SZL = 748
  case THB = 764
  case TJS = 972
  case TMT = 934
  case TND = 788
  case TOP = 776
  case TRY = 949
  case TTD = 780
  case TWD = 901
  case TZS = 834
  case UAH = 980
  case UGX = 800
  case USD = 840
  case USN = 997
  case UYI = 940
  case UYU = 858
  case UZS = 860
  case VEF = 937
  case VND = 704
  case VUV = 548
  case WST = 882
  case XAF = 950
  case XCD = 951
  case XDR = 960
  case XOF = 952
  case XPF = 953
  case XSU = 994
  case XUA = 965
  case YER = 886
  case ZAR = 710
  case ZMW = 967
  case ZWL = 932

  public init?(code: String) {
    guard code.utf8.count == 3 else {
      return nil
    }
    switch code.uppercased() {
    case "AED": self = .AED
    case "AFN": self = .AFN
    case "ALL": self = .ALL
    case "AMD": self = .AMD
    case "ANG": self = .ANG
    case "AOA": self = .AOA
    case "ARS": self = .ARS
    case "AUD": self = .AUD
    case "AWG": self = .AWG
    case "AZN": self = .AZN
    case "BAM": self = .BAM
    case "BBD": self = .BBD
    case "BDT": self = .BDT
    case "BGN": self = .BGN
    case "BHD": self = .BHD
    case "BIF": self = .BIF
    case "BMD": self = .BMD
    case "BND": self = .BND
    case "BOB": self = .BOB
    case "BOV": self = .BOV
    case "BRL": self = .BRL
    case "BSD": self = .BSD
    case "BTN": self = .BTN
    case "BWP": self = .BWP
    case "BYN": self = .BYN
    case "BZD": self = .BZD
    case "CAD": self = .CAD
    case "CDF": self = .CDF
    case "CHE": self = .CHE
    case "CHF": self = .CHF
    case "CHW": self = .CHW
    case "CLF": self = .CLF
    case "CLP": self = .CLP
    case "CNY": self = .CNY
    case "COP": self = .COP
    case "COU": self = .COU
    case "CRC": self = .CRC
    case "CUC": self = .CUC
    case "CUP": self = .CUP
    case "CVE": self = .CVE
    case "CZK": self = .CZK
    case "DJF": self = .DJF
    case "DKK": self = .DKK
    case "DOP": self = .DOP
    case "DZD": self = .DZD
    case "EGP": self = .EGP
    case "ERN": self = .ERN
    case "ETB": self = .ETB
    case "EUR": self = .EUR
    case "FJD": self = .FJD
    case "FKP": self = .FKP
    case "GBP": self = .GBP
    case "GEL": self = .GEL
    case "GHS": self = .GHS
    case "GIP": self = .GIP
    case "GMD": self = .GMD
    case "GNF": self = .GNF
    case "GTQ": self = .GTQ
    case "GYD": self = .GYD
    case "HKD": self = .HKD
    case "HNL": self = .HNL
    case "HRK": self = .HRK
    case "HTG": self = .HTG
    case "HUF": self = .HUF
    case "IDR": self = .IDR
    case "ILS": self = .ILS
    case "INR": self = .INR
    case "IQD": self = .IQD
    case "IRR": self = .IRR
    case "ISK": self = .ISK
    case "JMD": self = .JMD
    case "JOD": self = .JOD
    case "JPY": self = .JPY
    case "KES": self = .KES
    case "KGS": self = .KGS
    case "KHR": self = .KHR
    case "KMF": self = .KMF
    case "KPW": self = .KPW
    case "KRW": self = .KRW
    case "KWD": self = .KWD
    case "KYD": self = .KYD
    case "KZT": self = .KZT
    case "LAK": self = .LAK
    case "LBP": self = .LBP
    case "LKR": self = .LKR
    case "LRD": self = .LRD
    case "LSL": self = .LSL
    case "LYD": self = .LYD
    case "MAD": self = .MAD
    case "MDL": self = .MDL
    case "MGA": self = .MGA
    case "MKD": self = .MKD
    case "MMK": self = .MMK
    case "MNT": self = .MNT
    case "MOP": self = .MOP
    case "MRU": self = .MRU
    case "MUR": self = .MUR
    case "MVR": self = .MVR
    case "MWK": self = .MWK
    case "MXN": self = .MXN
    case "MXV": self = .MXV
    case "MYR": self = .MYR
    case "MZN": self = .MZN
    case "NAD": self = .NAD
    case "NGN": self = .NGN
    case "NIO": self = .NIO
    case "NOK": self = .NOK
    case "NPR": self = .NPR
    case "NZD": self = .NZD
    case "OMR": self = .OMR
    case "PAB": self = .PAB
    case "PEN": self = .PEN
    case "PGK": self = .PGK
    case "PHP": self = .PHP
    case "PKR": self = .PKR
    case "PLN": self = .PLN
    case "PYG": self = .PYG
    case "QAR": self = .QAR
    case "RON": self = .RON
    case "RSD": self = .RSD
    case "RUB": self = .RUB
    case "RWF": self = .RWF
    case "SAR": self = .SAR
    case "SBD": self = .SBD
    case "SCR": self = .SCR
    case "SDG": self = .SDG
    case "SEK": self = .SEK
    case "SGD": self = .SGD
    case "SHP": self = .SHP
    case "SLL": self = .SLL
    case "SOS": self = .SOS
    case "SRD": self = .SRD
    case "SSP": self = .SSP
    case "STN": self = .STN
    case "SVC": self = .SVC
    case "SYP": self = .SYP
    case "SZL": self = .SZL
    case "THB": self = .THB
    case "TJS": self = .TJS
    case "TMT": self = .TMT
    case "TND": self = .TND
    case "TOP": self = .TOP
    case "TRY": self = .TRY
    case "TTD": self = .TTD
    case "TWD": self = .TWD
    case "TZS": self = .TZS
    case "UAH": self = .UAH
    case "UGX": self = .UGX
    case "USD": self = .USD
    case "USN": self = .USN
    case "UYI": self = .UYI
    case "UYU": self = .UYU
    case "UZS": self = .UZS
    case "VEF": self = .VEF
    case "VND": self = .VND
    case "VUV": self = .VUV
    case "WST": self = .WST
    case "XAF": self = .XAF
    case "XCD": self = .XCD
    case "XDR": self = .XDR
    case "XOF": self = .XOF
    case "XPF": self = .XPF
    case "XSU": self = .XSU
    case "XUA": self = .XUA
    case "YER": self = .YER
    case "ZAR": self = .ZAR
    case "ZMW": self = .ZMW
    case "ZWL": self = .ZWL
    default: return nil
    }
  }

  public var id: Self { self }
  public var numericCode: UInt16 { rawValue }

  public var name: String {
    switch self {
    case .AED: return "UAE Dirham"
    case .AFN: return "Afghani"
    case .ALL: return "Lek"
    case .AMD: return "Armenian Dram"
    case .ANG: return "Netherlands Antillean Guilder"
    case .AOA: return "Kwanza"
    case .ARS: return "Argentine Peso"
    case .AUD: return "Australian Dollar"
    case .AWG: return "Aruban Florin"
    case .AZN: return "Azerbaijanian Manat"
    case .BAM: return "Convertible Mark"
    case .BBD: return "Barbados Dollar"
    case .BDT: return "Taka"
    case .BGN: return "Bulgarian Lev"
    case .BHD: return "Bahraini Dinar"
    case .BIF: return "Burundi Franc"
    case .BMD: return "Bermudian Dollar"
    case .BND: return "Brunei Dollar"
    case .BOB: return "Boliviano"
    case .BOV: return "Mvdol"
    case .BRL: return "Brazilian Real"
    case .BSD: return "Bahamian Dollar"
    case .BTN: return "Ngultrum"
    case .BWP: return "Pula"
    case .BYN: return "Belarussian Ruble"
    case .BZD: return "Belize Dollar"
    case .CAD: return "Canadian Dollar"
    case .CDF: return "Congolese Franc"
    case .CHE: return "WIR Euro"
    case .CHF: return "Swiss Franc"
    case .CHW: return "WIR Franc"
    case .CLF: return "Unidad de Fomento"
    case .CLP: return "Chilean Peso"
    case .CNY: return "Yuan Renminbi"
    case .COP: return "Colombian Peso"
    case .COU: return "Unidad de Valor Real"
    case .CRC: return "Costa Rican Colon"
    case .CUC: return "Peso Convertible"
    case .CUP: return "Cuban Peso"
    case .CVE: return "Cabo Verde Escudo"
    case .CZK: return "Czech Koruna"
    case .DJF: return "Djibouti Franc"
    case .DKK: return "Danish Krone"
    case .DOP: return "Dominican Peso"
    case .DZD: return "Algerian Dinar"
    case .EGP: return "Egyptian Pound"
    case .ERN: return "Nakfa"
    case .ETB: return "Ethiopian Birr"
    case .EUR: return "Euro"
    case .FJD: return "Fiji Dollar"
    case .FKP: return "Falkland Islands Pound"
    case .GBP: return "Pound Sterling"
    case .GEL: return "Lari"
    case .GHS: return "Ghana Cedi"
    case .GIP: return "Gibraltar Pound"
    case .GMD: return "Dalasi"
    case .GNF: return "Guinea Franc"
    case .GTQ: return "Quetzal"
    case .GYD: return "Guyana Dollar"
    case .HKD: return "Hong Kong Dollar"
    case .HNL: return "Lempira"
    case .HRK: return "Kuna"
    case .HTG: return "Gourde"
    case .HUF: return "Forint"
    case .IDR: return "Rupiah"
    case .ILS: return "New Israeli Sheqel"
    case .INR: return "Indian Rupee"
    case .IQD: return "Iraqi Dinar"
    case .IRR: return "Iranian Rial"
    case .ISK: return "Iceland Krona"
    case .JMD: return "Jamaican Dollar"
    case .JOD: return "Jordanian Dinar"
    case .JPY: return "Yen"
    case .KES: return "Kenyan Shilling"
    case .KGS: return "Som"
    case .KHR: return "Riel"
    case .KMF: return "Comoro Franc"
    case .KPW: return "North Korean Won"
    case .KRW: return "Won"
    case .KWD: return "Kuwaiti Dinar"
    case .KYD: return "Cayman Islands Dollar"
    case .KZT: return "Tenge"
    case .LAK: return "Kip"
    case .LBP: return "Lebanese Pound"
    case .LKR: return "Sri Lanka Rupee"
    case .LRD: return "Liberian Dollar"
    case .LSL: return "Loti"
    case .LYD: return "Libyan Dinar"
    case .MAD: return "Moroccan Dirham"
    case .MDL: return "Moldovan Leu"
    case .MGA: return "Malagasy Ariary"
    case .MKD: return "Denar"
    case .MMK: return "Kyat"
    case .MNT: return "Tugrik"
    case .MOP: return "Pataca"
    case .MRU: return "Ouguiya"
    case .MUR: return "Mauritius Rupee"
    case .MVR: return "Rufiyaa"
    case .MWK: return "Kwacha"
    case .MXN: return "Mexican Peso"
    case .MXV: return "Mexican Unidad de Inversion (UDI)"
    case .MYR: return "Malaysian Ringgit"
    case .MZN: return "Mozambique Metical"
    case .NAD: return "Namibia Dollar"
    case .NGN: return "Naira"
    case .NIO: return "Cordoba Oro"
    case .NOK: return "Norwegian Krone"
    case .NPR: return "Nepalese Rupee"
    case .NZD: return "New Zealand Dollar"
    case .OMR: return "Rial Omani"
    case .PAB: return "Balboa"
    case .PEN: return "Nuevo Sol"
    case .PGK: return "Kina"
    case .PHP: return "Philippine Peso"
    case .PKR: return "Pakistan Rupee"
    case .PLN: return "Zloty"
    case .PYG: return "Guarani"
    case .QAR: return "Qatari Rial"
    case .RON: return "Romanian Leu"
    case .RSD: return "Serbian Dinar"
    case .RUB: return "Russian Ruble"
    case .RWF: return "Rwanda Franc"
    case .SAR: return "Saudi Riyal"
    case .SBD: return "Solomon Islands Dollar"
    case .SCR: return "Seychelles Rupee"
    case .SDG: return "Sudanese Pound"
    case .SEK: return "Swedish Krona"
    case .SGD: return "Singapore Dollar"
    case .SHP: return "Saint Helena Pound"
    case .SLL: return "Leone"
    case .SOS: return "Somali Shilling"
    case .SRD: return "Surinam Dollar"
    case .SSP: return "South Sudanese Pound"
    case .STN: return "Dobra"
    case .SVC: return "El Salvador Colon"
    case .SYP: return "Syrian Pound"
    case .SZL: return "Lilangeni"
    case .THB: return "Baht"
    case .TJS: return "Somoni"
    case .TMT: return "Turkmenistan New Manat"
    case .TND: return "Tunisian Dinar"
    case .TOP: return "Pa’anga"
    case .TRY: return "Turkish Lira"
    case .TTD: return "Trinidad and Tobago Dollar"
    case .TWD: return "New Taiwan Dollar"
    case .TZS: return "Tanzanian Shilling"
    case .UAH: return "Hryvnia"
    case .UGX: return "Uganda Shilling"
    case .USD: return "US Dollar"
    case .USN: return "US Dollar (Next day)"
    case .UYI: return "Uruguay Peso en Unidades Indexadas (URUIURUI)"
    case .UYU: return "Peso Uruguayo"
    case .UZS: return "Uzbekistan Sum"
    case .VEF: return "Bolivar"
    case .VND: return "Dong"
    case .VUV: return "Vatu"
    case .WST: return "Tala"
    case .XAF: return "CFA Franc BEAC"
    case .XCD: return "East Caribbean Dollar"
    case .XDR: return "SDR (Special Drawing Right)"
    case .XOF: return "CFA Franc BCEAO"
    case .XPF: return "CFP Franc"
    case .XSU: return "Sucre"
    case .XUA: return "ADB Unit of Account"
    case .YER: return "Yemeni Rial"
    case .ZAR: return "Rand"
    case .ZMW: return "Zambian Kwacha"
    case .ZWL: return "Zimbabwe Dollar"
    }
  }

  public var code: String {
    switch self {
    case .AED: return "AED"
    case .AFN: return "AFN"
    case .ALL: return "ALL"
    case .AMD: return "AMD"
    case .ANG: return "ANG"
    case .AOA: return "AOA"
    case .ARS: return "ARS"
    case .AUD: return "AUD"
    case .AWG: return "AWG"
    case .AZN: return "AZN"
    case .BAM: return "BAM"
    case .BBD: return "BBD"
    case .BDT: return "BDT"
    case .BGN: return "BGN"
    case .BHD: return "BHD"
    case .BIF: return "BIF"
    case .BMD: return "BMD"
    case .BND: return "BND"
    case .BOB: return "BOB"
    case .BOV: return "BOV"
    case .BRL: return "BRL"
    case .BSD: return "BSD"
    case .BTN: return "BTN"
    case .BWP: return "BWP"
    case .BYN: return "BYN"
    case .BZD: return "BZD"
    case .CAD: return "CAD"
    case .CDF: return "CDF"
    case .CHE: return "CHE"
    case .CHF: return "CHF"
    case .CHW: return "CHW"
    case .CLF: return "CLF"
    case .CLP: return "CLP"
    case .CNY: return "CNY"
    case .COP: return "COP"
    case .COU: return "COU"
    case .CRC: return "CRC"
    case .CUC: return "CUC"
    case .CUP: return "CUP"
    case .CVE: return "CVE"
    case .CZK: return "CZK"
    case .DJF: return "DJF"
    case .DKK: return "DKK"
    case .DOP: return "DOP"
    case .DZD: return "DZD"
    case .EGP: return "EGP"
    case .ERN: return "ERN"
    case .ETB: return "ETB"
    case .EUR: return "EUR"
    case .FJD: return "FJD"
    case .FKP: return "FKP"
    case .GBP: return "GBP"
    case .GEL: return "GEL"
    case .GHS: return "GHS"
    case .GIP: return "GIP"
    case .GMD: return "GMD"
    case .GNF: return "GNF"
    case .GTQ: return "GTQ"
    case .GYD: return "GYD"
    case .HKD: return "HKD"
    case .HNL: return "HNL"
    case .HRK: return "HRK"
    case .HTG: return "HTG"
    case .HUF: return "HUF"
    case .IDR: return "IDR"
    case .ILS: return "ILS"
    case .INR: return "INR"
    case .IQD: return "IQD"
    case .IRR: return "IRR"
    case .ISK: return "ISK"
    case .JMD: return "JMD"
    case .JOD: return "JOD"
    case .JPY: return "JPY"
    case .KES: return "KES"
    case .KGS: return "KGS"
    case .KHR: return "KHR"
    case .KMF: return "KMF"
    case .KPW: return "KPW"
    case .KRW: return "KRW"
    case .KWD: return "KWD"
    case .KYD: return "KYD"
    case .KZT: return "KZT"
    case .LAK: return "LAK"
    case .LBP: return "LBP"
    case .LKR: return "LKR"
    case .LRD: return "LRD"
    case .LSL: return "LSL"
    case .LYD: return "LYD"
    case .MAD: return "MAD"
    case .MDL: return "MDL"
    case .MGA: return "MGA"
    case .MKD: return "MKD"
    case .MMK: return "MMK"
    case .MNT: return "MNT"
    case .MOP: return "MOP"
    case .MRU: return "MRU"
    case .MUR: return "MUR"
    case .MVR: return "MVR"
    case .MWK: return "MWK"
    case .MXN: return "MXN"
    case .MXV: return "MXV"
    case .MYR: return "MYR"
    case .MZN: return "MZN"
    case .NAD: return "NAD"
    case .NGN: return "NGN"
    case .NIO: return "NIO"
    case .NOK: return "NOK"
    case .NPR: return "NPR"
    case .NZD: return "NZD"
    case .OMR: return "OMR"
    case .PAB: return "PAB"
    case .PEN: return "PEN"
    case .PGK: return "PGK"
    case .PHP: return "PHP"
    case .PKR: return "PKR"
    case .PLN: return "PLN"
    case .PYG: return "PYG"
    case .QAR: return "QAR"
    case .RON: return "RON"
    case .RSD: return "RSD"
    case .RUB: return "RUB"
    case .RWF: return "RWF"
    case .SAR: return "SAR"
    case .SBD: return "SBD"
    case .SCR: return "SCR"
    case .SDG: return "SDG"
    case .SEK: return "SEK"
    case .SGD: return "SGD"
    case .SHP: return "SHP"
    case .SLL: return "SLL"
    case .SOS: return "SOS"
    case .SRD: return "SRD"
    case .SSP: return "SSP"
    case .STN: return "STN"
    case .SVC: return "SVC"
    case .SYP: return "SYP"
    case .SZL: return "SZL"
    case .THB: return "THB"
    case .TJS: return "TJS"
    case .TMT: return "TMT"
    case .TND: return "TND"
    case .TOP: return "TOP"
    case .TRY: return "TRY"
    case .TTD: return "TTD"
    case .TWD: return "TWD"
    case .TZS: return "TZS"
    case .UAH: return "UAH"
    case .UGX: return "UGX"
    case .USD: return "USD"
    case .USN: return "USN"
    case .UYI: return "UYI"
    case .UYU: return "UYU"
    case .UZS: return "UZS"
    case .VEF: return "VEF"
    case .VND: return "VND"
    case .VUV: return "VUV"
    case .WST: return "WST"
    case .XAF: return "XAF"
    case .XCD: return "XCD"
    case .XDR: return "XDR"
    case .XOF: return "XOF"
    case .XPF: return "XPF"
    case .XSU: return "XSU"
    case .XUA: return "XUA"
    case .YER: return "YER"
    case .ZAR: return "ZAR"
    case .ZMW: return "ZMW"
    case .ZWL: return "ZWL"
    }
  }

}
