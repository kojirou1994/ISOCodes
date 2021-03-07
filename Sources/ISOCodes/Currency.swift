public enum Currency: UInt16, Identifiable, CaseIterable, Codable {

  case aed = 784
  case afn = 971
  case all = 008
  case amd = 051
  case ang = 532
  case aoa = 973
  case ars = 032
  case aud = 036
  case awg = 533
  case azn = 944
  case bam = 977
  case bbd = 052
  case bdt = 050
  case bgn = 975
  case bhd = 048
  case bif = 108
  case bmd = 060
  case bnd = 096
  case bob = 068
  case bov = 984
  case brl = 986
  case bsd = 044
  case btn = 064
  case bwp = 072
  case byn = 933
  case bzd = 084
  case cad = 124
  case cdf = 976
  case che = 947
  case chf = 756
  case chw = 948
  case clf = 990
  case clp = 152
  case cny = 156
  case cop = 170
  case cou = 970
  case crc = 188
  case cuc = 931
  case cup = 192
  case cve = 132
  case czk = 203
  case djf = 262
  case dkk = 208
  case dop = 214
  case dzd = 012
  case egp = 818
  case ern = 232
  case etb = 230
  case eur = 978
  case fjd = 242
  case fkp = 238
  case gbp = 826
  case gel = 981
  case ghs = 936
  case gip = 292
  case gmd = 270
  case gnf = 324
  case gtq = 320
  case gyd = 328
  case hkd = 344
  case hnl = 340
  case hrk = 191
  case htg = 332
  case huf = 348
  case idr = 360
  case ils = 376
  case inr = 356
  case iqd = 368
  case irr = 364
  case isk = 352
  case jmd = 388
  case jod = 400
  case jpy = 392
  case kes = 404
  case kgs = 417
  case khr = 116
  case kmf = 174
  case kpw = 408
  case krw = 410
  case kwd = 414
  case kyd = 136
  case kzt = 398
  case lak = 418
  case lbp = 422
  case lkr = 144
  case lrd = 430
  case lsl = 426
  case lyd = 434
  case mad = 504
  case mdl = 498
  case mga = 969
  case mkd = 807
  case mmk = 104
  case mnt = 496
  case mop = 446
  case mru = 929
  case mur = 480
  case mvr = 462
  case mwk = 454
  case mxn = 484
  case mxv = 979
  case myr = 458
  case mzn = 943
  case nad = 516
  case ngn = 566
  case nio = 558
  case nok = 578
  case npr = 524
  case nzd = 554
  case omr = 512
  case pab = 590
  case pen = 604
  case pgk = 598
  case php = 608
  case pkr = 586
  case pln = 985
  case pyg = 600
  case qar = 634
  case ron = 946
  case rsd = 941
  case rub = 643
  case rwf = 646
  case sar = 682
  case sbd = 090
  case scr = 690
  case sdg = 938
  case sek = 752
  case sgd = 702
  case shp = 654
  case sll = 694
  case sos = 706
  case srd = 968
  case ssp = 728
  case stn = 930
  case svc = 222
  case syp = 760
  case szl = 748
  case thb = 764
  case tjs = 972
  case tmt = 934
  case tnd = 788
  case top = 776
  case `try` = 949
  case ttd = 780
  case twd = 901
  case tzs = 834
  case uah = 980
  case ugx = 800
  case usd = 840
  case usn = 997
  case uyi = 940
  case uyu = 858
  case uzs = 860
  case vef = 937
  case vnd = 704
  case vuv = 548
  case wst = 882
  case xaf = 950
  case xcd = 951
  case xdr = 960
  case xof = 952
  case xpf = 953
  case xsu = 994
  case xua = 965
  case yer = 886
  case zar = 710
  case zmw = 967
  case zwl = 932

  public init?(code: String) {
    guard let asciiUIntCode = code.threeCharToUInt32 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x616564: self = .aed
    case 0x61666e: self = .afn
    case 0x616c6c: self = .all
    case 0x616d64: self = .amd
    case 0x616e67: self = .ang
    case 0x616f61: self = .aoa
    case 0x617273: self = .ars
    case 0x617564: self = .aud
    case 0x617767: self = .awg
    case 0x617a6e: self = .azn
    case 0x62616d: self = .bam
    case 0x626264: self = .bbd
    case 0x626474: self = .bdt
    case 0x62676e: self = .bgn
    case 0x626864: self = .bhd
    case 0x626966: self = .bif
    case 0x626d64: self = .bmd
    case 0x626e64: self = .bnd
    case 0x626f62: self = .bob
    case 0x626f76: self = .bov
    case 0x62726c: self = .brl
    case 0x627364: self = .bsd
    case 0x62746e: self = .btn
    case 0x627770: self = .bwp
    case 0x62796e: self = .byn
    case 0x627a64: self = .bzd
    case 0x636164: self = .cad
    case 0x636466: self = .cdf
    case 0x636865: self = .che
    case 0x636866: self = .chf
    case 0x636877: self = .chw
    case 0x636c66: self = .clf
    case 0x636c70: self = .clp
    case 0x636e79: self = .cny
    case 0x636f70: self = .cop
    case 0x636f75: self = .cou
    case 0x637263: self = .crc
    case 0x637563: self = .cuc
    case 0x637570: self = .cup
    case 0x637665: self = .cve
    case 0x637a6b: self = .czk
    case 0x646a66: self = .djf
    case 0x646b6b: self = .dkk
    case 0x646f70: self = .dop
    case 0x647a64: self = .dzd
    case 0x656770: self = .egp
    case 0x65726e: self = .ern
    case 0x657462: self = .etb
    case 0x657572: self = .eur
    case 0x666a64: self = .fjd
    case 0x666b70: self = .fkp
    case 0x676270: self = .gbp
    case 0x67656c: self = .gel
    case 0x676873: self = .ghs
    case 0x676970: self = .gip
    case 0x676d64: self = .gmd
    case 0x676e66: self = .gnf
    case 0x677471: self = .gtq
    case 0x677964: self = .gyd
    case 0x686b64: self = .hkd
    case 0x686e6c: self = .hnl
    case 0x68726b: self = .hrk
    case 0x687467: self = .htg
    case 0x687566: self = .huf
    case 0x696472: self = .idr
    case 0x696c73: self = .ils
    case 0x696e72: self = .inr
    case 0x697164: self = .iqd
    case 0x697272: self = .irr
    case 0x69736b: self = .isk
    case 0x6a6d64: self = .jmd
    case 0x6a6f64: self = .jod
    case 0x6a7079: self = .jpy
    case 0x6b6573: self = .kes
    case 0x6b6773: self = .kgs
    case 0x6b6872: self = .khr
    case 0x6b6d66: self = .kmf
    case 0x6b7077: self = .kpw
    case 0x6b7277: self = .krw
    case 0x6b7764: self = .kwd
    case 0x6b7964: self = .kyd
    case 0x6b7a74: self = .kzt
    case 0x6c616b: self = .lak
    case 0x6c6270: self = .lbp
    case 0x6c6b72: self = .lkr
    case 0x6c7264: self = .lrd
    case 0x6c736c: self = .lsl
    case 0x6c7964: self = .lyd
    case 0x6d6164: self = .mad
    case 0x6d646c: self = .mdl
    case 0x6d6761: self = .mga
    case 0x6d6b64: self = .mkd
    case 0x6d6d6b: self = .mmk
    case 0x6d6e74: self = .mnt
    case 0x6d6f70: self = .mop
    case 0x6d7275: self = .mru
    case 0x6d7572: self = .mur
    case 0x6d7672: self = .mvr
    case 0x6d776b: self = .mwk
    case 0x6d786e: self = .mxn
    case 0x6d7876: self = .mxv
    case 0x6d7972: self = .myr
    case 0x6d7a6e: self = .mzn
    case 0x6e6164: self = .nad
    case 0x6e676e: self = .ngn
    case 0x6e696f: self = .nio
    case 0x6e6f6b: self = .nok
    case 0x6e7072: self = .npr
    case 0x6e7a64: self = .nzd
    case 0x6f6d72: self = .omr
    case 0x706162: self = .pab
    case 0x70656e: self = .pen
    case 0x70676b: self = .pgk
    case 0x706870: self = .php
    case 0x706b72: self = .pkr
    case 0x706c6e: self = .pln
    case 0x707967: self = .pyg
    case 0x716172: self = .qar
    case 0x726f6e: self = .ron
    case 0x727364: self = .rsd
    case 0x727562: self = .rub
    case 0x727766: self = .rwf
    case 0x736172: self = .sar
    case 0x736264: self = .sbd
    case 0x736372: self = .scr
    case 0x736467: self = .sdg
    case 0x73656b: self = .sek
    case 0x736764: self = .sgd
    case 0x736870: self = .shp
    case 0x736c6c: self = .sll
    case 0x736f73: self = .sos
    case 0x737264: self = .srd
    case 0x737370: self = .ssp
    case 0x73746e: self = .stn
    case 0x737663: self = .svc
    case 0x737970: self = .syp
    case 0x737a6c: self = .szl
    case 0x746862: self = .thb
    case 0x746a73: self = .tjs
    case 0x746d74: self = .tmt
    case 0x746e64: self = .tnd
    case 0x746f70: self = .top
    case 0x747279: self = .`try`
    case 0x747464: self = .ttd
    case 0x747764: self = .twd
    case 0x747a73: self = .tzs
    case 0x756168: self = .uah
    case 0x756778: self = .ugx
    case 0x757364: self = .usd
    case 0x75736e: self = .usn
    case 0x757969: self = .uyi
    case 0x757975: self = .uyu
    case 0x757a73: self = .uzs
    case 0x766566: self = .vef
    case 0x766e64: self = .vnd
    case 0x767576: self = .vuv
    case 0x777374: self = .wst
    case 0x786166: self = .xaf
    case 0x786364: self = .xcd
    case 0x786472: self = .xdr
    case 0x786f66: self = .xof
    case 0x787066: self = .xpf
    case 0x787375: self = .xsu
    case 0x787561: self = .xua
    case 0x796572: self = .yer
    case 0x7a6172: self = .zar
    case 0x7a6d77: self = .zmw
    case 0x7a776c: self = .zwl
    default: return nil
    }
  }

  public var id: Self { self }
  public var numericCode: UInt16 { rawValue }

  public var name: String {
    switch self {
    case .aed: return "UAE Dirham"
    case .afn: return "Afghani"
    case .all: return "Lek"
    case .amd: return "Armenian Dram"
    case .ang: return "Netherlands Antillean Guilder"
    case .aoa: return "Kwanza"
    case .ars: return "Argentine Peso"
    case .aud: return "Australian Dollar"
    case .awg: return "Aruban Florin"
    case .azn: return "Azerbaijanian Manat"
    case .bam: return "Convertible Mark"
    case .bbd: return "Barbados Dollar"
    case .bdt: return "Taka"
    case .bgn: return "Bulgarian Lev"
    case .bhd: return "Bahraini Dinar"
    case .bif: return "Burundi Franc"
    case .bmd: return "Bermudian Dollar"
    case .bnd: return "Brunei Dollar"
    case .bob: return "Boliviano"
    case .bov: return "Mvdol"
    case .brl: return "Brazilian Real"
    case .bsd: return "Bahamian Dollar"
    case .btn: return "Ngultrum"
    case .bwp: return "Pula"
    case .byn: return "Belarussian Ruble"
    case .bzd: return "Belize Dollar"
    case .cad: return "Canadian Dollar"
    case .cdf: return "Congolese Franc"
    case .che: return "WIR Euro"
    case .chf: return "Swiss Franc"
    case .chw: return "WIR Franc"
    case .clf: return "Unidad de Fomento"
    case .clp: return "Chilean Peso"
    case .cny: return "Yuan Renminbi"
    case .cop: return "Colombian Peso"
    case .cou: return "Unidad de Valor Real"
    case .crc: return "Costa Rican Colon"
    case .cuc: return "Peso Convertible"
    case .cup: return "Cuban Peso"
    case .cve: return "Cabo Verde Escudo"
    case .czk: return "Czech Koruna"
    case .djf: return "Djibouti Franc"
    case .dkk: return "Danish Krone"
    case .dop: return "Dominican Peso"
    case .dzd: return "Algerian Dinar"
    case .egp: return "Egyptian Pound"
    case .ern: return "Nakfa"
    case .etb: return "Ethiopian Birr"
    case .eur: return "Euro"
    case .fjd: return "Fiji Dollar"
    case .fkp: return "Falkland Islands Pound"
    case .gbp: return "Pound Sterling"
    case .gel: return "Lari"
    case .ghs: return "Ghana Cedi"
    case .gip: return "Gibraltar Pound"
    case .gmd: return "Dalasi"
    case .gnf: return "Guinea Franc"
    case .gtq: return "Quetzal"
    case .gyd: return "Guyana Dollar"
    case .hkd: return "Hong Kong Dollar"
    case .hnl: return "Lempira"
    case .hrk: return "Kuna"
    case .htg: return "Gourde"
    case .huf: return "Forint"
    case .idr: return "Rupiah"
    case .ils: return "New Israeli Sheqel"
    case .inr: return "Indian Rupee"
    case .iqd: return "Iraqi Dinar"
    case .irr: return "Iranian Rial"
    case .isk: return "Iceland Krona"
    case .jmd: return "Jamaican Dollar"
    case .jod: return "Jordanian Dinar"
    case .jpy: return "Yen"
    case .kes: return "Kenyan Shilling"
    case .kgs: return "Som"
    case .khr: return "Riel"
    case .kmf: return "Comoro Franc"
    case .kpw: return "North Korean Won"
    case .krw: return "Won"
    case .kwd: return "Kuwaiti Dinar"
    case .kyd: return "Cayman Islands Dollar"
    case .kzt: return "Tenge"
    case .lak: return "Kip"
    case .lbp: return "Lebanese Pound"
    case .lkr: return "Sri Lanka Rupee"
    case .lrd: return "Liberian Dollar"
    case .lsl: return "Loti"
    case .lyd: return "Libyan Dinar"
    case .mad: return "Moroccan Dirham"
    case .mdl: return "Moldovan Leu"
    case .mga: return "Malagasy Ariary"
    case .mkd: return "Denar"
    case .mmk: return "Kyat"
    case .mnt: return "Tugrik"
    case .mop: return "Pataca"
    case .mru: return "Ouguiya"
    case .mur: return "Mauritius Rupee"
    case .mvr: return "Rufiyaa"
    case .mwk: return "Kwacha"
    case .mxn: return "Mexican Peso"
    case .mxv: return "Mexican Unidad de Inversion (UDI)"
    case .myr: return "Malaysian Ringgit"
    case .mzn: return "Mozambique Metical"
    case .nad: return "Namibia Dollar"
    case .ngn: return "Naira"
    case .nio: return "Cordoba Oro"
    case .nok: return "Norwegian Krone"
    case .npr: return "Nepalese Rupee"
    case .nzd: return "New Zealand Dollar"
    case .omr: return "Rial Omani"
    case .pab: return "Balboa"
    case .pen: return "Nuevo Sol"
    case .pgk: return "Kina"
    case .php: return "Philippine Peso"
    case .pkr: return "Pakistan Rupee"
    case .pln: return "Zloty"
    case .pyg: return "Guarani"
    case .qar: return "Qatari Rial"
    case .ron: return "Romanian Leu"
    case .rsd: return "Serbian Dinar"
    case .rub: return "Russian Ruble"
    case .rwf: return "Rwanda Franc"
    case .sar: return "Saudi Riyal"
    case .sbd: return "Solomon Islands Dollar"
    case .scr: return "Seychelles Rupee"
    case .sdg: return "Sudanese Pound"
    case .sek: return "Swedish Krona"
    case .sgd: return "Singapore Dollar"
    case .shp: return "Saint Helena Pound"
    case .sll: return "Leone"
    case .sos: return "Somali Shilling"
    case .srd: return "Surinam Dollar"
    case .ssp: return "South Sudanese Pound"
    case .stn: return "Dobra"
    case .svc: return "El Salvador Colon"
    case .syp: return "Syrian Pound"
    case .szl: return "Lilangeni"
    case .thb: return "Baht"
    case .tjs: return "Somoni"
    case .tmt: return "Turkmenistan New Manat"
    case .tnd: return "Tunisian Dinar"
    case .top: return "Pa’anga"
    case .`try`: return "Turkish Lira"
    case .ttd: return "Trinidad and Tobago Dollar"
    case .twd: return "New Taiwan Dollar"
    case .tzs: return "Tanzanian Shilling"
    case .uah: return "Hryvnia"
    case .ugx: return "Uganda Shilling"
    case .usd: return "US Dollar"
    case .usn: return "US Dollar (Next day)"
    case .uyi: return "Uruguay Peso en Unidades Indexadas (URUIURUI)"
    case .uyu: return "Peso Uruguayo"
    case .uzs: return "Uzbekistan Sum"
    case .vef: return "Bolivar"
    case .vnd: return "Dong"
    case .vuv: return "Vatu"
    case .wst: return "Tala"
    case .xaf: return "CFA Franc BEAC"
    case .xcd: return "East Caribbean Dollar"
    case .xdr: return "SDR (Special Drawing Right)"
    case .xof: return "CFA Franc BCEAO"
    case .xpf: return "CFP Franc"
    case .xsu: return "Sucre"
    case .xua: return "ADB Unit of Account"
    case .yer: return "Yemeni Rial"
    case .zar: return "Rand"
    case .zmw: return "Zambian Kwacha"
    case .zwl: return "Zimbabwe Dollar"

    }
  }

  public var code: String {
    switch self {
    case .aed: return "aed"
    case .afn: return "afn"
    case .all: return "all"
    case .amd: return "amd"
    case .ang: return "ang"
    case .aoa: return "aoa"
    case .ars: return "ars"
    case .aud: return "aud"
    case .awg: return "awg"
    case .azn: return "azn"
    case .bam: return "bam"
    case .bbd: return "bbd"
    case .bdt: return "bdt"
    case .bgn: return "bgn"
    case .bhd: return "bhd"
    case .bif: return "bif"
    case .bmd: return "bmd"
    case .bnd: return "bnd"
    case .bob: return "bob"
    case .bov: return "bov"
    case .brl: return "brl"
    case .bsd: return "bsd"
    case .btn: return "btn"
    case .bwp: return "bwp"
    case .byn: return "byn"
    case .bzd: return "bzd"
    case .cad: return "cad"
    case .cdf: return "cdf"
    case .che: return "che"
    case .chf: return "chf"
    case .chw: return "chw"
    case .clf: return "clf"
    case .clp: return "clp"
    case .cny: return "cny"
    case .cop: return "cop"
    case .cou: return "cou"
    case .crc: return "crc"
    case .cuc: return "cuc"
    case .cup: return "cup"
    case .cve: return "cve"
    case .czk: return "czk"
    case .djf: return "djf"
    case .dkk: return "dkk"
    case .dop: return "dop"
    case .dzd: return "dzd"
    case .egp: return "egp"
    case .ern: return "ern"
    case .etb: return "etb"
    case .eur: return "eur"
    case .fjd: return "fjd"
    case .fkp: return "fkp"
    case .gbp: return "gbp"
    case .gel: return "gel"
    case .ghs: return "ghs"
    case .gip: return "gip"
    case .gmd: return "gmd"
    case .gnf: return "gnf"
    case .gtq: return "gtq"
    case .gyd: return "gyd"
    case .hkd: return "hkd"
    case .hnl: return "hnl"
    case .hrk: return "hrk"
    case .htg: return "htg"
    case .huf: return "huf"
    case .idr: return "idr"
    case .ils: return "ils"
    case .inr: return "inr"
    case .iqd: return "iqd"
    case .irr: return "irr"
    case .isk: return "isk"
    case .jmd: return "jmd"
    case .jod: return "jod"
    case .jpy: return "jpy"
    case .kes: return "kes"
    case .kgs: return "kgs"
    case .khr: return "khr"
    case .kmf: return "kmf"
    case .kpw: return "kpw"
    case .krw: return "krw"
    case .kwd: return "kwd"
    case .kyd: return "kyd"
    case .kzt: return "kzt"
    case .lak: return "lak"
    case .lbp: return "lbp"
    case .lkr: return "lkr"
    case .lrd: return "lrd"
    case .lsl: return "lsl"
    case .lyd: return "lyd"
    case .mad: return "mad"
    case .mdl: return "mdl"
    case .mga: return "mga"
    case .mkd: return "mkd"
    case .mmk: return "mmk"
    case .mnt: return "mnt"
    case .mop: return "mop"
    case .mru: return "mru"
    case .mur: return "mur"
    case .mvr: return "mvr"
    case .mwk: return "mwk"
    case .mxn: return "mxn"
    case .mxv: return "mxv"
    case .myr: return "myr"
    case .mzn: return "mzn"
    case .nad: return "nad"
    case .ngn: return "ngn"
    case .nio: return "nio"
    case .nok: return "nok"
    case .npr: return "npr"
    case .nzd: return "nzd"
    case .omr: return "omr"
    case .pab: return "pab"
    case .pen: return "pen"
    case .pgk: return "pgk"
    case .php: return "php"
    case .pkr: return "pkr"
    case .pln: return "pln"
    case .pyg: return "pyg"
    case .qar: return "qar"
    case .ron: return "ron"
    case .rsd: return "rsd"
    case .rub: return "rub"
    case .rwf: return "rwf"
    case .sar: return "sar"
    case .sbd: return "sbd"
    case .scr: return "scr"
    case .sdg: return "sdg"
    case .sek: return "sek"
    case .sgd: return "sgd"
    case .shp: return "shp"
    case .sll: return "sll"
    case .sos: return "sos"
    case .srd: return "srd"
    case .ssp: return "ssp"
    case .stn: return "stn"
    case .svc: return "svc"
    case .syp: return "syp"
    case .szl: return "szl"
    case .thb: return "thb"
    case .tjs: return "tjs"
    case .tmt: return "tmt"
    case .tnd: return "tnd"
    case .top: return "top"
    case .`try`: return "try"
    case .ttd: return "ttd"
    case .twd: return "twd"
    case .tzs: return "tzs"
    case .uah: return "uah"
    case .ugx: return "ugx"
    case .usd: return "usd"
    case .usn: return "usn"
    case .uyi: return "uyi"
    case .uyu: return "uyu"
    case .uzs: return "uzs"
    case .vef: return "vef"
    case .vnd: return "vnd"
    case .vuv: return "vuv"
    case .wst: return "wst"
    case .xaf: return "xaf"
    case .xcd: return "xcd"
    case .xdr: return "xdr"
    case .xof: return "xof"
    case .xpf: return "xpf"
    case .xsu: return "xsu"
    case .xua: return "xua"
    case .yer: return "yer"
    case .zar: return "zar"
    case .zmw: return "zmw"
    case .zwl: return "zwl"

    }
  }

}
