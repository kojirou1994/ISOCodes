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
    guard let asciiUIntCode = alpha2Code.twoCharToUInt16 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x4157: self = .abw
    case 0x4146: self = .afg
    case 0x414f: self = .ago
    case 0x4149: self = .aia
    case 0x4158: self = .ala
    case 0x414c: self = .alb
    case 0x4144: self = .and
    case 0x4145: self = .are
    case 0x4152: self = .arg
    case 0x414d: self = .arm
    case 0x4153: self = .asm
    case 0x4151: self = .ata
    case 0x5446: self = .atf
    case 0x4147: self = .atg
    case 0x4155: self = .aus
    case 0x4154: self = .aut
    case 0x415a: self = .aze
    case 0x4249: self = .bdi
    case 0x4245: self = .bel
    case 0x424a: self = .ben
    case 0x4251: self = .bes
    case 0x4246: self = .bfa
    case 0x4244: self = .bgd
    case 0x4247: self = .bgr
    case 0x4248: self = .bhr
    case 0x4253: self = .bhs
    case 0x4241: self = .bih
    case 0x424c: self = .blm
    case 0x4259: self = .blr
    case 0x425a: self = .blz
    case 0x424d: self = .bmu
    case 0x424f: self = .bol
    case 0x4252: self = .bra
    case 0x4242: self = .brb
    case 0x424e: self = .brn
    case 0x4254: self = .btn
    case 0x4256: self = .bvt
    case 0x4257: self = .bwa
    case 0x4346: self = .caf
    case 0x4341: self = .can
    case 0x4343: self = .cck
    case 0x4348: self = .che
    case 0x434c: self = .chl
    case 0x434e: self = .chn
    case 0x4349: self = .civ
    case 0x434d: self = .cmr
    case 0x4344: self = .cod
    case 0x4347: self = .cog
    case 0x434b: self = .cok
    case 0x434f: self = .col
    case 0x4b4d: self = .com
    case 0x4356: self = .cpv
    case 0x4352: self = .cri
    case 0x4355: self = .cub
    case 0x4357: self = .cuw
    case 0x4358: self = .cxr
    case 0x4b59: self = .cym
    case 0x4359: self = .cyp
    case 0x435a: self = .cze
    case 0x4445: self = .deu
    case 0x444a: self = .dji
    case 0x444d: self = .dma
    case 0x444b: self = .dnk
    case 0x444f: self = .dom
    case 0x445a: self = .dza
    case 0x4543: self = .ecu
    case 0x4547: self = .egy
    case 0x4552: self = .eri
    case 0x4548: self = .esh
    case 0x4553: self = .esp
    case 0x4545: self = .est
    case 0x4554: self = .eth
    case 0x4649: self = .fin
    case 0x464a: self = .fji
    case 0x464b: self = .flk
    case 0x4652: self = .fra
    case 0x464f: self = .fro
    case 0x464d: self = .fsm
    case 0x4741: self = .gab
    case 0x4742: self = .gbr
    case 0x4745: self = .geo
    case 0x4747: self = .ggy
    case 0x4748: self = .gha
    case 0x4749: self = .gib
    case 0x474e: self = .gin
    case 0x4750: self = .glp
    case 0x474d: self = .gmb
    case 0x4757: self = .gnb
    case 0x4751: self = .gnq
    case 0x4752: self = .grc
    case 0x4744: self = .grd
    case 0x474c: self = .grl
    case 0x4754: self = .gtm
    case 0x4746: self = .guf
    case 0x4755: self = .gum
    case 0x4759: self = .guy
    case 0x484b: self = .hkg
    case 0x484d: self = .hmd
    case 0x484e: self = .hnd
    case 0x4852: self = .hrv
    case 0x4854: self = .hti
    case 0x4855: self = .hun
    case 0x4944: self = .idn
    case 0x494d: self = .imn
    case 0x494e: self = .ind
    case 0x494f: self = .iot
    case 0x4945: self = .irl
    case 0x4952: self = .irn
    case 0x4951: self = .irq
    case 0x4953: self = .isl
    case 0x494c: self = .isr
    case 0x4954: self = .ita
    case 0x4a4d: self = .jam
    case 0x4a45: self = .jey
    case 0x4a4f: self = .jor
    case 0x4a50: self = .jpn
    case 0x4b5a: self = .kaz
    case 0x4b45: self = .ken
    case 0x4b47: self = .kgz
    case 0x4b48: self = .khm
    case 0x4b49: self = .kir
    case 0x4b4e: self = .kna
    case 0x4b52: self = .kor
    case 0x4b57: self = .kwt
    case 0x4c41: self = .lao
    case 0x4c42: self = .lbn
    case 0x4c52: self = .lbr
    case 0x4c59: self = .lby
    case 0x4c43: self = .lca
    case 0x4c49: self = .lie
    case 0x4c4b: self = .lka
    case 0x4c53: self = .lso
    case 0x4c54: self = .ltu
    case 0x4c55: self = .lux
    case 0x4c56: self = .lva
    case 0x4d4f: self = .mac
    case 0x4d46: self = .maf
    case 0x4d41: self = .mar
    case 0x4d43: self = .mco
    case 0x4d44: self = .mda
    case 0x4d47: self = .mdg
    case 0x4d56: self = .mdv
    case 0x4d58: self = .mex
    case 0x4d48: self = .mhl
    case 0x4d4b: self = .mkd
    case 0x4d4c: self = .mli
    case 0x4d54: self = .mlt
    case 0x4d4d: self = .mmr
    case 0x4d45: self = .mne
    case 0x4d4e: self = .mng
    case 0x4d50: self = .mnp
    case 0x4d5a: self = .moz
    case 0x4d52: self = .mrt
    case 0x4d53: self = .msr
    case 0x4d51: self = .mtq
    case 0x4d55: self = .mus
    case 0x4d57: self = .mwi
    case 0x4d59: self = .mys
    case 0x5954: self = .myt
    case 0x4e41: self = .nam
    case 0x4e43: self = .ncl
    case 0x4e45: self = .ner
    case 0x4e46: self = .nfk
    case 0x4e47: self = .nga
    case 0x4e49: self = .nic
    case 0x4e55: self = .niu
    case 0x4e4c: self = .nld
    case 0x4e4f: self = .nor
    case 0x4e50: self = .npl
    case 0x4e52: self = .nru
    case 0x4e5a: self = .nzl
    case 0x4f4d: self = .omn
    case 0x504b: self = .pak
    case 0x5041: self = .pan
    case 0x504e: self = .pcn
    case 0x5045: self = .per
    case 0x5048: self = .phl
    case 0x5057: self = .plw
    case 0x5047: self = .png
    case 0x504c: self = .pol
    case 0x5052: self = .pri
    case 0x4b50: self = .prk
    case 0x5054: self = .prt
    case 0x5059: self = .pry
    case 0x5053: self = .pse
    case 0x5046: self = .pyf
    case 0x5141: self = .qat
    case 0x5245: self = .reu
    case 0x524f: self = .rou
    case 0x5255: self = .rus
    case 0x5257: self = .rwa
    case 0x5341: self = .sau
    case 0x5344: self = .sdn
    case 0x534e: self = .sen
    case 0x5347: self = .sgp
    case 0x4753: self = .sgs
    case 0x5348: self = .shn
    case 0x534a: self = .sjm
    case 0x5342: self = .slb
    case 0x534c: self = .sle
    case 0x5356: self = .slv
    case 0x534d: self = .smr
    case 0x534f: self = .som
    case 0x504d: self = .spm
    case 0x5253: self = .srb
    case 0x5353: self = .ssd
    case 0x5354: self = .stp
    case 0x5352: self = .sur
    case 0x534b: self = .svk
    case 0x5349: self = .svn
    case 0x5345: self = .swe
    case 0x535a: self = .swz
    case 0x5358: self = .sxm
    case 0x5343: self = .syc
    case 0x5359: self = .syr
    case 0x5443: self = .tca
    case 0x5444: self = .tcd
    case 0x5447: self = .tgo
    case 0x5448: self = .tha
    case 0x544a: self = .tjk
    case 0x544b: self = .tkl
    case 0x544d: self = .tkm
    case 0x544c: self = .tls
    case 0x544f: self = .ton
    case 0x5454: self = .tto
    case 0x544e: self = .tun
    case 0x5452: self = .tur
    case 0x5456: self = .tuv
    case 0x5457: self = .twn
    case 0x545a: self = .tza
    case 0x5547: self = .uga
    case 0x5541: self = .ukr
    case 0x554d: self = .umi
    case 0x5559: self = .ury
    case 0x5553: self = .usa
    case 0x555a: self = .uzb
    case 0x5641: self = .vat
    case 0x5643: self = .vct
    case 0x5645: self = .ven
    case 0x5647: self = .vgb
    case 0x5649: self = .vir
    case 0x564e: self = .vnm
    case 0x5655: self = .vut
    case 0x5746: self = .wlf
    case 0x5753: self = .wsm
    case 0x5945: self = .yem
    case 0x5a41: self = .zaf
    case 0x5a4d: self = .zmb
    case 0x5a57: self = .zwe
    default: return nil
    }
  }

  public init?(alpha3Code: String) {
    guard let asciiUIntCode = alpha3Code.threeCharToUInt32 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x414257: self = .abw
    case 0x414647: self = .afg
    case 0x41474f: self = .ago
    case 0x414941: self = .aia
    case 0x414c41: self = .ala
    case 0x414c42: self = .alb
    case 0x414e44: self = .and
    case 0x415245: self = .are
    case 0x415247: self = .arg
    case 0x41524d: self = .arm
    case 0x41534d: self = .asm
    case 0x415441: self = .ata
    case 0x415446: self = .atf
    case 0x415447: self = .atg
    case 0x415553: self = .aus
    case 0x415554: self = .aut
    case 0x415a45: self = .aze
    case 0x424449: self = .bdi
    case 0x42454c: self = .bel
    case 0x42454e: self = .ben
    case 0x424553: self = .bes
    case 0x424641: self = .bfa
    case 0x424744: self = .bgd
    case 0x424752: self = .bgr
    case 0x424852: self = .bhr
    case 0x424853: self = .bhs
    case 0x424948: self = .bih
    case 0x424c4d: self = .blm
    case 0x424c52: self = .blr
    case 0x424c5a: self = .blz
    case 0x424d55: self = .bmu
    case 0x424f4c: self = .bol
    case 0x425241: self = .bra
    case 0x425242: self = .brb
    case 0x42524e: self = .brn
    case 0x42544e: self = .btn
    case 0x425654: self = .bvt
    case 0x425741: self = .bwa
    case 0x434146: self = .caf
    case 0x43414e: self = .can
    case 0x43434b: self = .cck
    case 0x434845: self = .che
    case 0x43484c: self = .chl
    case 0x43484e: self = .chn
    case 0x434956: self = .civ
    case 0x434d52: self = .cmr
    case 0x434f44: self = .cod
    case 0x434f47: self = .cog
    case 0x434f4b: self = .cok
    case 0x434f4c: self = .col
    case 0x434f4d: self = .com
    case 0x435056: self = .cpv
    case 0x435249: self = .cri
    case 0x435542: self = .cub
    case 0x435557: self = .cuw
    case 0x435852: self = .cxr
    case 0x43594d: self = .cym
    case 0x435950: self = .cyp
    case 0x435a45: self = .cze
    case 0x444555: self = .deu
    case 0x444a49: self = .dji
    case 0x444d41: self = .dma
    case 0x444e4b: self = .dnk
    case 0x444f4d: self = .dom
    case 0x445a41: self = .dza
    case 0x454355: self = .ecu
    case 0x454759: self = .egy
    case 0x455249: self = .eri
    case 0x455348: self = .esh
    case 0x455350: self = .esp
    case 0x455354: self = .est
    case 0x455448: self = .eth
    case 0x46494e: self = .fin
    case 0x464a49: self = .fji
    case 0x464c4b: self = .flk
    case 0x465241: self = .fra
    case 0x46524f: self = .fro
    case 0x46534d: self = .fsm
    case 0x474142: self = .gab
    case 0x474252: self = .gbr
    case 0x47454f: self = .geo
    case 0x474759: self = .ggy
    case 0x474841: self = .gha
    case 0x474942: self = .gib
    case 0x47494e: self = .gin
    case 0x474c50: self = .glp
    case 0x474d42: self = .gmb
    case 0x474e42: self = .gnb
    case 0x474e51: self = .gnq
    case 0x475243: self = .grc
    case 0x475244: self = .grd
    case 0x47524c: self = .grl
    case 0x47544d: self = .gtm
    case 0x475546: self = .guf
    case 0x47554d: self = .gum
    case 0x475559: self = .guy
    case 0x484b47: self = .hkg
    case 0x484d44: self = .hmd
    case 0x484e44: self = .hnd
    case 0x485256: self = .hrv
    case 0x485449: self = .hti
    case 0x48554e: self = .hun
    case 0x49444e: self = .idn
    case 0x494d4e: self = .imn
    case 0x494e44: self = .ind
    case 0x494f54: self = .iot
    case 0x49524c: self = .irl
    case 0x49524e: self = .irn
    case 0x495251: self = .irq
    case 0x49534c: self = .isl
    case 0x495352: self = .isr
    case 0x495441: self = .ita
    case 0x4a414d: self = .jam
    case 0x4a4559: self = .jey
    case 0x4a4f52: self = .jor
    case 0x4a504e: self = .jpn
    case 0x4b415a: self = .kaz
    case 0x4b454e: self = .ken
    case 0x4b475a: self = .kgz
    case 0x4b484d: self = .khm
    case 0x4b4952: self = .kir
    case 0x4b4e41: self = .kna
    case 0x4b4f52: self = .kor
    case 0x4b5754: self = .kwt
    case 0x4c414f: self = .lao
    case 0x4c424e: self = .lbn
    case 0x4c4252: self = .lbr
    case 0x4c4259: self = .lby
    case 0x4c4341: self = .lca
    case 0x4c4945: self = .lie
    case 0x4c4b41: self = .lka
    case 0x4c534f: self = .lso
    case 0x4c5455: self = .ltu
    case 0x4c5558: self = .lux
    case 0x4c5641: self = .lva
    case 0x4d4143: self = .mac
    case 0x4d4146: self = .maf
    case 0x4d4152: self = .mar
    case 0x4d434f: self = .mco
    case 0x4d4441: self = .mda
    case 0x4d4447: self = .mdg
    case 0x4d4456: self = .mdv
    case 0x4d4558: self = .mex
    case 0x4d484c: self = .mhl
    case 0x4d4b44: self = .mkd
    case 0x4d4c49: self = .mli
    case 0x4d4c54: self = .mlt
    case 0x4d4d52: self = .mmr
    case 0x4d4e45: self = .mne
    case 0x4d4e47: self = .mng
    case 0x4d4e50: self = .mnp
    case 0x4d4f5a: self = .moz
    case 0x4d5254: self = .mrt
    case 0x4d5352: self = .msr
    case 0x4d5451: self = .mtq
    case 0x4d5553: self = .mus
    case 0x4d5749: self = .mwi
    case 0x4d5953: self = .mys
    case 0x4d5954: self = .myt
    case 0x4e414d: self = .nam
    case 0x4e434c: self = .ncl
    case 0x4e4552: self = .ner
    case 0x4e464b: self = .nfk
    case 0x4e4741: self = .nga
    case 0x4e4943: self = .nic
    case 0x4e4955: self = .niu
    case 0x4e4c44: self = .nld
    case 0x4e4f52: self = .nor
    case 0x4e504c: self = .npl
    case 0x4e5255: self = .nru
    case 0x4e5a4c: self = .nzl
    case 0x4f4d4e: self = .omn
    case 0x50414b: self = .pak
    case 0x50414e: self = .pan
    case 0x50434e: self = .pcn
    case 0x504552: self = .per
    case 0x50484c: self = .phl
    case 0x504c57: self = .plw
    case 0x504e47: self = .png
    case 0x504f4c: self = .pol
    case 0x505249: self = .pri
    case 0x50524b: self = .prk
    case 0x505254: self = .prt
    case 0x505259: self = .pry
    case 0x505345: self = .pse
    case 0x505946: self = .pyf
    case 0x514154: self = .qat
    case 0x524555: self = .reu
    case 0x524f55: self = .rou
    case 0x525553: self = .rus
    case 0x525741: self = .rwa
    case 0x534155: self = .sau
    case 0x53444e: self = .sdn
    case 0x53454e: self = .sen
    case 0x534750: self = .sgp
    case 0x534753: self = .sgs
    case 0x53484e: self = .shn
    case 0x534a4d: self = .sjm
    case 0x534c42: self = .slb
    case 0x534c45: self = .sle
    case 0x534c56: self = .slv
    case 0x534d52: self = .smr
    case 0x534f4d: self = .som
    case 0x53504d: self = .spm
    case 0x535242: self = .srb
    case 0x535344: self = .ssd
    case 0x535450: self = .stp
    case 0x535552: self = .sur
    case 0x53564b: self = .svk
    case 0x53564e: self = .svn
    case 0x535745: self = .swe
    case 0x53575a: self = .swz
    case 0x53584d: self = .sxm
    case 0x535943: self = .syc
    case 0x535952: self = .syr
    case 0x544341: self = .tca
    case 0x544344: self = .tcd
    case 0x54474f: self = .tgo
    case 0x544841: self = .tha
    case 0x544a4b: self = .tjk
    case 0x544b4c: self = .tkl
    case 0x544b4d: self = .tkm
    case 0x544c53: self = .tls
    case 0x544f4e: self = .ton
    case 0x54544f: self = .tto
    case 0x54554e: self = .tun
    case 0x545552: self = .tur
    case 0x545556: self = .tuv
    case 0x54574e: self = .twn
    case 0x545a41: self = .tza
    case 0x554741: self = .uga
    case 0x554b52: self = .ukr
    case 0x554d49: self = .umi
    case 0x555259: self = .ury
    case 0x555341: self = .usa
    case 0x555a42: self = .uzb
    case 0x564154: self = .vat
    case 0x564354: self = .vct
    case 0x56454e: self = .ven
    case 0x564742: self = .vgb
    case 0x564952: self = .vir
    case 0x564e4d: self = .vnm
    case 0x565554: self = .vut
    case 0x574c46: self = .wlf
    case 0x57534d: self = .wsm
    case 0x59454d: self = .yem
    case 0x5a4146: self = .zaf
    case 0x5a4d42: self = .zmb
    case 0x5a5745: self = .zwe
    default: return nil
    }
  }

  public init?(string: String) {
    guard let asciiUIntCode = string.twoOrThreeCharToUInt32 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x4157, 0x414257: self = .abw
    case 0x4146, 0x414647: self = .afg
    case 0x414f, 0x41474f: self = .ago
    case 0x4149, 0x414941: self = .aia
    case 0x4158, 0x414c41: self = .ala
    case 0x414c, 0x414c42: self = .alb
    case 0x4144, 0x414e44: self = .and
    case 0x4145, 0x415245: self = .are
    case 0x4152, 0x415247: self = .arg
    case 0x414d, 0x41524d: self = .arm
    case 0x4153, 0x41534d: self = .asm
    case 0x4151, 0x415441: self = .ata
    case 0x5446, 0x415446: self = .atf
    case 0x4147, 0x415447: self = .atg
    case 0x4155, 0x415553: self = .aus
    case 0x4154, 0x415554: self = .aut
    case 0x415a, 0x415a45: self = .aze
    case 0x4249, 0x424449: self = .bdi
    case 0x4245, 0x42454c: self = .bel
    case 0x424a, 0x42454e: self = .ben
    case 0x4251, 0x424553: self = .bes
    case 0x4246, 0x424641: self = .bfa
    case 0x4244, 0x424744: self = .bgd
    case 0x4247, 0x424752: self = .bgr
    case 0x4248, 0x424852: self = .bhr
    case 0x4253, 0x424853: self = .bhs
    case 0x4241, 0x424948: self = .bih
    case 0x424c, 0x424c4d: self = .blm
    case 0x4259, 0x424c52: self = .blr
    case 0x425a, 0x424c5a: self = .blz
    case 0x424d, 0x424d55: self = .bmu
    case 0x424f, 0x424f4c: self = .bol
    case 0x4252, 0x425241: self = .bra
    case 0x4242, 0x425242: self = .brb
    case 0x424e, 0x42524e: self = .brn
    case 0x4254, 0x42544e: self = .btn
    case 0x4256, 0x425654: self = .bvt
    case 0x4257, 0x425741: self = .bwa
    case 0x4346, 0x434146: self = .caf
    case 0x4341, 0x43414e: self = .can
    case 0x4343, 0x43434b: self = .cck
    case 0x4348, 0x434845: self = .che
    case 0x434c, 0x43484c: self = .chl
    case 0x434e, 0x43484e: self = .chn
    case 0x4349, 0x434956: self = .civ
    case 0x434d, 0x434d52: self = .cmr
    case 0x4344, 0x434f44: self = .cod
    case 0x4347, 0x434f47: self = .cog
    case 0x434b, 0x434f4b: self = .cok
    case 0x434f, 0x434f4c: self = .col
    case 0x4b4d, 0x434f4d: self = .com
    case 0x4356, 0x435056: self = .cpv
    case 0x4352, 0x435249: self = .cri
    case 0x4355, 0x435542: self = .cub
    case 0x4357, 0x435557: self = .cuw
    case 0x4358, 0x435852: self = .cxr
    case 0x4b59, 0x43594d: self = .cym
    case 0x4359, 0x435950: self = .cyp
    case 0x435a, 0x435a45: self = .cze
    case 0x4445, 0x444555: self = .deu
    case 0x444a, 0x444a49: self = .dji
    case 0x444d, 0x444d41: self = .dma
    case 0x444b, 0x444e4b: self = .dnk
    case 0x444f, 0x444f4d: self = .dom
    case 0x445a, 0x445a41: self = .dza
    case 0x4543, 0x454355: self = .ecu
    case 0x4547, 0x454759: self = .egy
    case 0x4552, 0x455249: self = .eri
    case 0x4548, 0x455348: self = .esh
    case 0x4553, 0x455350: self = .esp
    case 0x4545, 0x455354: self = .est
    case 0x4554, 0x455448: self = .eth
    case 0x4649, 0x46494e: self = .fin
    case 0x464a, 0x464a49: self = .fji
    case 0x464b, 0x464c4b: self = .flk
    case 0x4652, 0x465241: self = .fra
    case 0x464f, 0x46524f: self = .fro
    case 0x464d, 0x46534d: self = .fsm
    case 0x4741, 0x474142: self = .gab
    case 0x4742, 0x474252: self = .gbr
    case 0x4745, 0x47454f: self = .geo
    case 0x4747, 0x474759: self = .ggy
    case 0x4748, 0x474841: self = .gha
    case 0x4749, 0x474942: self = .gib
    case 0x474e, 0x47494e: self = .gin
    case 0x4750, 0x474c50: self = .glp
    case 0x474d, 0x474d42: self = .gmb
    case 0x4757, 0x474e42: self = .gnb
    case 0x4751, 0x474e51: self = .gnq
    case 0x4752, 0x475243: self = .grc
    case 0x4744, 0x475244: self = .grd
    case 0x474c, 0x47524c: self = .grl
    case 0x4754, 0x47544d: self = .gtm
    case 0x4746, 0x475546: self = .guf
    case 0x4755, 0x47554d: self = .gum
    case 0x4759, 0x475559: self = .guy
    case 0x484b, 0x484b47: self = .hkg
    case 0x484d, 0x484d44: self = .hmd
    case 0x484e, 0x484e44: self = .hnd
    case 0x4852, 0x485256: self = .hrv
    case 0x4854, 0x485449: self = .hti
    case 0x4855, 0x48554e: self = .hun
    case 0x4944, 0x49444e: self = .idn
    case 0x494d, 0x494d4e: self = .imn
    case 0x494e, 0x494e44: self = .ind
    case 0x494f, 0x494f54: self = .iot
    case 0x4945, 0x49524c: self = .irl
    case 0x4952, 0x49524e: self = .irn
    case 0x4951, 0x495251: self = .irq
    case 0x4953, 0x49534c: self = .isl
    case 0x494c, 0x495352: self = .isr
    case 0x4954, 0x495441: self = .ita
    case 0x4a4d, 0x4a414d: self = .jam
    case 0x4a45, 0x4a4559: self = .jey
    case 0x4a4f, 0x4a4f52: self = .jor
    case 0x4a50, 0x4a504e: self = .jpn
    case 0x4b5a, 0x4b415a: self = .kaz
    case 0x4b45, 0x4b454e: self = .ken
    case 0x4b47, 0x4b475a: self = .kgz
    case 0x4b48, 0x4b484d: self = .khm
    case 0x4b49, 0x4b4952: self = .kir
    case 0x4b4e, 0x4b4e41: self = .kna
    case 0x4b52, 0x4b4f52: self = .kor
    case 0x4b57, 0x4b5754: self = .kwt
    case 0x4c41, 0x4c414f: self = .lao
    case 0x4c42, 0x4c424e: self = .lbn
    case 0x4c52, 0x4c4252: self = .lbr
    case 0x4c59, 0x4c4259: self = .lby
    case 0x4c43, 0x4c4341: self = .lca
    case 0x4c49, 0x4c4945: self = .lie
    case 0x4c4b, 0x4c4b41: self = .lka
    case 0x4c53, 0x4c534f: self = .lso
    case 0x4c54, 0x4c5455: self = .ltu
    case 0x4c55, 0x4c5558: self = .lux
    case 0x4c56, 0x4c5641: self = .lva
    case 0x4d4f, 0x4d4143: self = .mac
    case 0x4d46, 0x4d4146: self = .maf
    case 0x4d41, 0x4d4152: self = .mar
    case 0x4d43, 0x4d434f: self = .mco
    case 0x4d44, 0x4d4441: self = .mda
    case 0x4d47, 0x4d4447: self = .mdg
    case 0x4d56, 0x4d4456: self = .mdv
    case 0x4d58, 0x4d4558: self = .mex
    case 0x4d48, 0x4d484c: self = .mhl
    case 0x4d4b, 0x4d4b44: self = .mkd
    case 0x4d4c, 0x4d4c49: self = .mli
    case 0x4d54, 0x4d4c54: self = .mlt
    case 0x4d4d, 0x4d4d52: self = .mmr
    case 0x4d45, 0x4d4e45: self = .mne
    case 0x4d4e, 0x4d4e47: self = .mng
    case 0x4d50, 0x4d4e50: self = .mnp
    case 0x4d5a, 0x4d4f5a: self = .moz
    case 0x4d52, 0x4d5254: self = .mrt
    case 0x4d53, 0x4d5352: self = .msr
    case 0x4d51, 0x4d5451: self = .mtq
    case 0x4d55, 0x4d5553: self = .mus
    case 0x4d57, 0x4d5749: self = .mwi
    case 0x4d59, 0x4d5953: self = .mys
    case 0x5954, 0x4d5954: self = .myt
    case 0x4e41, 0x4e414d: self = .nam
    case 0x4e43, 0x4e434c: self = .ncl
    case 0x4e45, 0x4e4552: self = .ner
    case 0x4e46, 0x4e464b: self = .nfk
    case 0x4e47, 0x4e4741: self = .nga
    case 0x4e49, 0x4e4943: self = .nic
    case 0x4e55, 0x4e4955: self = .niu
    case 0x4e4c, 0x4e4c44: self = .nld
    case 0x4e4f, 0x4e4f52: self = .nor
    case 0x4e50, 0x4e504c: self = .npl
    case 0x4e52, 0x4e5255: self = .nru
    case 0x4e5a, 0x4e5a4c: self = .nzl
    case 0x4f4d, 0x4f4d4e: self = .omn
    case 0x504b, 0x50414b: self = .pak
    case 0x5041, 0x50414e: self = .pan
    case 0x504e, 0x50434e: self = .pcn
    case 0x5045, 0x504552: self = .per
    case 0x5048, 0x50484c: self = .phl
    case 0x5057, 0x504c57: self = .plw
    case 0x5047, 0x504e47: self = .png
    case 0x504c, 0x504f4c: self = .pol
    case 0x5052, 0x505249: self = .pri
    case 0x4b50, 0x50524b: self = .prk
    case 0x5054, 0x505254: self = .prt
    case 0x5059, 0x505259: self = .pry
    case 0x5053, 0x505345: self = .pse
    case 0x5046, 0x505946: self = .pyf
    case 0x5141, 0x514154: self = .qat
    case 0x5245, 0x524555: self = .reu
    case 0x524f, 0x524f55: self = .rou
    case 0x5255, 0x525553: self = .rus
    case 0x5257, 0x525741: self = .rwa
    case 0x5341, 0x534155: self = .sau
    case 0x5344, 0x53444e: self = .sdn
    case 0x534e, 0x53454e: self = .sen
    case 0x5347, 0x534750: self = .sgp
    case 0x4753, 0x534753: self = .sgs
    case 0x5348, 0x53484e: self = .shn
    case 0x534a, 0x534a4d: self = .sjm
    case 0x5342, 0x534c42: self = .slb
    case 0x534c, 0x534c45: self = .sle
    case 0x5356, 0x534c56: self = .slv
    case 0x534d, 0x534d52: self = .smr
    case 0x534f, 0x534f4d: self = .som
    case 0x504d, 0x53504d: self = .spm
    case 0x5253, 0x535242: self = .srb
    case 0x5353, 0x535344: self = .ssd
    case 0x5354, 0x535450: self = .stp
    case 0x5352, 0x535552: self = .sur
    case 0x534b, 0x53564b: self = .svk
    case 0x5349, 0x53564e: self = .svn
    case 0x5345, 0x535745: self = .swe
    case 0x535a, 0x53575a: self = .swz
    case 0x5358, 0x53584d: self = .sxm
    case 0x5343, 0x535943: self = .syc
    case 0x5359, 0x535952: self = .syr
    case 0x5443, 0x544341: self = .tca
    case 0x5444, 0x544344: self = .tcd
    case 0x5447, 0x54474f: self = .tgo
    case 0x5448, 0x544841: self = .tha
    case 0x544a, 0x544a4b: self = .tjk
    case 0x544b, 0x544b4c: self = .tkl
    case 0x544d, 0x544b4d: self = .tkm
    case 0x544c, 0x544c53: self = .tls
    case 0x544f, 0x544f4e: self = .ton
    case 0x5454, 0x54544f: self = .tto
    case 0x544e, 0x54554e: self = .tun
    case 0x5452, 0x545552: self = .tur
    case 0x5456, 0x545556: self = .tuv
    case 0x5457, 0x54574e: self = .twn
    case 0x545a, 0x545a41: self = .tza
    case 0x5547, 0x554741: self = .uga
    case 0x5541, 0x554b52: self = .ukr
    case 0x554d, 0x554d49: self = .umi
    case 0x5559, 0x555259: self = .ury
    case 0x5553, 0x555341: self = .usa
    case 0x555a, 0x555a42: self = .uzb
    case 0x5641, 0x564154: self = .vat
    case 0x5643, 0x564354: self = .vct
    case 0x5645, 0x56454e: self = .ven
    case 0x5647, 0x564742: self = .vgb
    case 0x5649, 0x564952: self = .vir
    case 0x564e, 0x564e4d: self = .vnm
    case 0x5655, 0x565554: self = .vut
    case 0x5746, 0x574c46: self = .wlf
    case 0x5753, 0x57534d: self = .wsm
    case 0x5945, 0x59454d: self = .yem
    case 0x5a41, 0x5a4146: self = .zaf
    case 0x5a4d, 0x5a4d42: self = .zmb
    case 0x5a57, 0x5a5745: self = .zwe
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
