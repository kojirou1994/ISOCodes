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
    case 0x6177: self = .abw
    case 0x6166: self = .afg
    case 0x616f: self = .ago
    case 0x6169: self = .aia
    case 0x6178: self = .ala
    case 0x616c: self = .alb
    case 0x6164: self = .and
    case 0x6165: self = .are
    case 0x6172: self = .arg
    case 0x616d: self = .arm
    case 0x6173: self = .asm
    case 0x6171: self = .ata
    case 0x7466: self = .atf
    case 0x6167: self = .atg
    case 0x6175: self = .aus
    case 0x6174: self = .aut
    case 0x617a: self = .aze
    case 0x6269: self = .bdi
    case 0x6265: self = .bel
    case 0x626a: self = .ben
    case 0x6271: self = .bes
    case 0x6266: self = .bfa
    case 0x6264: self = .bgd
    case 0x6267: self = .bgr
    case 0x6268: self = .bhr
    case 0x6273: self = .bhs
    case 0x6261: self = .bih
    case 0x626c: self = .blm
    case 0x6279: self = .blr
    case 0x627a: self = .blz
    case 0x626d: self = .bmu
    case 0x626f: self = .bol
    case 0x6272: self = .bra
    case 0x6262: self = .brb
    case 0x626e: self = .brn
    case 0x6274: self = .btn
    case 0x6276: self = .bvt
    case 0x6277: self = .bwa
    case 0x6366: self = .caf
    case 0x6361: self = .can
    case 0x6363: self = .cck
    case 0x6368: self = .che
    case 0x636c: self = .chl
    case 0x636e: self = .chn
    case 0x6369: self = .civ
    case 0x636d: self = .cmr
    case 0x6364: self = .cod
    case 0x6367: self = .cog
    case 0x636b: self = .cok
    case 0x636f: self = .col
    case 0x6b6d: self = .com
    case 0x6376: self = .cpv
    case 0x6372: self = .cri
    case 0x6375: self = .cub
    case 0x6377: self = .cuw
    case 0x6378: self = .cxr
    case 0x6b79: self = .cym
    case 0x6379: self = .cyp
    case 0x637a: self = .cze
    case 0x6465: self = .deu
    case 0x646a: self = .dji
    case 0x646d: self = .dma
    case 0x646b: self = .dnk
    case 0x646f: self = .dom
    case 0x647a: self = .dza
    case 0x6563: self = .ecu
    case 0x6567: self = .egy
    case 0x6572: self = .eri
    case 0x6568: self = .esh
    case 0x6573: self = .esp
    case 0x6565: self = .est
    case 0x6574: self = .eth
    case 0x6669: self = .fin
    case 0x666a: self = .fji
    case 0x666b: self = .flk
    case 0x6672: self = .fra
    case 0x666f: self = .fro
    case 0x666d: self = .fsm
    case 0x6761: self = .gab
    case 0x6762: self = .gbr
    case 0x6765: self = .geo
    case 0x6767: self = .ggy
    case 0x6768: self = .gha
    case 0x6769: self = .gib
    case 0x676e: self = .gin
    case 0x6770: self = .glp
    case 0x676d: self = .gmb
    case 0x6777: self = .gnb
    case 0x6771: self = .gnq
    case 0x6772: self = .grc
    case 0x6764: self = .grd
    case 0x676c: self = .grl
    case 0x6774: self = .gtm
    case 0x6766: self = .guf
    case 0x6775: self = .gum
    case 0x6779: self = .guy
    case 0x686b: self = .hkg
    case 0x686d: self = .hmd
    case 0x686e: self = .hnd
    case 0x6872: self = .hrv
    case 0x6874: self = .hti
    case 0x6875: self = .hun
    case 0x6964: self = .idn
    case 0x696d: self = .imn
    case 0x696e: self = .ind
    case 0x696f: self = .iot
    case 0x6965: self = .irl
    case 0x6972: self = .irn
    case 0x6971: self = .irq
    case 0x6973: self = .isl
    case 0x696c: self = .isr
    case 0x6974: self = .ita
    case 0x6a6d: self = .jam
    case 0x6a65: self = .jey
    case 0x6a6f: self = .jor
    case 0x6a70: self = .jpn
    case 0x6b7a: self = .kaz
    case 0x6b65: self = .ken
    case 0x6b67: self = .kgz
    case 0x6b68: self = .khm
    case 0x6b69: self = .kir
    case 0x6b6e: self = .kna
    case 0x6b72: self = .kor
    case 0x6b77: self = .kwt
    case 0x6c61: self = .lao
    case 0x6c62: self = .lbn
    case 0x6c72: self = .lbr
    case 0x6c79: self = .lby
    case 0x6c63: self = .lca
    case 0x6c69: self = .lie
    case 0x6c6b: self = .lka
    case 0x6c73: self = .lso
    case 0x6c74: self = .ltu
    case 0x6c75: self = .lux
    case 0x6c76: self = .lva
    case 0x6d6f: self = .mac
    case 0x6d66: self = .maf
    case 0x6d61: self = .mar
    case 0x6d63: self = .mco
    case 0x6d64: self = .mda
    case 0x6d67: self = .mdg
    case 0x6d76: self = .mdv
    case 0x6d78: self = .mex
    case 0x6d68: self = .mhl
    case 0x6d6b: self = .mkd
    case 0x6d6c: self = .mli
    case 0x6d74: self = .mlt
    case 0x6d6d: self = .mmr
    case 0x6d65: self = .mne
    case 0x6d6e: self = .mng
    case 0x6d70: self = .mnp
    case 0x6d7a: self = .moz
    case 0x6d72: self = .mrt
    case 0x6d73: self = .msr
    case 0x6d71: self = .mtq
    case 0x6d75: self = .mus
    case 0x6d77: self = .mwi
    case 0x6d79: self = .mys
    case 0x7974: self = .myt
    case 0x6e61: self = .nam
    case 0x6e63: self = .ncl
    case 0x6e65: self = .ner
    case 0x6e66: self = .nfk
    case 0x6e67: self = .nga
    case 0x6e69: self = .nic
    case 0x6e75: self = .niu
    case 0x6e6c: self = .nld
    case 0x6e6f: self = .nor
    case 0x6e70: self = .npl
    case 0x6e72: self = .nru
    case 0x6e7a: self = .nzl
    case 0x6f6d: self = .omn
    case 0x706b: self = .pak
    case 0x7061: self = .pan
    case 0x706e: self = .pcn
    case 0x7065: self = .per
    case 0x7068: self = .phl
    case 0x7077: self = .plw
    case 0x7067: self = .png
    case 0x706c: self = .pol
    case 0x7072: self = .pri
    case 0x6b70: self = .prk
    case 0x7074: self = .prt
    case 0x7079: self = .pry
    case 0x7073: self = .pse
    case 0x7066: self = .pyf
    case 0x7161: self = .qat
    case 0x7265: self = .reu
    case 0x726f: self = .rou
    case 0x7275: self = .rus
    case 0x7277: self = .rwa
    case 0x7361: self = .sau
    case 0x7364: self = .sdn
    case 0x736e: self = .sen
    case 0x7367: self = .sgp
    case 0x6773: self = .sgs
    case 0x7368: self = .shn
    case 0x736a: self = .sjm
    case 0x7362: self = .slb
    case 0x736c: self = .sle
    case 0x7376: self = .slv
    case 0x736d: self = .smr
    case 0x736f: self = .som
    case 0x706d: self = .spm
    case 0x7273: self = .srb
    case 0x7373: self = .ssd
    case 0x7374: self = .stp
    case 0x7372: self = .sur
    case 0x736b: self = .svk
    case 0x7369: self = .svn
    case 0x7365: self = .swe
    case 0x737a: self = .swz
    case 0x7378: self = .sxm
    case 0x7363: self = .syc
    case 0x7379: self = .syr
    case 0x7463: self = .tca
    case 0x7464: self = .tcd
    case 0x7467: self = .tgo
    case 0x7468: self = .tha
    case 0x746a: self = .tjk
    case 0x746b: self = .tkl
    case 0x746d: self = .tkm
    case 0x746c: self = .tls
    case 0x746f: self = .ton
    case 0x7474: self = .tto
    case 0x746e: self = .tun
    case 0x7472: self = .tur
    case 0x7476: self = .tuv
    case 0x7477: self = .twn
    case 0x747a: self = .tza
    case 0x7567: self = .uga
    case 0x7561: self = .ukr
    case 0x756d: self = .umi
    case 0x7579: self = .ury
    case 0x7573: self = .usa
    case 0x757a: self = .uzb
    case 0x7661: self = .vat
    case 0x7663: self = .vct
    case 0x7665: self = .ven
    case 0x7667: self = .vgb
    case 0x7669: self = .vir
    case 0x766e: self = .vnm
    case 0x7675: self = .vut
    case 0x7766: self = .wlf
    case 0x7773: self = .wsm
    case 0x7965: self = .yem
    case 0x7a61: self = .zaf
    case 0x7a6d: self = .zmb
    case 0x7a77: self = .zwe
    default: return nil
    }
  }

  public init?(alpha3Code: String) {
    guard let asciiUIntCode = alpha3Code.threeCharToUInt32 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x616277: self = .abw
    case 0x616667: self = .afg
    case 0x61676f: self = .ago
    case 0x616961: self = .aia
    case 0x616c61: self = .ala
    case 0x616c62: self = .alb
    case 0x616e64: self = .and
    case 0x617265: self = .are
    case 0x617267: self = .arg
    case 0x61726d: self = .arm
    case 0x61736d: self = .asm
    case 0x617461: self = .ata
    case 0x617466: self = .atf
    case 0x617467: self = .atg
    case 0x617573: self = .aus
    case 0x617574: self = .aut
    case 0x617a65: self = .aze
    case 0x626469: self = .bdi
    case 0x62656c: self = .bel
    case 0x62656e: self = .ben
    case 0x626573: self = .bes
    case 0x626661: self = .bfa
    case 0x626764: self = .bgd
    case 0x626772: self = .bgr
    case 0x626872: self = .bhr
    case 0x626873: self = .bhs
    case 0x626968: self = .bih
    case 0x626c6d: self = .blm
    case 0x626c72: self = .blr
    case 0x626c7a: self = .blz
    case 0x626d75: self = .bmu
    case 0x626f6c: self = .bol
    case 0x627261: self = .bra
    case 0x627262: self = .brb
    case 0x62726e: self = .brn
    case 0x62746e: self = .btn
    case 0x627674: self = .bvt
    case 0x627761: self = .bwa
    case 0x636166: self = .caf
    case 0x63616e: self = .can
    case 0x63636b: self = .cck
    case 0x636865: self = .che
    case 0x63686c: self = .chl
    case 0x63686e: self = .chn
    case 0x636976: self = .civ
    case 0x636d72: self = .cmr
    case 0x636f64: self = .cod
    case 0x636f67: self = .cog
    case 0x636f6b: self = .cok
    case 0x636f6c: self = .col
    case 0x636f6d: self = .com
    case 0x637076: self = .cpv
    case 0x637269: self = .cri
    case 0x637562: self = .cub
    case 0x637577: self = .cuw
    case 0x637872: self = .cxr
    case 0x63796d: self = .cym
    case 0x637970: self = .cyp
    case 0x637a65: self = .cze
    case 0x646575: self = .deu
    case 0x646a69: self = .dji
    case 0x646d61: self = .dma
    case 0x646e6b: self = .dnk
    case 0x646f6d: self = .dom
    case 0x647a61: self = .dza
    case 0x656375: self = .ecu
    case 0x656779: self = .egy
    case 0x657269: self = .eri
    case 0x657368: self = .esh
    case 0x657370: self = .esp
    case 0x657374: self = .est
    case 0x657468: self = .eth
    case 0x66696e: self = .fin
    case 0x666a69: self = .fji
    case 0x666c6b: self = .flk
    case 0x667261: self = .fra
    case 0x66726f: self = .fro
    case 0x66736d: self = .fsm
    case 0x676162: self = .gab
    case 0x676272: self = .gbr
    case 0x67656f: self = .geo
    case 0x676779: self = .ggy
    case 0x676861: self = .gha
    case 0x676962: self = .gib
    case 0x67696e: self = .gin
    case 0x676c70: self = .glp
    case 0x676d62: self = .gmb
    case 0x676e62: self = .gnb
    case 0x676e71: self = .gnq
    case 0x677263: self = .grc
    case 0x677264: self = .grd
    case 0x67726c: self = .grl
    case 0x67746d: self = .gtm
    case 0x677566: self = .guf
    case 0x67756d: self = .gum
    case 0x677579: self = .guy
    case 0x686b67: self = .hkg
    case 0x686d64: self = .hmd
    case 0x686e64: self = .hnd
    case 0x687276: self = .hrv
    case 0x687469: self = .hti
    case 0x68756e: self = .hun
    case 0x69646e: self = .idn
    case 0x696d6e: self = .imn
    case 0x696e64: self = .ind
    case 0x696f74: self = .iot
    case 0x69726c: self = .irl
    case 0x69726e: self = .irn
    case 0x697271: self = .irq
    case 0x69736c: self = .isl
    case 0x697372: self = .isr
    case 0x697461: self = .ita
    case 0x6a616d: self = .jam
    case 0x6a6579: self = .jey
    case 0x6a6f72: self = .jor
    case 0x6a706e: self = .jpn
    case 0x6b617a: self = .kaz
    case 0x6b656e: self = .ken
    case 0x6b677a: self = .kgz
    case 0x6b686d: self = .khm
    case 0x6b6972: self = .kir
    case 0x6b6e61: self = .kna
    case 0x6b6f72: self = .kor
    case 0x6b7774: self = .kwt
    case 0x6c616f: self = .lao
    case 0x6c626e: self = .lbn
    case 0x6c6272: self = .lbr
    case 0x6c6279: self = .lby
    case 0x6c6361: self = .lca
    case 0x6c6965: self = .lie
    case 0x6c6b61: self = .lka
    case 0x6c736f: self = .lso
    case 0x6c7475: self = .ltu
    case 0x6c7578: self = .lux
    case 0x6c7661: self = .lva
    case 0x6d6163: self = .mac
    case 0x6d6166: self = .maf
    case 0x6d6172: self = .mar
    case 0x6d636f: self = .mco
    case 0x6d6461: self = .mda
    case 0x6d6467: self = .mdg
    case 0x6d6476: self = .mdv
    case 0x6d6578: self = .mex
    case 0x6d686c: self = .mhl
    case 0x6d6b64: self = .mkd
    case 0x6d6c69: self = .mli
    case 0x6d6c74: self = .mlt
    case 0x6d6d72: self = .mmr
    case 0x6d6e65: self = .mne
    case 0x6d6e67: self = .mng
    case 0x6d6e70: self = .mnp
    case 0x6d6f7a: self = .moz
    case 0x6d7274: self = .mrt
    case 0x6d7372: self = .msr
    case 0x6d7471: self = .mtq
    case 0x6d7573: self = .mus
    case 0x6d7769: self = .mwi
    case 0x6d7973: self = .mys
    case 0x6d7974: self = .myt
    case 0x6e616d: self = .nam
    case 0x6e636c: self = .ncl
    case 0x6e6572: self = .ner
    case 0x6e666b: self = .nfk
    case 0x6e6761: self = .nga
    case 0x6e6963: self = .nic
    case 0x6e6975: self = .niu
    case 0x6e6c64: self = .nld
    case 0x6e6f72: self = .nor
    case 0x6e706c: self = .npl
    case 0x6e7275: self = .nru
    case 0x6e7a6c: self = .nzl
    case 0x6f6d6e: self = .omn
    case 0x70616b: self = .pak
    case 0x70616e: self = .pan
    case 0x70636e: self = .pcn
    case 0x706572: self = .per
    case 0x70686c: self = .phl
    case 0x706c77: self = .plw
    case 0x706e67: self = .png
    case 0x706f6c: self = .pol
    case 0x707269: self = .pri
    case 0x70726b: self = .prk
    case 0x707274: self = .prt
    case 0x707279: self = .pry
    case 0x707365: self = .pse
    case 0x707966: self = .pyf
    case 0x716174: self = .qat
    case 0x726575: self = .reu
    case 0x726f75: self = .rou
    case 0x727573: self = .rus
    case 0x727761: self = .rwa
    case 0x736175: self = .sau
    case 0x73646e: self = .sdn
    case 0x73656e: self = .sen
    case 0x736770: self = .sgp
    case 0x736773: self = .sgs
    case 0x73686e: self = .shn
    case 0x736a6d: self = .sjm
    case 0x736c62: self = .slb
    case 0x736c65: self = .sle
    case 0x736c76: self = .slv
    case 0x736d72: self = .smr
    case 0x736f6d: self = .som
    case 0x73706d: self = .spm
    case 0x737262: self = .srb
    case 0x737364: self = .ssd
    case 0x737470: self = .stp
    case 0x737572: self = .sur
    case 0x73766b: self = .svk
    case 0x73766e: self = .svn
    case 0x737765: self = .swe
    case 0x73777a: self = .swz
    case 0x73786d: self = .sxm
    case 0x737963: self = .syc
    case 0x737972: self = .syr
    case 0x746361: self = .tca
    case 0x746364: self = .tcd
    case 0x74676f: self = .tgo
    case 0x746861: self = .tha
    case 0x746a6b: self = .tjk
    case 0x746b6c: self = .tkl
    case 0x746b6d: self = .tkm
    case 0x746c73: self = .tls
    case 0x746f6e: self = .ton
    case 0x74746f: self = .tto
    case 0x74756e: self = .tun
    case 0x747572: self = .tur
    case 0x747576: self = .tuv
    case 0x74776e: self = .twn
    case 0x747a61: self = .tza
    case 0x756761: self = .uga
    case 0x756b72: self = .ukr
    case 0x756d69: self = .umi
    case 0x757279: self = .ury
    case 0x757361: self = .usa
    case 0x757a62: self = .uzb
    case 0x766174: self = .vat
    case 0x766374: self = .vct
    case 0x76656e: self = .ven
    case 0x766762: self = .vgb
    case 0x766972: self = .vir
    case 0x766e6d: self = .vnm
    case 0x767574: self = .vut
    case 0x776c66: self = .wlf
    case 0x77736d: self = .wsm
    case 0x79656d: self = .yem
    case 0x7a6166: self = .zaf
    case 0x7a6d62: self = .zmb
    case 0x7a7765: self = .zwe
    default: return nil
    }
  }

  public init?(string: String) {
    guard let asciiUIntCode = string.twoOrThreeCharToUInt32 else {
      return nil
    }
    switch asciiUIntCode {
    case 0x6177, 0x616277: self = .abw
    case 0x6166, 0x616667: self = .afg
    case 0x616f, 0x61676f: self = .ago
    case 0x6169, 0x616961: self = .aia
    case 0x6178, 0x616c61: self = .ala
    case 0x616c, 0x616c62: self = .alb
    case 0x6164, 0x616e64: self = .and
    case 0x6165, 0x617265: self = .are
    case 0x6172, 0x617267: self = .arg
    case 0x616d, 0x61726d: self = .arm
    case 0x6173, 0x61736d: self = .asm
    case 0x6171, 0x617461: self = .ata
    case 0x7466, 0x617466: self = .atf
    case 0x6167, 0x617467: self = .atg
    case 0x6175, 0x617573: self = .aus
    case 0x6174, 0x617574: self = .aut
    case 0x617a, 0x617a65: self = .aze
    case 0x6269, 0x626469: self = .bdi
    case 0x6265, 0x62656c: self = .bel
    case 0x626a, 0x62656e: self = .ben
    case 0x6271, 0x626573: self = .bes
    case 0x6266, 0x626661: self = .bfa
    case 0x6264, 0x626764: self = .bgd
    case 0x6267, 0x626772: self = .bgr
    case 0x6268, 0x626872: self = .bhr
    case 0x6273, 0x626873: self = .bhs
    case 0x6261, 0x626968: self = .bih
    case 0x626c, 0x626c6d: self = .blm
    case 0x6279, 0x626c72: self = .blr
    case 0x627a, 0x626c7a: self = .blz
    case 0x626d, 0x626d75: self = .bmu
    case 0x626f, 0x626f6c: self = .bol
    case 0x6272, 0x627261: self = .bra
    case 0x6262, 0x627262: self = .brb
    case 0x626e, 0x62726e: self = .brn
    case 0x6274, 0x62746e: self = .btn
    case 0x6276, 0x627674: self = .bvt
    case 0x6277, 0x627761: self = .bwa
    case 0x6366, 0x636166: self = .caf
    case 0x6361, 0x63616e: self = .can
    case 0x6363, 0x63636b: self = .cck
    case 0x6368, 0x636865: self = .che
    case 0x636c, 0x63686c: self = .chl
    case 0x636e, 0x63686e: self = .chn
    case 0x6369, 0x636976: self = .civ
    case 0x636d, 0x636d72: self = .cmr
    case 0x6364, 0x636f64: self = .cod
    case 0x6367, 0x636f67: self = .cog
    case 0x636b, 0x636f6b: self = .cok
    case 0x636f, 0x636f6c: self = .col
    case 0x6b6d, 0x636f6d: self = .com
    case 0x6376, 0x637076: self = .cpv
    case 0x6372, 0x637269: self = .cri
    case 0x6375, 0x637562: self = .cub
    case 0x6377, 0x637577: self = .cuw
    case 0x6378, 0x637872: self = .cxr
    case 0x6b79, 0x63796d: self = .cym
    case 0x6379, 0x637970: self = .cyp
    case 0x637a, 0x637a65: self = .cze
    case 0x6465, 0x646575: self = .deu
    case 0x646a, 0x646a69: self = .dji
    case 0x646d, 0x646d61: self = .dma
    case 0x646b, 0x646e6b: self = .dnk
    case 0x646f, 0x646f6d: self = .dom
    case 0x647a, 0x647a61: self = .dza
    case 0x6563, 0x656375: self = .ecu
    case 0x6567, 0x656779: self = .egy
    case 0x6572, 0x657269: self = .eri
    case 0x6568, 0x657368: self = .esh
    case 0x6573, 0x657370: self = .esp
    case 0x6565, 0x657374: self = .est
    case 0x6574, 0x657468: self = .eth
    case 0x6669, 0x66696e: self = .fin
    case 0x666a, 0x666a69: self = .fji
    case 0x666b, 0x666c6b: self = .flk
    case 0x6672, 0x667261: self = .fra
    case 0x666f, 0x66726f: self = .fro
    case 0x666d, 0x66736d: self = .fsm
    case 0x6761, 0x676162: self = .gab
    case 0x6762, 0x676272: self = .gbr
    case 0x6765, 0x67656f: self = .geo
    case 0x6767, 0x676779: self = .ggy
    case 0x6768, 0x676861: self = .gha
    case 0x6769, 0x676962: self = .gib
    case 0x676e, 0x67696e: self = .gin
    case 0x6770, 0x676c70: self = .glp
    case 0x676d, 0x676d62: self = .gmb
    case 0x6777, 0x676e62: self = .gnb
    case 0x6771, 0x676e71: self = .gnq
    case 0x6772, 0x677263: self = .grc
    case 0x6764, 0x677264: self = .grd
    case 0x676c, 0x67726c: self = .grl
    case 0x6774, 0x67746d: self = .gtm
    case 0x6766, 0x677566: self = .guf
    case 0x6775, 0x67756d: self = .gum
    case 0x6779, 0x677579: self = .guy
    case 0x686b, 0x686b67: self = .hkg
    case 0x686d, 0x686d64: self = .hmd
    case 0x686e, 0x686e64: self = .hnd
    case 0x6872, 0x687276: self = .hrv
    case 0x6874, 0x687469: self = .hti
    case 0x6875, 0x68756e: self = .hun
    case 0x6964, 0x69646e: self = .idn
    case 0x696d, 0x696d6e: self = .imn
    case 0x696e, 0x696e64: self = .ind
    case 0x696f, 0x696f74: self = .iot
    case 0x6965, 0x69726c: self = .irl
    case 0x6972, 0x69726e: self = .irn
    case 0x6971, 0x697271: self = .irq
    case 0x6973, 0x69736c: self = .isl
    case 0x696c, 0x697372: self = .isr
    case 0x6974, 0x697461: self = .ita
    case 0x6a6d, 0x6a616d: self = .jam
    case 0x6a65, 0x6a6579: self = .jey
    case 0x6a6f, 0x6a6f72: self = .jor
    case 0x6a70, 0x6a706e: self = .jpn
    case 0x6b7a, 0x6b617a: self = .kaz
    case 0x6b65, 0x6b656e: self = .ken
    case 0x6b67, 0x6b677a: self = .kgz
    case 0x6b68, 0x6b686d: self = .khm
    case 0x6b69, 0x6b6972: self = .kir
    case 0x6b6e, 0x6b6e61: self = .kna
    case 0x6b72, 0x6b6f72: self = .kor
    case 0x6b77, 0x6b7774: self = .kwt
    case 0x6c61, 0x6c616f: self = .lao
    case 0x6c62, 0x6c626e: self = .lbn
    case 0x6c72, 0x6c6272: self = .lbr
    case 0x6c79, 0x6c6279: self = .lby
    case 0x6c63, 0x6c6361: self = .lca
    case 0x6c69, 0x6c6965: self = .lie
    case 0x6c6b, 0x6c6b61: self = .lka
    case 0x6c73, 0x6c736f: self = .lso
    case 0x6c74, 0x6c7475: self = .ltu
    case 0x6c75, 0x6c7578: self = .lux
    case 0x6c76, 0x6c7661: self = .lva
    case 0x6d6f, 0x6d6163: self = .mac
    case 0x6d66, 0x6d6166: self = .maf
    case 0x6d61, 0x6d6172: self = .mar
    case 0x6d63, 0x6d636f: self = .mco
    case 0x6d64, 0x6d6461: self = .mda
    case 0x6d67, 0x6d6467: self = .mdg
    case 0x6d76, 0x6d6476: self = .mdv
    case 0x6d78, 0x6d6578: self = .mex
    case 0x6d68, 0x6d686c: self = .mhl
    case 0x6d6b, 0x6d6b64: self = .mkd
    case 0x6d6c, 0x6d6c69: self = .mli
    case 0x6d74, 0x6d6c74: self = .mlt
    case 0x6d6d, 0x6d6d72: self = .mmr
    case 0x6d65, 0x6d6e65: self = .mne
    case 0x6d6e, 0x6d6e67: self = .mng
    case 0x6d70, 0x6d6e70: self = .mnp
    case 0x6d7a, 0x6d6f7a: self = .moz
    case 0x6d72, 0x6d7274: self = .mrt
    case 0x6d73, 0x6d7372: self = .msr
    case 0x6d71, 0x6d7471: self = .mtq
    case 0x6d75, 0x6d7573: self = .mus
    case 0x6d77, 0x6d7769: self = .mwi
    case 0x6d79, 0x6d7973: self = .mys
    case 0x7974, 0x6d7974: self = .myt
    case 0x6e61, 0x6e616d: self = .nam
    case 0x6e63, 0x6e636c: self = .ncl
    case 0x6e65, 0x6e6572: self = .ner
    case 0x6e66, 0x6e666b: self = .nfk
    case 0x6e67, 0x6e6761: self = .nga
    case 0x6e69, 0x6e6963: self = .nic
    case 0x6e75, 0x6e6975: self = .niu
    case 0x6e6c, 0x6e6c64: self = .nld
    case 0x6e6f, 0x6e6f72: self = .nor
    case 0x6e70, 0x6e706c: self = .npl
    case 0x6e72, 0x6e7275: self = .nru
    case 0x6e7a, 0x6e7a6c: self = .nzl
    case 0x6f6d, 0x6f6d6e: self = .omn
    case 0x706b, 0x70616b: self = .pak
    case 0x7061, 0x70616e: self = .pan
    case 0x706e, 0x70636e: self = .pcn
    case 0x7065, 0x706572: self = .per
    case 0x7068, 0x70686c: self = .phl
    case 0x7077, 0x706c77: self = .plw
    case 0x7067, 0x706e67: self = .png
    case 0x706c, 0x706f6c: self = .pol
    case 0x7072, 0x707269: self = .pri
    case 0x6b70, 0x70726b: self = .prk
    case 0x7074, 0x707274: self = .prt
    case 0x7079, 0x707279: self = .pry
    case 0x7073, 0x707365: self = .pse
    case 0x7066, 0x707966: self = .pyf
    case 0x7161, 0x716174: self = .qat
    case 0x7265, 0x726575: self = .reu
    case 0x726f, 0x726f75: self = .rou
    case 0x7275, 0x727573: self = .rus
    case 0x7277, 0x727761: self = .rwa
    case 0x7361, 0x736175: self = .sau
    case 0x7364, 0x73646e: self = .sdn
    case 0x736e, 0x73656e: self = .sen
    case 0x7367, 0x736770: self = .sgp
    case 0x6773, 0x736773: self = .sgs
    case 0x7368, 0x73686e: self = .shn
    case 0x736a, 0x736a6d: self = .sjm
    case 0x7362, 0x736c62: self = .slb
    case 0x736c, 0x736c65: self = .sle
    case 0x7376, 0x736c76: self = .slv
    case 0x736d, 0x736d72: self = .smr
    case 0x736f, 0x736f6d: self = .som
    case 0x706d, 0x73706d: self = .spm
    case 0x7273, 0x737262: self = .srb
    case 0x7373, 0x737364: self = .ssd
    case 0x7374, 0x737470: self = .stp
    case 0x7372, 0x737572: self = .sur
    case 0x736b, 0x73766b: self = .svk
    case 0x7369, 0x73766e: self = .svn
    case 0x7365, 0x737765: self = .swe
    case 0x737a, 0x73777a: self = .swz
    case 0x7378, 0x73786d: self = .sxm
    case 0x7363, 0x737963: self = .syc
    case 0x7379, 0x737972: self = .syr
    case 0x7463, 0x746361: self = .tca
    case 0x7464, 0x746364: self = .tcd
    case 0x7467, 0x74676f: self = .tgo
    case 0x7468, 0x746861: self = .tha
    case 0x746a, 0x746a6b: self = .tjk
    case 0x746b, 0x746b6c: self = .tkl
    case 0x746d, 0x746b6d: self = .tkm
    case 0x746c, 0x746c73: self = .tls
    case 0x746f, 0x746f6e: self = .ton
    case 0x7474, 0x74746f: self = .tto
    case 0x746e, 0x74756e: self = .tun
    case 0x7472, 0x747572: self = .tur
    case 0x7476, 0x747576: self = .tuv
    case 0x7477, 0x74776e: self = .twn
    case 0x747a, 0x747a61: self = .tza
    case 0x7567, 0x756761: self = .uga
    case 0x7561, 0x756b72: self = .ukr
    case 0x756d, 0x756d69: self = .umi
    case 0x7579, 0x757279: self = .ury
    case 0x7573, 0x757361: self = .usa
    case 0x757a, 0x757a62: self = .uzb
    case 0x7661, 0x766174: self = .vat
    case 0x7663, 0x766374: self = .vct
    case 0x7665, 0x76656e: self = .ven
    case 0x7667, 0x766762: self = .vgb
    case 0x7669, 0x766972: self = .vir
    case 0x766e, 0x766e6d: self = .vnm
    case 0x7675, 0x767574: self = .vut
    case 0x7766, 0x776c66: self = .wlf
    case 0x7773, 0x77736d: self = .wsm
    case 0x7965, 0x79656d: self = .yem
    case 0x7a61, 0x7a6166: self = .zaf
    case 0x7a6d, 0x7a6d62: self = .zmb
    case 0x7a77, 0x7a7765: self = .zwe
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
    case .abw: return "aw"
    case .afg: return "af"
    case .ago: return "ao"
    case .aia: return "ai"
    case .ala: return "ax"
    case .alb: return "al"
    case .and: return "ad"
    case .are: return "ae"
    case .arg: return "ar"
    case .arm: return "am"
    case .asm: return "as"
    case .ata: return "aq"
    case .atf: return "tf"
    case .atg: return "ag"
    case .aus: return "au"
    case .aut: return "at"
    case .aze: return "az"
    case .bdi: return "bi"
    case .bel: return "be"
    case .ben: return "bj"
    case .bes: return "bq"
    case .bfa: return "bf"
    case .bgd: return "bd"
    case .bgr: return "bg"
    case .bhr: return "bh"
    case .bhs: return "bs"
    case .bih: return "ba"
    case .blm: return "bl"
    case .blr: return "by"
    case .blz: return "bz"
    case .bmu: return "bm"
    case .bol: return "bo"
    case .bra: return "br"
    case .brb: return "bb"
    case .brn: return "bn"
    case .btn: return "bt"
    case .bvt: return "bv"
    case .bwa: return "bw"
    case .caf: return "cf"
    case .can: return "ca"
    case .cck: return "cc"
    case .che: return "ch"
    case .chl: return "cl"
    case .chn: return "cn"
    case .civ: return "ci"
    case .cmr: return "cm"
    case .cod: return "cd"
    case .cog: return "cg"
    case .cok: return "ck"
    case .col: return "co"
    case .com: return "km"
    case .cpv: return "cv"
    case .cri: return "cr"
    case .cub: return "cu"
    case .cuw: return "cw"
    case .cxr: return "cx"
    case .cym: return "ky"
    case .cyp: return "cy"
    case .cze: return "cz"
    case .deu: return "de"
    case .dji: return "dj"
    case .dma: return "dm"
    case .dnk: return "dk"
    case .dom: return "do"
    case .dza: return "dz"
    case .ecu: return "ec"
    case .egy: return "eg"
    case .eri: return "er"
    case .esh: return "eh"
    case .esp: return "es"
    case .est: return "ee"
    case .eth: return "et"
    case .fin: return "fi"
    case .fji: return "fj"
    case .flk: return "fk"
    case .fra: return "fr"
    case .fro: return "fo"
    case .fsm: return "fm"
    case .gab: return "ga"
    case .gbr: return "gb"
    case .geo: return "ge"
    case .ggy: return "gg"
    case .gha: return "gh"
    case .gib: return "gi"
    case .gin: return "gn"
    case .glp: return "gp"
    case .gmb: return "gm"
    case .gnb: return "gw"
    case .gnq: return "gq"
    case .grc: return "gr"
    case .grd: return "gd"
    case .grl: return "gl"
    case .gtm: return "gt"
    case .guf: return "gf"
    case .gum: return "gu"
    case .guy: return "gy"
    case .hkg: return "hk"
    case .hmd: return "hm"
    case .hnd: return "hn"
    case .hrv: return "hr"
    case .hti: return "ht"
    case .hun: return "hu"
    case .idn: return "id"
    case .imn: return "im"
    case .ind: return "in"
    case .iot: return "io"
    case .irl: return "ie"
    case .irn: return "ir"
    case .irq: return "iq"
    case .isl: return "is"
    case .isr: return "il"
    case .ita: return "it"
    case .jam: return "jm"
    case .jey: return "je"
    case .jor: return "jo"
    case .jpn: return "jp"
    case .kaz: return "kz"
    case .ken: return "ke"
    case .kgz: return "kg"
    case .khm: return "kh"
    case .kir: return "ki"
    case .kna: return "kn"
    case .kor: return "kr"
    case .kwt: return "kw"
    case .lao: return "la"
    case .lbn: return "lb"
    case .lbr: return "lr"
    case .lby: return "ly"
    case .lca: return "lc"
    case .lie: return "li"
    case .lka: return "lk"
    case .lso: return "ls"
    case .ltu: return "lt"
    case .lux: return "lu"
    case .lva: return "lv"
    case .mac: return "mo"
    case .maf: return "mf"
    case .mar: return "ma"
    case .mco: return "mc"
    case .mda: return "md"
    case .mdg: return "mg"
    case .mdv: return "mv"
    case .mex: return "mx"
    case .mhl: return "mh"
    case .mkd: return "mk"
    case .mli: return "ml"
    case .mlt: return "mt"
    case .mmr: return "mm"
    case .mne: return "me"
    case .mng: return "mn"
    case .mnp: return "mp"
    case .moz: return "mz"
    case .mrt: return "mr"
    case .msr: return "ms"
    case .mtq: return "mq"
    case .mus: return "mu"
    case .mwi: return "mw"
    case .mys: return "my"
    case .myt: return "yt"
    case .nam: return "na"
    case .ncl: return "nc"
    case .ner: return "ne"
    case .nfk: return "nf"
    case .nga: return "ng"
    case .nic: return "ni"
    case .niu: return "nu"
    case .nld: return "nl"
    case .nor: return "no"
    case .npl: return "np"
    case .nru: return "nr"
    case .nzl: return "nz"
    case .omn: return "om"
    case .pak: return "pk"
    case .pan: return "pa"
    case .pcn: return "pn"
    case .per: return "pe"
    case .phl: return "ph"
    case .plw: return "pw"
    case .png: return "pg"
    case .pol: return "pl"
    case .pri: return "pr"
    case .prk: return "kp"
    case .prt: return "pt"
    case .pry: return "py"
    case .pse: return "ps"
    case .pyf: return "pf"
    case .qat: return "qa"
    case .reu: return "re"
    case .rou: return "ro"
    case .rus: return "ru"
    case .rwa: return "rw"
    case .sau: return "sa"
    case .sdn: return "sd"
    case .sen: return "sn"
    case .sgp: return "sg"
    case .sgs: return "gs"
    case .shn: return "sh"
    case .sjm: return "sj"
    case .slb: return "sb"
    case .sle: return "sl"
    case .slv: return "sv"
    case .smr: return "sm"
    case .som: return "so"
    case .spm: return "pm"
    case .srb: return "rs"
    case .ssd: return "ss"
    case .stp: return "st"
    case .sur: return "sr"
    case .svk: return "sk"
    case .svn: return "si"
    case .swe: return "se"
    case .swz: return "sz"
    case .sxm: return "sx"
    case .syc: return "sc"
    case .syr: return "sy"
    case .tca: return "tc"
    case .tcd: return "td"
    case .tgo: return "tg"
    case .tha: return "th"
    case .tjk: return "tj"
    case .tkl: return "tk"
    case .tkm: return "tm"
    case .tls: return "tl"
    case .ton: return "to"
    case .tto: return "tt"
    case .tun: return "tn"
    case .tur: return "tr"
    case .tuv: return "tv"
    case .twn: return "tw"
    case .tza: return "tz"
    case .uga: return "ug"
    case .ukr: return "ua"
    case .umi: return "um"
    case .ury: return "uy"
    case .usa: return "us"
    case .uzb: return "uz"
    case .vat: return "va"
    case .vct: return "vc"
    case .ven: return "ve"
    case .vgb: return "vg"
    case .vir: return "vi"
    case .vnm: return "vn"
    case .vut: return "vu"
    case .wlf: return "wf"
    case .wsm: return "ws"
    case .yem: return "ye"
    case .zaf: return "za"
    case .zmb: return "zm"
    case .zwe: return "zw"

    }
  }

  public var alpha3Code: String {
    switch self {
    case .abw: return "abw"
    case .afg: return "afg"
    case .ago: return "ago"
    case .aia: return "aia"
    case .ala: return "ala"
    case .alb: return "alb"
    case .and: return "and"
    case .are: return "are"
    case .arg: return "arg"
    case .arm: return "arm"
    case .asm: return "asm"
    case .ata: return "ata"
    case .atf: return "atf"
    case .atg: return "atg"
    case .aus: return "aus"
    case .aut: return "aut"
    case .aze: return "aze"
    case .bdi: return "bdi"
    case .bel: return "bel"
    case .ben: return "ben"
    case .bes: return "bes"
    case .bfa: return "bfa"
    case .bgd: return "bgd"
    case .bgr: return "bgr"
    case .bhr: return "bhr"
    case .bhs: return "bhs"
    case .bih: return "bih"
    case .blm: return "blm"
    case .blr: return "blr"
    case .blz: return "blz"
    case .bmu: return "bmu"
    case .bol: return "bol"
    case .bra: return "bra"
    case .brb: return "brb"
    case .brn: return "brn"
    case .btn: return "btn"
    case .bvt: return "bvt"
    case .bwa: return "bwa"
    case .caf: return "caf"
    case .can: return "can"
    case .cck: return "cck"
    case .che: return "che"
    case .chl: return "chl"
    case .chn: return "chn"
    case .civ: return "civ"
    case .cmr: return "cmr"
    case .cod: return "cod"
    case .cog: return "cog"
    case .cok: return "cok"
    case .col: return "col"
    case .com: return "com"
    case .cpv: return "cpv"
    case .cri: return "cri"
    case .cub: return "cub"
    case .cuw: return "cuw"
    case .cxr: return "cxr"
    case .cym: return "cym"
    case .cyp: return "cyp"
    case .cze: return "cze"
    case .deu: return "deu"
    case .dji: return "dji"
    case .dma: return "dma"
    case .dnk: return "dnk"
    case .dom: return "dom"
    case .dza: return "dza"
    case .ecu: return "ecu"
    case .egy: return "egy"
    case .eri: return "eri"
    case .esh: return "esh"
    case .esp: return "esp"
    case .est: return "est"
    case .eth: return "eth"
    case .fin: return "fin"
    case .fji: return "fji"
    case .flk: return "flk"
    case .fra: return "fra"
    case .fro: return "fro"
    case .fsm: return "fsm"
    case .gab: return "gab"
    case .gbr: return "gbr"
    case .geo: return "geo"
    case .ggy: return "ggy"
    case .gha: return "gha"
    case .gib: return "gib"
    case .gin: return "gin"
    case .glp: return "glp"
    case .gmb: return "gmb"
    case .gnb: return "gnb"
    case .gnq: return "gnq"
    case .grc: return "grc"
    case .grd: return "grd"
    case .grl: return "grl"
    case .gtm: return "gtm"
    case .guf: return "guf"
    case .gum: return "gum"
    case .guy: return "guy"
    case .hkg: return "hkg"
    case .hmd: return "hmd"
    case .hnd: return "hnd"
    case .hrv: return "hrv"
    case .hti: return "hti"
    case .hun: return "hun"
    case .idn: return "idn"
    case .imn: return "imn"
    case .ind: return "ind"
    case .iot: return "iot"
    case .irl: return "irl"
    case .irn: return "irn"
    case .irq: return "irq"
    case .isl: return "isl"
    case .isr: return "isr"
    case .ita: return "ita"
    case .jam: return "jam"
    case .jey: return "jey"
    case .jor: return "jor"
    case .jpn: return "jpn"
    case .kaz: return "kaz"
    case .ken: return "ken"
    case .kgz: return "kgz"
    case .khm: return "khm"
    case .kir: return "kir"
    case .kna: return "kna"
    case .kor: return "kor"
    case .kwt: return "kwt"
    case .lao: return "lao"
    case .lbn: return "lbn"
    case .lbr: return "lbr"
    case .lby: return "lby"
    case .lca: return "lca"
    case .lie: return "lie"
    case .lka: return "lka"
    case .lso: return "lso"
    case .ltu: return "ltu"
    case .lux: return "lux"
    case .lva: return "lva"
    case .mac: return "mac"
    case .maf: return "maf"
    case .mar: return "mar"
    case .mco: return "mco"
    case .mda: return "mda"
    case .mdg: return "mdg"
    case .mdv: return "mdv"
    case .mex: return "mex"
    case .mhl: return "mhl"
    case .mkd: return "mkd"
    case .mli: return "mli"
    case .mlt: return "mlt"
    case .mmr: return "mmr"
    case .mne: return "mne"
    case .mng: return "mng"
    case .mnp: return "mnp"
    case .moz: return "moz"
    case .mrt: return "mrt"
    case .msr: return "msr"
    case .mtq: return "mtq"
    case .mus: return "mus"
    case .mwi: return "mwi"
    case .mys: return "mys"
    case .myt: return "myt"
    case .nam: return "nam"
    case .ncl: return "ncl"
    case .ner: return "ner"
    case .nfk: return "nfk"
    case .nga: return "nga"
    case .nic: return "nic"
    case .niu: return "niu"
    case .nld: return "nld"
    case .nor: return "nor"
    case .npl: return "npl"
    case .nru: return "nru"
    case .nzl: return "nzl"
    case .omn: return "omn"
    case .pak: return "pak"
    case .pan: return "pan"
    case .pcn: return "pcn"
    case .per: return "per"
    case .phl: return "phl"
    case .plw: return "plw"
    case .png: return "png"
    case .pol: return "pol"
    case .pri: return "pri"
    case .prk: return "prk"
    case .prt: return "prt"
    case .pry: return "pry"
    case .pse: return "pse"
    case .pyf: return "pyf"
    case .qat: return "qat"
    case .reu: return "reu"
    case .rou: return "rou"
    case .rus: return "rus"
    case .rwa: return "rwa"
    case .sau: return "sau"
    case .sdn: return "sdn"
    case .sen: return "sen"
    case .sgp: return "sgp"
    case .sgs: return "sgs"
    case .shn: return "shn"
    case .sjm: return "sjm"
    case .slb: return "slb"
    case .sle: return "sle"
    case .slv: return "slv"
    case .smr: return "smr"
    case .som: return "som"
    case .spm: return "spm"
    case .srb: return "srb"
    case .ssd: return "ssd"
    case .stp: return "stp"
    case .sur: return "sur"
    case .svk: return "svk"
    case .svn: return "svn"
    case .swe: return "swe"
    case .swz: return "swz"
    case .sxm: return "sxm"
    case .syc: return "syc"
    case .syr: return "syr"
    case .tca: return "tca"
    case .tcd: return "tcd"
    case .tgo: return "tgo"
    case .tha: return "tha"
    case .tjk: return "tjk"
    case .tkl: return "tkl"
    case .tkm: return "tkm"
    case .tls: return "tls"
    case .ton: return "ton"
    case .tto: return "tto"
    case .tun: return "tun"
    case .tur: return "tur"
    case .tuv: return "tuv"
    case .twn: return "twn"
    case .tza: return "tza"
    case .uga: return "uga"
    case .ukr: return "ukr"
    case .umi: return "umi"
    case .ury: return "ury"
    case .usa: return "usa"
    case .uzb: return "uzb"
    case .vat: return "vat"
    case .vct: return "vct"
    case .ven: return "ven"
    case .vgb: return "vgb"
    case .vir: return "vir"
    case .vnm: return "vnm"
    case .vut: return "vut"
    case .wlf: return "wlf"
    case .wsm: return "wsm"
    case .yem: return "yem"
    case .zaf: return "zaf"
    case .zmb: return "zmb"
    case .zwe: return "zwe"

    }
  }
}
