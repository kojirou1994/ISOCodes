public enum Country: UInt16, Identifiable, CaseIterable, Codable {

  case abw = 533
  case afg = 004
  case ago = 024
  case aia = 660
  case ala = 248
  case alb = 008
  case and = 020
  case are = 784
  case arg = 032
  case arm = 051
  case asm = 016
  case ata = 010
  case atf = 260
  case atg = 028
  case aus = 036
  case aut = 040
  case aze = 031
  case bdi = 108
  case bel = 056
  case ben = 204
  case bes = 535
  case bfa = 854
  case bgd = 050
  case bgr = 100
  case bhr = 048
  case bhs = 044
  case bih = 070
  case blm = 652
  case blr = 112
  case blz = 084
  case bmu = 060
  case bol = 068
  case bra = 076
  case brb = 052
  case brn = 096
  case btn = 064
  case bvt = 074
  case bwa = 072
  case caf = 140
  case can = 124
  case cck = 166
  case che = 756
  case chl = 152
  case chn = 156
  case civ = 384
  case cmr = 120
  case cod = 180
  case cog = 178
  case cok = 184
  case col = 170
  case com = 174
  case cpv = 132
  case cri = 188
  case cub = 192
  case cuw = 531
  case cxr = 162
  case cym = 136
  case cyp = 196
  case cze = 203
  case deu = 276
  case dji = 262
  case dma = 212
  case dnk = 208
  case dom = 214
  case dza = 012
  case ecu = 218
  case egy = 818
  case eri = 232
  case esh = 732
  case esp = 724
  case est = 233
  case eth = 231
  case fin = 246
  case fji = 242
  case flk = 238
  case fra = 250
  case fro = 234
  case fsm = 583
  case gab = 266
  case gbr = 826
  case geo = 268
  case ggy = 831
  case gha = 288
  case gib = 292
  case gin = 324
  case glp = 312
  case gmb = 270
  case gnb = 624
  case gnq = 226
  case grc = 300
  case grd = 308
  case grl = 304
  case gtm = 320
  case guf = 254
  case gum = 316
  case guy = 328
  case hkg = 344
  case hmd = 334
  case hnd = 340
  case hrv = 191
  case hti = 332
  case hun = 348
  case idn = 360
  case imn = 833
  case ind = 356
  case iot = 086
  case irl = 372
  case irn = 364
  case irq = 368
  case isl = 352
  case isr = 376
  case ita = 380
  case jam = 388
  case jey = 832
  case jor = 400
  case jpn = 392
  case kaz = 398
  case ken = 404
  case kgz = 417
  case khm = 116
  case kir = 296
  case kna = 659
  case kor = 410
  case kwt = 414
  case lao = 418
  case lbn = 422
  case lbr = 430
  case lby = 434
  case lca = 662
  case lie = 438
  case lka = 144
  case lso = 426
  case ltu = 440
  case lux = 442
  case lva = 428
  case mac = 446
  case maf = 663
  case mar = 504
  case mco = 492
  case mda = 498
  case mdg = 450
  case mdv = 462
  case mex = 484
  case mhl = 584
  case mkd = 807
  case mli = 466
  case mlt = 470
  case mmr = 104
  case mne = 499
  case mng = 496
  case mnp = 580
  case moz = 508
  case mrt = 478
  case msr = 500
  case mtq = 474
  case mus = 480
  case mwi = 454
  case mys = 458
  case myt = 175
  case nam = 516
  case ncl = 540
  case ner = 562
  case nfk = 574
  case nga = 566
  case nic = 558
  case niu = 570
  case nld = 528
  case nor = 578
  case npl = 524
  case nru = 520
  case nzl = 554
  case omn = 512
  case pak = 586
  case pan = 591
  case pcn = 612
  case per = 604
  case phl = 608
  case plw = 585
  case png = 598
  case pol = 616
  case pri = 630
  case prk = 408
  case prt = 620
  case pry = 600
  case pse = 275
  case pyf = 258
  case qat = 634
  case reu = 638
  case rou = 642
  case rus = 643
  case rwa = 646
  case sau = 682
  case sdn = 729
  case sen = 686
  case sgp = 702
  case sgs = 239
  case shn = 654
  case sjm = 744
  case slb = 090
  case sle = 694
  case slv = 222
  case smr = 674
  case som = 706
  case spm = 666
  case srb = 688
  case ssd = 728
  case stp = 678
  case sur = 740
  case svk = 703
  case svn = 705
  case swe = 752
  case swz = 748
  case sxm = 534
  case syc = 690
  case syr = 760
  case tca = 796
  case tcd = 148
  case tgo = 768
  case tha = 764
  case tjk = 762
  case tkl = 772
  case tkm = 795
  case tls = 626
  case ton = 776
  case tto = 780
  case tun = 788
  case tur = 792
  case tuv = 798
  case twn = 158
  case tza = 834
  case uga = 800
  case ukr = 804
  case umi = 581
  case ury = 858
  case usa = 840
  case uzb = 860
  case vat = 336
  case vct = 670
  case ven = 862
  case vgb = 092
  case vir = 850
  case vnm = 704
  case vut = 548
  case wlf = 876
  case wsm = 882
  case yem = 887
  case zaf = 710
  case zmb = 894
  case zwe = 716

  public var id: Self { self }
  public var numericCode: UInt16 { rawValue }

  public init?(alpha2Code: String) {
    guard alpha2Code.utf8.count == 2 else {
      return nil
    }
    switch alpha2Code.lowercased() {
    case "aw": self = .abw
    case "af": self = .afg
    case "ao": self = .ago
    case "ai": self = .aia
    case "ax": self = .ala
    case "al": self = .alb
    case "ad": self = .and
    case "ae": self = .are
    case "ar": self = .arg
    case "am": self = .arm
    case "as": self = .asm
    case "aq": self = .ata
    case "tf": self = .atf
    case "ag": self = .atg
    case "au": self = .aus
    case "at": self = .aut
    case "az": self = .aze
    case "bi": self = .bdi
    case "be": self = .bel
    case "bj": self = .ben
    case "bq": self = .bes
    case "bf": self = .bfa
    case "bd": self = .bgd
    case "bg": self = .bgr
    case "bh": self = .bhr
    case "bs": self = .bhs
    case "ba": self = .bih
    case "bl": self = .blm
    case "by": self = .blr
    case "bz": self = .blz
    case "bm": self = .bmu
    case "bo": self = .bol
    case "br": self = .bra
    case "bb": self = .brb
    case "bn": self = .brn
    case "bt": self = .btn
    case "bv": self = .bvt
    case "bw": self = .bwa
    case "cf": self = .caf
    case "ca": self = .can
    case "cc": self = .cck
    case "ch": self = .che
    case "cl": self = .chl
    case "cn": self = .chn
    case "ci": self = .civ
    case "cm": self = .cmr
    case "cd": self = .cod
    case "cg": self = .cog
    case "ck": self = .cok
    case "co": self = .col
    case "km": self = .com
    case "cv": self = .cpv
    case "cr": self = .cri
    case "cu": self = .cub
    case "cw": self = .cuw
    case "cx": self = .cxr
    case "ky": self = .cym
    case "cy": self = .cyp
    case "cz": self = .cze
    case "de": self = .deu
    case "dj": self = .dji
    case "dm": self = .dma
    case "dk": self = .dnk
    case "do": self = .dom
    case "dz": self = .dza
    case "ec": self = .ecu
    case "eg": self = .egy
    case "er": self = .eri
    case "eh": self = .esh
    case "es": self = .esp
    case "ee": self = .est
    case "et": self = .eth
    case "fi": self = .fin
    case "fj": self = .fji
    case "fk": self = .flk
    case "fr": self = .fra
    case "fo": self = .fro
    case "fm": self = .fsm
    case "ga": self = .gab
    case "gb": self = .gbr
    case "ge": self = .geo
    case "gg": self = .ggy
    case "gh": self = .gha
    case "gi": self = .gib
    case "gn": self = .gin
    case "gp": self = .glp
    case "gm": self = .gmb
    case "gw": self = .gnb
    case "gq": self = .gnq
    case "gr": self = .grc
    case "gd": self = .grd
    case "gl": self = .grl
    case "gt": self = .gtm
    case "gf": self = .guf
    case "gu": self = .gum
    case "gy": self = .guy
    case "hk": self = .hkg
    case "hm": self = .hmd
    case "hn": self = .hnd
    case "hr": self = .hrv
    case "ht": self = .hti
    case "hu": self = .hun
    case "id": self = .idn
    case "im": self = .imn
    case "in": self = .ind
    case "io": self = .iot
    case "ie": self = .irl
    case "ir": self = .irn
    case "iq": self = .irq
    case "is": self = .isl
    case "il": self = .isr
    case "it": self = .ita
    case "jm": self = .jam
    case "je": self = .jey
    case "jo": self = .jor
    case "jp": self = .jpn
    case "kz": self = .kaz
    case "ke": self = .ken
    case "kg": self = .kgz
    case "kh": self = .khm
    case "ki": self = .kir
    case "kn": self = .kna
    case "kr": self = .kor
    case "kw": self = .kwt
    case "la": self = .lao
    case "lb": self = .lbn
    case "lr": self = .lbr
    case "ly": self = .lby
    case "lc": self = .lca
    case "li": self = .lie
    case "lk": self = .lka
    case "ls": self = .lso
    case "lt": self = .ltu
    case "lu": self = .lux
    case "lv": self = .lva
    case "mo": self = .mac
    case "mf": self = .maf
    case "ma": self = .mar
    case "mc": self = .mco
    case "md": self = .mda
    case "mg": self = .mdg
    case "mv": self = .mdv
    case "mx": self = .mex
    case "mh": self = .mhl
    case "mk": self = .mkd
    case "ml": self = .mli
    case "mt": self = .mlt
    case "mm": self = .mmr
    case "me": self = .mne
    case "mn": self = .mng
    case "mp": self = .mnp
    case "mz": self = .moz
    case "mr": self = .mrt
    case "ms": self = .msr
    case "mq": self = .mtq
    case "mu": self = .mus
    case "mw": self = .mwi
    case "my": self = .mys
    case "yt": self = .myt
    case "na": self = .nam
    case "nc": self = .ncl
    case "ne": self = .ner
    case "nf": self = .nfk
    case "ng": self = .nga
    case "ni": self = .nic
    case "nu": self = .niu
    case "nl": self = .nld
    case "no": self = .nor
    case "np": self = .npl
    case "nr": self = .nru
    case "nz": self = .nzl
    case "om": self = .omn
    case "pk": self = .pak
    case "pa": self = .pan
    case "pn": self = .pcn
    case "pe": self = .per
    case "ph": self = .phl
    case "pw": self = .plw
    case "pg": self = .png
    case "pl": self = .pol
    case "pr": self = .pri
    case "kp": self = .prk
    case "pt": self = .prt
    case "py": self = .pry
    case "ps": self = .pse
    case "pf": self = .pyf
    case "qa": self = .qat
    case "re": self = .reu
    case "ro": self = .rou
    case "ru": self = .rus
    case "rw": self = .rwa
    case "sa": self = .sau
    case "sd": self = .sdn
    case "sn": self = .sen
    case "sg": self = .sgp
    case "gs": self = .sgs
    case "sh": self = .shn
    case "sj": self = .sjm
    case "sb": self = .slb
    case "sl": self = .sle
    case "sv": self = .slv
    case "sm": self = .smr
    case "so": self = .som
    case "pm": self = .spm
    case "rs": self = .srb
    case "ss": self = .ssd
    case "st": self = .stp
    case "sr": self = .sur
    case "sk": self = .svk
    case "si": self = .svn
    case "se": self = .swe
    case "sz": self = .swz
    case "sx": self = .sxm
    case "sc": self = .syc
    case "sy": self = .syr
    case "tc": self = .tca
    case "td": self = .tcd
    case "tg": self = .tgo
    case "th": self = .tha
    case "tj": self = .tjk
    case "tk": self = .tkl
    case "tm": self = .tkm
    case "tl": self = .tls
    case "to": self = .ton
    case "tt": self = .tto
    case "tn": self = .tun
    case "tr": self = .tur
    case "tv": self = .tuv
    case "tw": self = .twn
    case "tz": self = .tza
    case "ug": self = .uga
    case "ua": self = .ukr
    case "um": self = .umi
    case "uy": self = .ury
    case "us": self = .usa
    case "uz": self = .uzb
    case "va": self = .vat
    case "vc": self = .vct
    case "ve": self = .ven
    case "vg": self = .vgb
    case "vi": self = .vir
    case "vn": self = .vnm
    case "vu": self = .vut
    case "wf": self = .wlf
    case "ws": self = .wsm
    case "ye": self = .yem
    case "za": self = .zaf
    case "zm": self = .zmb
    case "zw": self = .zwe
    default: return nil
    }
  }

  public init?(alpha3Code: String) {
    guard alpha3Code.utf8.count == 3 else {
      return nil
    }
    switch alpha3Code.lowercased() {
    case "abw": self = .abw
    case "afg": self = .afg
    case "ago": self = .ago
    case "aia": self = .aia
    case "ala": self = .ala
    case "alb": self = .alb
    case "and": self = .and
    case "are": self = .are
    case "arg": self = .arg
    case "arm": self = .arm
    case "asm": self = .asm
    case "ata": self = .ata
    case "atf": self = .atf
    case "atg": self = .atg
    case "aus": self = .aus
    case "aut": self = .aut
    case "aze": self = .aze
    case "bdi": self = .bdi
    case "bel": self = .bel
    case "ben": self = .ben
    case "bes": self = .bes
    case "bfa": self = .bfa
    case "bgd": self = .bgd
    case "bgr": self = .bgr
    case "bhr": self = .bhr
    case "bhs": self = .bhs
    case "bih": self = .bih
    case "blm": self = .blm
    case "blr": self = .blr
    case "blz": self = .blz
    case "bmu": self = .bmu
    case "bol": self = .bol
    case "bra": self = .bra
    case "brb": self = .brb
    case "brn": self = .brn
    case "btn": self = .btn
    case "bvt": self = .bvt
    case "bwa": self = .bwa
    case "caf": self = .caf
    case "can": self = .can
    case "cck": self = .cck
    case "che": self = .che
    case "chl": self = .chl
    case "chn": self = .chn
    case "civ": self = .civ
    case "cmr": self = .cmr
    case "cod": self = .cod
    case "cog": self = .cog
    case "cok": self = .cok
    case "col": self = .col
    case "com": self = .com
    case "cpv": self = .cpv
    case "cri": self = .cri
    case "cub": self = .cub
    case "cuw": self = .cuw
    case "cxr": self = .cxr
    case "cym": self = .cym
    case "cyp": self = .cyp
    case "cze": self = .cze
    case "deu": self = .deu
    case "dji": self = .dji
    case "dma": self = .dma
    case "dnk": self = .dnk
    case "dom": self = .dom
    case "dza": self = .dza
    case "ecu": self = .ecu
    case "egy": self = .egy
    case "eri": self = .eri
    case "esh": self = .esh
    case "esp": self = .esp
    case "est": self = .est
    case "eth": self = .eth
    case "fin": self = .fin
    case "fji": self = .fji
    case "flk": self = .flk
    case "fra": self = .fra
    case "fro": self = .fro
    case "fsm": self = .fsm
    case "gab": self = .gab
    case "gbr": self = .gbr
    case "geo": self = .geo
    case "ggy": self = .ggy
    case "gha": self = .gha
    case "gib": self = .gib
    case "gin": self = .gin
    case "glp": self = .glp
    case "gmb": self = .gmb
    case "gnb": self = .gnb
    case "gnq": self = .gnq
    case "grc": self = .grc
    case "grd": self = .grd
    case "grl": self = .grl
    case "gtm": self = .gtm
    case "guf": self = .guf
    case "gum": self = .gum
    case "guy": self = .guy
    case "hkg": self = .hkg
    case "hmd": self = .hmd
    case "hnd": self = .hnd
    case "hrv": self = .hrv
    case "hti": self = .hti
    case "hun": self = .hun
    case "idn": self = .idn
    case "imn": self = .imn
    case "ind": self = .ind
    case "iot": self = .iot
    case "irl": self = .irl
    case "irn": self = .irn
    case "irq": self = .irq
    case "isl": self = .isl
    case "isr": self = .isr
    case "ita": self = .ita
    case "jam": self = .jam
    case "jey": self = .jey
    case "jor": self = .jor
    case "jpn": self = .jpn
    case "kaz": self = .kaz
    case "ken": self = .ken
    case "kgz": self = .kgz
    case "khm": self = .khm
    case "kir": self = .kir
    case "kna": self = .kna
    case "kor": self = .kor
    case "kwt": self = .kwt
    case "lao": self = .lao
    case "lbn": self = .lbn
    case "lbr": self = .lbr
    case "lby": self = .lby
    case "lca": self = .lca
    case "lie": self = .lie
    case "lka": self = .lka
    case "lso": self = .lso
    case "ltu": self = .ltu
    case "lux": self = .lux
    case "lva": self = .lva
    case "mac": self = .mac
    case "maf": self = .maf
    case "mar": self = .mar
    case "mco": self = .mco
    case "mda": self = .mda
    case "mdg": self = .mdg
    case "mdv": self = .mdv
    case "mex": self = .mex
    case "mhl": self = .mhl
    case "mkd": self = .mkd
    case "mli": self = .mli
    case "mlt": self = .mlt
    case "mmr": self = .mmr
    case "mne": self = .mne
    case "mng": self = .mng
    case "mnp": self = .mnp
    case "moz": self = .moz
    case "mrt": self = .mrt
    case "msr": self = .msr
    case "mtq": self = .mtq
    case "mus": self = .mus
    case "mwi": self = .mwi
    case "mys": self = .mys
    case "myt": self = .myt
    case "nam": self = .nam
    case "ncl": self = .ncl
    case "ner": self = .ner
    case "nfk": self = .nfk
    case "nga": self = .nga
    case "nic": self = .nic
    case "niu": self = .niu
    case "nld": self = .nld
    case "nor": self = .nor
    case "npl": self = .npl
    case "nru": self = .nru
    case "nzl": self = .nzl
    case "omn": self = .omn
    case "pak": self = .pak
    case "pan": self = .pan
    case "pcn": self = .pcn
    case "per": self = .per
    case "phl": self = .phl
    case "plw": self = .plw
    case "png": self = .png
    case "pol": self = .pol
    case "pri": self = .pri
    case "prk": self = .prk
    case "prt": self = .prt
    case "pry": self = .pry
    case "pse": self = .pse
    case "pyf": self = .pyf
    case "qat": self = .qat
    case "reu": self = .reu
    case "rou": self = .rou
    case "rus": self = .rus
    case "rwa": self = .rwa
    case "sau": self = .sau
    case "sdn": self = .sdn
    case "sen": self = .sen
    case "sgp": self = .sgp
    case "sgs": self = .sgs
    case "shn": self = .shn
    case "sjm": self = .sjm
    case "slb": self = .slb
    case "sle": self = .sle
    case "slv": self = .slv
    case "smr": self = .smr
    case "som": self = .som
    case "spm": self = .spm
    case "srb": self = .srb
    case "ssd": self = .ssd
    case "stp": self = .stp
    case "sur": self = .sur
    case "svk": self = .svk
    case "svn": self = .svn
    case "swe": self = .swe
    case "swz": self = .swz
    case "sxm": self = .sxm
    case "syc": self = .syc
    case "syr": self = .syr
    case "tca": self = .tca
    case "tcd": self = .tcd
    case "tgo": self = .tgo
    case "tha": self = .tha
    case "tjk": self = .tjk
    case "tkl": self = .tkl
    case "tkm": self = .tkm
    case "tls": self = .tls
    case "ton": self = .ton
    case "tto": self = .tto
    case "tun": self = .tun
    case "tur": self = .tur
    case "tuv": self = .tuv
    case "twn": self = .twn
    case "tza": self = .tza
    case "uga": self = .uga
    case "ukr": self = .ukr
    case "umi": self = .umi
    case "ury": self = .ury
    case "usa": self = .usa
    case "uzb": self = .uzb
    case "vat": self = .vat
    case "vct": self = .vct
    case "ven": self = .ven
    case "vgb": self = .vgb
    case "vir": self = .vir
    case "vnm": self = .vnm
    case "vut": self = .vut
    case "wlf": self = .wlf
    case "wsm": self = .wsm
    case "yem": self = .yem
    case "zaf": self = .zaf
    case "zmb": self = .zmb
    case "zwe": self = .zwe
    default: return nil
    }
  }

  public var name: String {
    switch self {
    case .abw: return "Aruba"
    case .afg: return "Afghanistan"
    case .ago: return "Angola"
    case .aia: return "Anguilla"
    case .ala: return "Åland Islands"
    case .alb: return "Albania"
    case .and: return "Andorra"
    case .are: return "United Arab Emirates (the)"
    case .arg: return "Argentina"
    case .arm: return "Armenia"
    case .asm: return "American Samoa"
    case .ata: return "Antarctica"
    case .atf: return "French Southern Territories (the)"
    case .atg: return "Antigua and Barbuda"
    case .aus: return "Australia"
    case .aut: return "Austria"
    case .aze: return "Azerbaijan"
    case .bdi: return "Burundi"
    case .bel: return "Belgium"
    case .ben: return "Benin"
    case .bes: return "Bonaire, Sint Eustatius and Saba"
    case .bfa: return "Burkina Faso"
    case .bgd: return "Bangladesh"
    case .bgr: return "Bulgaria"
    case .bhr: return "Bahrain"
    case .bhs: return "Bahamas (the)"
    case .bih: return "Bosnia and Herzegovina"
    case .blm: return "Saint Barthélemy"
    case .blr: return "Belarus"
    case .blz: return "Belize"
    case .bmu: return "Bermuda"
    case .bol: return "Bolivia (Plurinational State of)"
    case .bra: return "Brazil"
    case .brb: return "Barbados"
    case .brn: return "Brunei Darussalam"
    case .btn: return "Bhutan"
    case .bvt: return "Bouvet Island"
    case .bwa: return "Botswana"
    case .caf: return "Central African Republic (the)"
    case .can: return "Canada"
    case .cck: return "Cocos (Keeling) Islands (the)"
    case .che: return "Switzerland"
    case .chl: return "Chile"
    case .chn: return "China"
    case .civ: return "Côte d'Ivoire"
    case .cmr: return "Cameroon"
    case .cod: return "Congo (the Democratic Republic of the)"
    case .cog: return "Congo (the)"
    case .cok: return "Cook Islands (the)"
    case .col: return "Colombia"
    case .com: return "Comoros (the)"
    case .cpv: return "Cabo Verde"
    case .cri: return "Costa Rica"
    case .cub: return "Cuba"
    case .cuw: return "Curaçao"
    case .cxr: return "Christmas Island"
    case .cym: return "Cayman Islands (the)"
    case .cyp: return "Cyprus"
    case .cze: return "Czechia"
    case .deu: return "Germany"
    case .dji: return "Djibouti"
    case .dma: return "Dominica"
    case .dnk: return "Denmark"
    case .dom: return "Dominican Republic (the)"
    case .dza: return "Algeria"
    case .ecu: return "Ecuador"
    case .egy: return "Egypt"
    case .eri: return "Eritrea"
    case .esh: return "Western Sahara"
    case .esp: return "Spain"
    case .est: return "Estonia"
    case .eth: return "Ethiopia"
    case .fin: return "Finland"
    case .fji: return "Fiji"
    case .flk: return "Falkland Islands (the) [Malvinas]"
    case .fra: return "France"
    case .fro: return "Faroe Islands (the)"
    case .fsm: return "Micronesia (Federated States of)"
    case .gab: return "Gabon"
    case .gbr: return "United Kingdom of Great Britain and Northern Ireland (the)"
    case .geo: return "Georgia"
    case .ggy: return "Guernsey"
    case .gha: return "Ghana"
    case .gib: return "Gibraltar"
    case .gin: return "Guinea"
    case .glp: return "Guadeloupe"
    case .gmb: return "Gambia (the)"
    case .gnb: return "Guinea-Bissau"
    case .gnq: return "Equatorial Guinea"
    case .grc: return "Greece"
    case .grd: return "Grenada"
    case .grl: return "Greenland"
    case .gtm: return "Guatemala"
    case .guf: return "French Guiana"
    case .gum: return "Guam"
    case .guy: return "Guyana"
    case .hkg: return "Hong Kong"
    case .hmd: return "Heard Island and McDonald Islands"
    case .hnd: return "Honduras"
    case .hrv: return "Croatia"
    case .hti: return "Haiti"
    case .hun: return "Hungary"
    case .idn: return "Indonesia"
    case .imn: return "Isle of Man"
    case .ind: return "India"
    case .iot: return "British Indian Ocean Territory (the)"
    case .irl: return "Ireland"
    case .irn: return "Iran (Islamic Republic of)"
    case .irq: return "Iraq"
    case .isl: return "Iceland"
    case .isr: return "Israel"
    case .ita: return "Italy"
    case .jam: return "Jamaica"
    case .jey: return "Jersey"
    case .jor: return "Jordan"
    case .jpn: return "Japan"
    case .kaz: return "Kazakhstan"
    case .ken: return "Kenya"
    case .kgz: return "Kyrgyzstan"
    case .khm: return "Cambodia"
    case .kir: return "Kiribati"
    case .kna: return "Saint Kitts and Nevis"
    case .kor: return "Korea (the Republic of)"
    case .kwt: return "Kuwait"
    case .lao: return "Lao People's Democratic Republic (the)"
    case .lbn: return "Lebanon"
    case .lbr: return "Liberia"
    case .lby: return "Libya"
    case .lca: return "Saint Lucia"
    case .lie: return "Liechtenstein"
    case .lka: return "Sri Lanka"
    case .lso: return "Lesotho"
    case .ltu: return "Lithuania"
    case .lux: return "Luxembourg"
    case .lva: return "Latvia"
    case .mac: return "Macao"
    case .maf: return "Saint Martin (French part)"
    case .mar: return "Morocco"
    case .mco: return "Monaco"
    case .mda: return "Moldova (the Republic of)"
    case .mdg: return "Madagascar"
    case .mdv: return "Maldives"
    case .mex: return "Mexico"
    case .mhl: return "Marshall Islands (the)"
    case .mkd: return "Republic of North Macedonia"
    case .mli: return "Mali"
    case .mlt: return "Malta"
    case .mmr: return "Myanmar"
    case .mne: return "Montenegro"
    case .mng: return "Mongolia"
    case .mnp: return "Northern Mariana Islands (the)"
    case .moz: return "Mozambique"
    case .mrt: return "Mauritania"
    case .msr: return "Montserrat"
    case .mtq: return "Martinique"
    case .mus: return "Mauritius"
    case .mwi: return "Malawi"
    case .mys: return "Malaysia"
    case .myt: return "Mayotte"
    case .nam: return "Namibia"
    case .ncl: return "New Caledonia"
    case .ner: return "Niger (the)"
    case .nfk: return "Norfolk Island"
    case .nga: return "Nigeria"
    case .nic: return "Nicaragua"
    case .niu: return "Niue"
    case .nld: return "Netherlands (the)"
    case .nor: return "Norway"
    case .npl: return "Nepal"
    case .nru: return "Nauru"
    case .nzl: return "New Zealand"
    case .omn: return "Oman"
    case .pak: return "Pakistan"
    case .pan: return "Panama"
    case .pcn: return "Pitcairn"
    case .per: return "Peru"
    case .phl: return "Philippines (the)"
    case .plw: return "Palau"
    case .png: return "Papua New Guinea"
    case .pol: return "Poland"
    case .pri: return "Puerto Rico"
    case .prk: return "Korea (the Democratic People's Republic of)"
    case .prt: return "Portugal"
    case .pry: return "Paraguay"
    case .pse: return "Palestine, State of"
    case .pyf: return "French Polynesia"
    case .qat: return "Qatar"
    case .reu: return "Réunion"
    case .rou: return "Romania"
    case .rus: return "Russian Federation (the)"
    case .rwa: return "Rwanda"
    case .sau: return "Saudi Arabia"
    case .sdn: return "Sudan (the)"
    case .sen: return "Senegal"
    case .sgp: return "Singapore"
    case .sgs: return "South Georgia and the South Sandwich Islands"
    case .shn: return "Saint Helena, Ascension and Tristan da Cunha"
    case .sjm: return "Svalbard and Jan Mayen"
    case .slb: return "Solomon Islands"
    case .sle: return "Sierra Leone"
    case .slv: return "El Salvador"
    case .smr: return "San Marino"
    case .som: return "Somalia"
    case .spm: return "Saint Pierre and Miquelon"
    case .srb: return "Serbia"
    case .ssd: return "South Sudan"
    case .stp: return "Sao Tome and Principe"
    case .sur: return "Suriname"
    case .svk: return "Slovakia"
    case .svn: return "Slovenia"
    case .swe: return "Sweden"
    case .swz: return "Eswatini"
    case .sxm: return "Sint Maarten (Dutch part)"
    case .syc: return "Seychelles"
    case .syr: return "Syrian Arab Republic"
    case .tca: return "Turks and Caicos Islands (the)"
    case .tcd: return "Chad"
    case .tgo: return "Togo"
    case .tha: return "Thailand"
    case .tjk: return "Tajikistan"
    case .tkl: return "Tokelau"
    case .tkm: return "Turkmenistan"
    case .tls: return "Timor-Leste"
    case .ton: return "Tonga"
    case .tto: return "Trinidad and Tobago"
    case .tun: return "Tunisia"
    case .tur: return "Turkey"
    case .tuv: return "Tuvalu"
    case .twn: return "Taiwan (Province of China)"
    case .tza: return "Tanzania, United Republic of"
    case .uga: return "Uganda"
    case .ukr: return "Ukraine"
    case .umi: return "United States Minor Outlying Islands (the)"
    case .ury: return "Uruguay"
    case .usa: return "United States of America (the)"
    case .uzb: return "Uzbekistan"
    case .vat: return "Holy See (the)"
    case .vct: return "Saint Vincent and the Grenadines"
    case .ven: return "Venezuela (Bolivarian Republic of)"
    case .vgb: return "Virgin Islands (British)"
    case .vir: return "Virgin Islands (U.S.)"
    case .vnm: return "Viet Nam"
    case .vut: return "Vanuatu"
    case .wlf: return "Wallis and Futuna"
    case .wsm: return "Samoa"
    case .yem: return "Yemen"
    case .zaf: return "South Africa"
    case .zmb: return "Zambia"
    case .zwe: return "Zimbabwe"
    }
  }

  public var alpha2Code: String {
    switch self {
    case .abw: return "AW"
    case .afg: return "AF"
    case .ago: return "AO"
    case .aia: return "AI"
    case .ala: return "AX"
    case .alb: return "AL"
    case .and: return "AD"
    case .are: return "AE"
    case .arg: return "AR"
    case .arm: return "AM"
    case .asm: return "AS"
    case .ata: return "AQ"
    case .atf: return "TF"
    case .atg: return "AG"
    case .aus: return "AU"
    case .aut: return "AT"
    case .aze: return "AZ"
    case .bdi: return "BI"
    case .bel: return "BE"
    case .ben: return "BJ"
    case .bes: return "BQ"
    case .bfa: return "BF"
    case .bgd: return "BD"
    case .bgr: return "BG"
    case .bhr: return "BH"
    case .bhs: return "BS"
    case .bih: return "BA"
    case .blm: return "BL"
    case .blr: return "BY"
    case .blz: return "BZ"
    case .bmu: return "BM"
    case .bol: return "BO"
    case .bra: return "BR"
    case .brb: return "BB"
    case .brn: return "BN"
    case .btn: return "BT"
    case .bvt: return "BV"
    case .bwa: return "BW"
    case .caf: return "CF"
    case .can: return "CA"
    case .cck: return "CC"
    case .che: return "CH"
    case .chl: return "CL"
    case .chn: return "CN"
    case .civ: return "CI"
    case .cmr: return "CM"
    case .cod: return "CD"
    case .cog: return "CG"
    case .cok: return "CK"
    case .col: return "CO"
    case .com: return "KM"
    case .cpv: return "CV"
    case .cri: return "CR"
    case .cub: return "CU"
    case .cuw: return "CW"
    case .cxr: return "CX"
    case .cym: return "KY"
    case .cyp: return "CY"
    case .cze: return "CZ"
    case .deu: return "DE"
    case .dji: return "DJ"
    case .dma: return "DM"
    case .dnk: return "DK"
    case .dom: return "DO"
    case .dza: return "DZ"
    case .ecu: return "EC"
    case .egy: return "EG"
    case .eri: return "ER"
    case .esh: return "EH"
    case .esp: return "ES"
    case .est: return "EE"
    case .eth: return "ET"
    case .fin: return "FI"
    case .fji: return "FJ"
    case .flk: return "FK"
    case .fra: return "FR"
    case .fro: return "FO"
    case .fsm: return "FM"
    case .gab: return "GA"
    case .gbr: return "GB"
    case .geo: return "GE"
    case .ggy: return "GG"
    case .gha: return "GH"
    case .gib: return "GI"
    case .gin: return "GN"
    case .glp: return "GP"
    case .gmb: return "GM"
    case .gnb: return "GW"
    case .gnq: return "GQ"
    case .grc: return "GR"
    case .grd: return "GD"
    case .grl: return "GL"
    case .gtm: return "GT"
    case .guf: return "GF"
    case .gum: return "GU"
    case .guy: return "GY"
    case .hkg: return "HK"
    case .hmd: return "HM"
    case .hnd: return "HN"
    case .hrv: return "HR"
    case .hti: return "HT"
    case .hun: return "HU"
    case .idn: return "ID"
    case .imn: return "IM"
    case .ind: return "IN"
    case .iot: return "IO"
    case .irl: return "IE"
    case .irn: return "IR"
    case .irq: return "IQ"
    case .isl: return "IS"
    case .isr: return "IL"
    case .ita: return "IT"
    case .jam: return "JM"
    case .jey: return "JE"
    case .jor: return "JO"
    case .jpn: return "JP"
    case .kaz: return "KZ"
    case .ken: return "KE"
    case .kgz: return "KG"
    case .khm: return "KH"
    case .kir: return "KI"
    case .kna: return "KN"
    case .kor: return "KR"
    case .kwt: return "KW"
    case .lao: return "LA"
    case .lbn: return "LB"
    case .lbr: return "LR"
    case .lby: return "LY"
    case .lca: return "LC"
    case .lie: return "LI"
    case .lka: return "LK"
    case .lso: return "LS"
    case .ltu: return "LT"
    case .lux: return "LU"
    case .lva: return "LV"
    case .mac: return "MO"
    case .maf: return "MF"
    case .mar: return "MA"
    case .mco: return "MC"
    case .mda: return "MD"
    case .mdg: return "MG"
    case .mdv: return "MV"
    case .mex: return "MX"
    case .mhl: return "MH"
    case .mkd: return "MK"
    case .mli: return "ML"
    case .mlt: return "MT"
    case .mmr: return "MM"
    case .mne: return "ME"
    case .mng: return "MN"
    case .mnp: return "MP"
    case .moz: return "MZ"
    case .mrt: return "MR"
    case .msr: return "MS"
    case .mtq: return "MQ"
    case .mus: return "MU"
    case .mwi: return "MW"
    case .mys: return "MY"
    case .myt: return "YT"
    case .nam: return "NA"
    case .ncl: return "NC"
    case .ner: return "NE"
    case .nfk: return "NF"
    case .nga: return "NG"
    case .nic: return "NI"
    case .niu: return "NU"
    case .nld: return "NL"
    case .nor: return "NO"
    case .npl: return "NP"
    case .nru: return "NR"
    case .nzl: return "NZ"
    case .omn: return "OM"
    case .pak: return "PK"
    case .pan: return "PA"
    case .pcn: return "PN"
    case .per: return "PE"
    case .phl: return "PH"
    case .plw: return "PW"
    case .png: return "PG"
    case .pol: return "PL"
    case .pri: return "PR"
    case .prk: return "KP"
    case .prt: return "PT"
    case .pry: return "PY"
    case .pse: return "PS"
    case .pyf: return "PF"
    case .qat: return "QA"
    case .reu: return "RE"
    case .rou: return "RO"
    case .rus: return "RU"
    case .rwa: return "RW"
    case .sau: return "SA"
    case .sdn: return "SD"
    case .sen: return "SN"
    case .sgp: return "SG"
    case .sgs: return "GS"
    case .shn: return "SH"
    case .sjm: return "SJ"
    case .slb: return "SB"
    case .sle: return "SL"
    case .slv: return "SV"
    case .smr: return "SM"
    case .som: return "SO"
    case .spm: return "PM"
    case .srb: return "RS"
    case .ssd: return "SS"
    case .stp: return "ST"
    case .sur: return "SR"
    case .svk: return "SK"
    case .svn: return "SI"
    case .swe: return "SE"
    case .swz: return "SZ"
    case .sxm: return "SX"
    case .syc: return "SC"
    case .syr: return "SY"
    case .tca: return "TC"
    case .tcd: return "TD"
    case .tgo: return "TG"
    case .tha: return "TH"
    case .tjk: return "TJ"
    case .tkl: return "TK"
    case .tkm: return "TM"
    case .tls: return "TL"
    case .ton: return "TO"
    case .tto: return "TT"
    case .tun: return "TN"
    case .tur: return "TR"
    case .tuv: return "TV"
    case .twn: return "TW"
    case .tza: return "TZ"
    case .uga: return "UG"
    case .ukr: return "UA"
    case .umi: return "UM"
    case .ury: return "UY"
    case .usa: return "US"
    case .uzb: return "UZ"
    case .vat: return "VA"
    case .vct: return "VC"
    case .ven: return "VE"
    case .vgb: return "VG"
    case .vir: return "VI"
    case .vnm: return "VN"
    case .vut: return "VU"
    case .wlf: return "WF"
    case .wsm: return "WS"
    case .yem: return "YE"
    case .zaf: return "ZA"
    case .zmb: return "ZM"
    case .zwe: return "ZW"
    }
  }

  public var alpha3Code: String {
    switch self {
    case .abw: return "ABW"
    case .afg: return "AFG"
    case .ago: return "AGO"
    case .aia: return "AIA"
    case .ala: return "ALA"
    case .alb: return "ALB"
    case .and: return "AND"
    case .are: return "ARE"
    case .arg: return "ARG"
    case .arm: return "ARM"
    case .asm: return "ASM"
    case .ata: return "ATA"
    case .atf: return "ATF"
    case .atg: return "ATG"
    case .aus: return "AUS"
    case .aut: return "AUT"
    case .aze: return "AZE"
    case .bdi: return "BDI"
    case .bel: return "BEL"
    case .ben: return "BEN"
    case .bes: return "BES"
    case .bfa: return "BFA"
    case .bgd: return "BGD"
    case .bgr: return "BGR"
    case .bhr: return "BHR"
    case .bhs: return "BHS"
    case .bih: return "BIH"
    case .blm: return "BLM"
    case .blr: return "BLR"
    case .blz: return "BLZ"
    case .bmu: return "BMU"
    case .bol: return "BOL"
    case .bra: return "BRA"
    case .brb: return "BRB"
    case .brn: return "BRN"
    case .btn: return "BTN"
    case .bvt: return "BVT"
    case .bwa: return "BWA"
    case .caf: return "CAF"
    case .can: return "CAN"
    case .cck: return "CCK"
    case .che: return "CHE"
    case .chl: return "CHL"
    case .chn: return "CHN"
    case .civ: return "CIV"
    case .cmr: return "CMR"
    case .cod: return "COD"
    case .cog: return "COG"
    case .cok: return "COK"
    case .col: return "COL"
    case .com: return "COM"
    case .cpv: return "CPV"
    case .cri: return "CRI"
    case .cub: return "CUB"
    case .cuw: return "CUW"
    case .cxr: return "CXR"
    case .cym: return "CYM"
    case .cyp: return "CYP"
    case .cze: return "CZE"
    case .deu: return "DEU"
    case .dji: return "DJI"
    case .dma: return "DMA"
    case .dnk: return "DNK"
    case .dom: return "DOM"
    case .dza: return "DZA"
    case .ecu: return "ECU"
    case .egy: return "EGY"
    case .eri: return "ERI"
    case .esh: return "ESH"
    case .esp: return "ESP"
    case .est: return "EST"
    case .eth: return "ETH"
    case .fin: return "FIN"
    case .fji: return "FJI"
    case .flk: return "FLK"
    case .fra: return "FRA"
    case .fro: return "FRO"
    case .fsm: return "FSM"
    case .gab: return "GAB"
    case .gbr: return "GBR"
    case .geo: return "GEO"
    case .ggy: return "GGY"
    case .gha: return "GHA"
    case .gib: return "GIB"
    case .gin: return "GIN"
    case .glp: return "GLP"
    case .gmb: return "GMB"
    case .gnb: return "GNB"
    case .gnq: return "GNQ"
    case .grc: return "GRC"
    case .grd: return "GRD"
    case .grl: return "GRL"
    case .gtm: return "GTM"
    case .guf: return "GUF"
    case .gum: return "GUM"
    case .guy: return "GUY"
    case .hkg: return "HKG"
    case .hmd: return "HMD"
    case .hnd: return "HND"
    case .hrv: return "HRV"
    case .hti: return "HTI"
    case .hun: return "HUN"
    case .idn: return "IDN"
    case .imn: return "IMN"
    case .ind: return "IND"
    case .iot: return "IOT"
    case .irl: return "IRL"
    case .irn: return "IRN"
    case .irq: return "IRQ"
    case .isl: return "ISL"
    case .isr: return "ISR"
    case .ita: return "ITA"
    case .jam: return "JAM"
    case .jey: return "JEY"
    case .jor: return "JOR"
    case .jpn: return "JPN"
    case .kaz: return "KAZ"
    case .ken: return "KEN"
    case .kgz: return "KGZ"
    case .khm: return "KHM"
    case .kir: return "KIR"
    case .kna: return "KNA"
    case .kor: return "KOR"
    case .kwt: return "KWT"
    case .lao: return "LAO"
    case .lbn: return "LBN"
    case .lbr: return "LBR"
    case .lby: return "LBY"
    case .lca: return "LCA"
    case .lie: return "LIE"
    case .lka: return "LKA"
    case .lso: return "LSO"
    case .ltu: return "LTU"
    case .lux: return "LUX"
    case .lva: return "LVA"
    case .mac: return "MAC"
    case .maf: return "MAF"
    case .mar: return "MAR"
    case .mco: return "MCO"
    case .mda: return "MDA"
    case .mdg: return "MDG"
    case .mdv: return "MDV"
    case .mex: return "MEX"
    case .mhl: return "MHL"
    case .mkd: return "MKD"
    case .mli: return "MLI"
    case .mlt: return "MLT"
    case .mmr: return "MMR"
    case .mne: return "MNE"
    case .mng: return "MNG"
    case .mnp: return "MNP"
    case .moz: return "MOZ"
    case .mrt: return "MRT"
    case .msr: return "MSR"
    case .mtq: return "MTQ"
    case .mus: return "MUS"
    case .mwi: return "MWI"
    case .mys: return "MYS"
    case .myt: return "MYT"
    case .nam: return "NAM"
    case .ncl: return "NCL"
    case .ner: return "NER"
    case .nfk: return "NFK"
    case .nga: return "NGA"
    case .nic: return "NIC"
    case .niu: return "NIU"
    case .nld: return "NLD"
    case .nor: return "NOR"
    case .npl: return "NPL"
    case .nru: return "NRU"
    case .nzl: return "NZL"
    case .omn: return "OMN"
    case .pak: return "PAK"
    case .pan: return "PAN"
    case .pcn: return "PCN"
    case .per: return "PER"
    case .phl: return "PHL"
    case .plw: return "PLW"
    case .png: return "PNG"
    case .pol: return "POL"
    case .pri: return "PRI"
    case .prk: return "PRK"
    case .prt: return "PRT"
    case .pry: return "PRY"
    case .pse: return "PSE"
    case .pyf: return "PYF"
    case .qat: return "QAT"
    case .reu: return "REU"
    case .rou: return "ROU"
    case .rus: return "RUS"
    case .rwa: return "RWA"
    case .sau: return "SAU"
    case .sdn: return "SDN"
    case .sen: return "SEN"
    case .sgp: return "SGP"
    case .sgs: return "SGS"
    case .shn: return "SHN"
    case .sjm: return "SJM"
    case .slb: return "SLB"
    case .sle: return "SLE"
    case .slv: return "SLV"
    case .smr: return "SMR"
    case .som: return "SOM"
    case .spm: return "SPM"
    case .srb: return "SRB"
    case .ssd: return "SSD"
    case .stp: return "STP"
    case .sur: return "SUR"
    case .svk: return "SVK"
    case .svn: return "SVN"
    case .swe: return "SWE"
    case .swz: return "SWZ"
    case .sxm: return "SXM"
    case .syc: return "SYC"
    case .syr: return "SYR"
    case .tca: return "TCA"
    case .tcd: return "TCD"
    case .tgo: return "TGO"
    case .tha: return "THA"
    case .tjk: return "TJK"
    case .tkl: return "TKL"
    case .tkm: return "TKM"
    case .tls: return "TLS"
    case .ton: return "TON"
    case .tto: return "TTO"
    case .tun: return "TUN"
    case .tur: return "TUR"
    case .tuv: return "TUV"
    case .twn: return "TWN"
    case .tza: return "TZA"
    case .uga: return "UGA"
    case .ukr: return "UKR"
    case .umi: return "UMI"
    case .ury: return "URY"
    case .usa: return "USA"
    case .uzb: return "UZB"
    case .vat: return "VAT"
    case .vct: return "VCT"
    case .ven: return "VEN"
    case .vgb: return "VGB"
    case .vir: return "VIR"
    case .vnm: return "VNM"
    case .vut: return "VUT"
    case .wlf: return "WLF"
    case .wsm: return "WSM"
    case .yem: return "YEM"
    case .zaf: return "ZAF"
    case .zmb: return "ZMB"
    case .zwe: return "ZWE"
    }
  }
}
