public enum LanguageCode: String, CaseIterable {
    case Afar
    case Abkhazian
    case Achinese
    case Acoli
    case Adangme
    case Afrihili
    case Afrikaans
    case Ainu
    case Akan
    case Akkadian
    case Albanian
    case Aleut
    case Amharic
    case Angika
    case Arabic
    case Aragonese
    case Armenian
    case Arapaho
    case Arawak
    case Assamese
    case Avaric
    case Avestan
    case Awadhi
    case Aymara
    case Azerbaijani
    case Bashkir
    case Baluchi
    case Bambara
    case Balinese
    case Basque
    case Basa
    case Belarusian
    case Bemba
    case Bengali
    case Bhojpuri
    case Bikol
    case Bislama
    case Siksika
    case Bosnian
    case Braj
    case Breton
    case Buriat
    case Buginese
    case Bulgarian
    case Burmese
    case Caddo
    case Cebuano
    case Chamorro
    case Chibcha
    case Chechen
    case Chagatai
    case Chinese
    case Chuukese
    case Mari
    case Choctaw
    case Cherokee
    case Chuvash
    case Cheyenne
    case Montenegrin
    case Coptic
    case Cornish
    case Corsican
    case Cree
    case Kashubian
    case Czech
    case Dakota
    case Danish
    case Dargwa
    case Delaware
    case Dogrib
    case Dinka
    case Dogri
    case Duala
    case Dyula
    case Dzongkha
    case Efik
    case Ekajuk
    case Elamite
    case English
    case Esperanto
    case Estonian
    case Ewe
    case Ewondo
    case Fang
    case Faroese
    case Fanti
    case Fijian
    case Finnish
    case Fon
    case French
    case Fulah
    case Friulian
    case Ga
    case Gayo
    case Gbaya
    case Georgian
    case German
    case Geez
    case Gilbertese
    case Irish
    case Galician
    case Manx
    case Gondi
    case Gorontalo
    case Gothic
    case Grebo
    case Guarani
    case Gujarati
    case Haida
    case Hausa
    case Hawaiian
    case Hebrew
    case Herero
    case Hiligaynon
    case Hindi
    case Hittite
    case Croatian
    case Hungarian
    case Hupa
    case Iban
    case Igbo
    case Icelandic
    case Ido
    case Inuktitut
    case Iloko
    case Indonesian
    case Ingush
    case Inupiaq
    case Italian
    case Javanese
    case Lojban
    case Japanese
    case Kabyle
    case Kamba
    case Kannada
    case Kashmiri
    case Kanuri
    case Kawi
    case Kazakh
    case Kabardian
    case Khasi
    case Kinyarwanda
    case Kimbundu
    case Konkani
    case Komi
    case Kongo
    case Korean
    case Kosraean
    case Kpelle
    case Karelian
    case Kurukh
    case Kumyk
    case Kurdish
    case Kutenai
    case Ladino
    case Lahnda
    case Lamba
    case Lao
    case Latin
    case Latvian
    case Lezghian
    case Lingala
    case Lithuanian
    case Mongo
    case Lozi
    case Ganda
    case Luiseno
    case Lunda
    case Lushai
    case Macedonian
    case Madurese
    case Magahi
    case Marshallese
    case Maithili
    case Makasar
    case Malayalam
    case Mandingo
    case Maori
    case Marathi
    case Masai
    case Malay
    case Moksha
    case Mandar
    case Mende
    case Minangkabau
    case Malagasy
    case Maltese
    case Manchu
    case Manipuri
    case Mohawk
    case Mongolian
    case Mossi
    case Creek
    case Mirandese
    case Marwari
    case Erzya
    case Neapolitan
    case Nauru
    case Ndonga
    case Nepali
    case Nias
    case Niuean
    case Nogai
    case Norwegian
    case Nyamwezi
    case Nyankole
    case Nyoro
    case Nzima
    case Ojibwa
    case Oriya
    case Oromo
    case Osage
    case Pangasinan
    case Pahlavi
    case Papiamento
    case Palauan
    case Persian
    case Phoenician
    case Pali
    case Polish
    case Pohnpeian
    case Portuguese
    case Quechua
    case Rajasthani
    case Rapanui
    case Romansh
    case Romany
    case Rundi
    case Russian
    case Sandawe
    case Sango
    case Yakut
    case Sanskrit
    case Sasak
    case Santali
    case Sicilian
    case Scots
    case Selkup
    case Shan
    case Sidamo
    case Slovak
    case Slovenian
    case Samoan
    case Shona
    case Sindhi
    case Soninke
    case Sogdian
    case Somali
    case Sardinian
    case Serbian
    case Serer
    case Swati
    case Sukuma
    case Sundanese
    case Susu
    case Sumerian
    case Swahili
    case Swedish
    case Syriac
    case Tahitian
    case Tamil
    case Tatar
    case Telugu
    case Timne
    case Tereno
    case Tetum
    case Tajik
    case Tagalog
    case Thai
    case Tibetan
    case Tigre
    case Tigrinya
    case Tiv
    case Tokelau
    case Tlingit
    case Tamashek
    case Tsimshian
    case Tswana
    case Tsonga
    case Turkmen
    case Tumbuka
    case Turkish
    case Tuvalu
    case Twi
    case Tuvinian
    case Udmurt
    case Ugaritic
    case Ukrainian
    case Umbundu
    case Undetermined
    case Urdu
    case Uzbek
    case Vai
    case Venda
    case Vietnamese
    case Volapük
    case Votic
    case Waray
    case Washo
    case Welsh
    case Walloon
    case Wolof
    case Xhosa
    case Yao
    case Yapese
    case Yiddish
    case Yoruba
    case Zapotec
    case Zenaga
    case Zulu
    case Zuni
    
    public init?(iso639_2: String) {
        switch iso639_2 {
        case "﻿aar":                self = .Afar
        case "abk":                 self = .Abkhazian
        case "ace":                 self = .Achinese
        case "ach":                 self = .Acoli
        case "ada":                 self = .Adangme
        case "afh":                 self = .Afrihili
        case "afr":                 self = .Afrikaans
        case "ain":                 self = .Ainu
        case "aka":                 self = .Akan
        case "akk":                 self = .Akkadian
        case "alb":                 self = .Albanian
        case "ale":                 self = .Aleut
        case "amh":                 self = .Amharic
        case "anp":                 self = .Angika
        case "ara":                 self = .Arabic
        case "arg":                 self = .Aragonese
        case "arm":                 self = .Armenian
        case "arp":                 self = .Arapaho
        case "arw":                 self = .Arawak
        case "asm":                 self = .Assamese
        case "ava":                 self = .Avaric
        case "ave":                 self = .Avestan
        case "awa":                 self = .Awadhi
        case "aym":                 self = .Aymara
        case "aze":                 self = .Azerbaijani
        case "bak":                 self = .Bashkir
        case "bal":                 self = .Baluchi
        case "bam":                 self = .Bambara
        case "ban":                 self = .Balinese
        case "baq":                 self = .Basque
        case "bas":                 self = .Basa
        case "bel":                 self = .Belarusian
        case "bem":                 self = .Bemba
        case "ben":                 self = .Bengali
        case "bho":                 self = .Bhojpuri
        case "bik":                 self = .Bikol
        case "bis":                 self = .Bislama
        case "bla":                 self = .Siksika
        case "bos":                 self = .Bosnian
        case "bra":                 self = .Braj
        case "bre":                 self = .Breton
        case "bua":                 self = .Buriat
        case "bug":                 self = .Buginese
        case "bul":                 self = .Bulgarian
        case "bur":                 self = .Burmese
        case "cad":                 self = .Caddo
        case "ceb":                 self = .Cebuano
        case "cha":                 self = .Chamorro
        case "chb":                 self = .Chibcha
        case "che":                 self = .Chechen
        case "chg":                 self = .Chagatai
        case "chi":                 self = .Chinese
        case "chk":                 self = .Chuukese
        case "chm":                 self = .Mari
        case "cho":                 self = .Choctaw
        case "chr":                 self = .Cherokee
        case "chv":                 self = .Chuvash
        case "chy":                 self = .Cheyenne
        case "cnr":                 self = .Montenegrin
        case "cop":                 self = .Coptic
        case "cor":                 self = .Cornish
        case "cos":                 self = .Corsican
        case "cre":                 self = .Cree
        case "csb":                 self = .Kashubian
        case "cze":                 self = .Czech
        case "dak":                 self = .Dakota
        case "dan":                 self = .Danish
        case "dar":                 self = .Dargwa
        case "del":                 self = .Delaware
        case "dgr":                 self = .Dogrib
        case "din":                 self = .Dinka
        case "doi":                 self = .Dogri
        case "dua":                 self = .Duala
        case "dyu":                 self = .Dyula
        case "dzo":                 self = .Dzongkha
        case "efi":                 self = .Efik
        case "eka":                 self = .Ekajuk
        case "elx":                 self = .Elamite
        case "eng":                 self = .English
        case "epo":                 self = .Esperanto
        case "est":                 self = .Estonian
        case "ewe":                 self = .Ewe
        case "ewo":                 self = .Ewondo
        case "fan":                 self = .Fang
        case "fao":                 self = .Faroese
        case "fat":                 self = .Fanti
        case "fij":                 self = .Fijian
        case "fin":                 self = .Finnish
        case "fon":                 self = .Fon
        case "fre":                 self = .French
        case "ful":                 self = .Fulah
        case "fur":                 self = .Friulian
        case "gaa":                 self = .Ga
        case "gay":                 self = .Gayo
        case "gba":                 self = .Gbaya
        case "geo":                 self = .Georgian
        case "ger":                 self = .German
        case "gez":                 self = .Geez
        case "gil":                 self = .Gilbertese
        case "gle":                 self = .Irish
        case "glg":                 self = .Galician
        case "glv":                 self = .Manx
        case "gon":                 self = .Gondi
        case "gor":                 self = .Gorontalo
        case "got":                 self = .Gothic
        case "grb":                 self = .Grebo
        case "grn":                 self = .Guarani
        case "guj":                 self = .Gujarati
        case "hai":                 self = .Haida
        case "hau":                 self = .Hausa
        case "haw":                 self = .Hawaiian
        case "heb":                 self = .Hebrew
        case "her":                 self = .Herero
        case "hil":                 self = .Hiligaynon
        case "hin":                 self = .Hindi
        case "hit":                 self = .Hittite
        case "hrv":                 self = .Croatian
        case "hun":                 self = .Hungarian
        case "hup":                 self = .Hupa
        case "iba":                 self = .Iban
        case "ibo":                 self = .Igbo
        case "ice":                 self = .Icelandic
        case "ido":                 self = .Ido
        case "iku":                 self = .Inuktitut
        case "ilo":                 self = .Iloko
        case "ind":                 self = .Indonesian
        case "inh":                 self = .Ingush
        case "ipk":                 self = .Inupiaq
        case "ita":                 self = .Italian
        case "jav":                 self = .Javanese
        case "jbo":                 self = .Lojban
        case "jpn":                 self = .Japanese
        case "kab":                 self = .Kabyle
        case "kam":                 self = .Kamba
        case "kan":                 self = .Kannada
        case "kas":                 self = .Kashmiri
        case "kau":                 self = .Kanuri
        case "kaw":                 self = .Kawi
        case "kaz":                 self = .Kazakh
        case "kbd":                 self = .Kabardian
        case "kha":                 self = .Khasi
        case "kin":                 self = .Kinyarwanda
        case "kmb":                 self = .Kimbundu
        case "kok":                 self = .Konkani
        case "kom":                 self = .Komi
        case "kon":                 self = .Kongo
        case "kor":                 self = .Korean
        case "kos":                 self = .Kosraean
        case "kpe":                 self = .Kpelle
        case "krl":                 self = .Karelian
        case "kru":                 self = .Kurukh
        case "kum":                 self = .Kumyk
        case "kur":                 self = .Kurdish
        case "kut":                 self = .Kutenai
        case "lad":                 self = .Ladino
        case "lah":                 self = .Lahnda
        case "lam":                 self = .Lamba
        case "lao":                 self = .Lao
        case "lat":                 self = .Latin
        case "lav":                 self = .Latvian
        case "lez":                 self = .Lezghian
        case "lin":                 self = .Lingala
        case "lit":                 self = .Lithuanian
        case "lol":                 self = .Mongo
        case "loz":                 self = .Lozi
        case "lug":                 self = .Ganda
        case "lui":                 self = .Luiseno
        case "lun":                 self = .Lunda
        case "lus":                 self = .Lushai
        case "mac":                 self = .Macedonian
        case "mad":                 self = .Madurese
        case "mag":                 self = .Magahi
        case "mah":                 self = .Marshallese
        case "mai":                 self = .Maithili
        case "mak":                 self = .Makasar
        case "mal":                 self = .Malayalam
        case "man":                 self = .Mandingo
        case "mao":                 self = .Maori
        case "mar":                 self = .Marathi
        case "mas":                 self = .Masai
        case "may":                 self = .Malay
        case "mdf":                 self = .Moksha
        case "mdr":                 self = .Mandar
        case "men":                 self = .Mende
        case "min":                 self = .Minangkabau
        case "mlg":                 self = .Malagasy
        case "mlt":                 self = .Maltese
        case "mnc":                 self = .Manchu
        case "mni":                 self = .Manipuri
        case "moh":                 self = .Mohawk
        case "mon":                 self = .Mongolian
        case "mos":                 self = .Mossi
        case "mus":                 self = .Creek
        case "mwl":                 self = .Mirandese
        case "mwr":                 self = .Marwari
        case "myv":                 self = .Erzya
        case "nap":                 self = .Neapolitan
        case "nau":                 self = .Nauru
        case "ndo":                 self = .Ndonga
        case "nep":                 self = .Nepali
        case "nia":                 self = .Nias
        case "niu":                 self = .Niuean
        case "nog":                 self = .Nogai
        case "nor":                 self = .Norwegian
        case "nym":                 self = .Nyamwezi
        case "nyn":                 self = .Nyankole
        case "nyo":                 self = .Nyoro
        case "nzi":                 self = .Nzima
        case "oji":                 self = .Ojibwa
        case "ori":                 self = .Oriya
        case "orm":                 self = .Oromo
        case "osa":                 self = .Osage
        case "pag":                 self = .Pangasinan
        case "pal":                 self = .Pahlavi
        case "pap":                 self = .Papiamento
        case "pau":                 self = .Palauan
        case "per":                 self = .Persian
        case "phn":                 self = .Phoenician
        case "pli":                 self = .Pali
        case "pol":                 self = .Polish
        case "pon":                 self = .Pohnpeian
        case "por":                 self = .Portuguese
        case "que":                 self = .Quechua
        case "raj":                 self = .Rajasthani
        case "rap":                 self = .Rapanui
        case "roh":                 self = .Romansh
        case "rom":                 self = .Romany
        case "run":                 self = .Rundi
        case "rus":                 self = .Russian
        case "sad":                 self = .Sandawe
        case "sag":                 self = .Sango
        case "sah":                 self = .Yakut
        case "san":                 self = .Sanskrit
        case "sas":                 self = .Sasak
        case "sat":                 self = .Santali
        case "scn":                 self = .Sicilian
        case "sco":                 self = .Scots
        case "sel":                 self = .Selkup
        case "shn":                 self = .Shan
        case "sid":                 self = .Sidamo
        case "slo":                 self = .Slovak
        case "slv":                 self = .Slovenian
        case "smo":                 self = .Samoan
        case "sna":                 self = .Shona
        case "snd":                 self = .Sindhi
        case "snk":                 self = .Soninke
        case "sog":                 self = .Sogdian
        case "som":                 self = .Somali
        case "srd":                 self = .Sardinian
        case "srp":                 self = .Serbian
        case "srr":                 self = .Serer
        case "ssw":                 self = .Swati
        case "suk":                 self = .Sukuma
        case "sun":                 self = .Sundanese
        case "sus":                 self = .Susu
        case "sux":                 self = .Sumerian
        case "swa":                 self = .Swahili
        case "swe":                 self = .Swedish
        case "syr":                 self = .Syriac
        case "tah":                 self = .Tahitian
        case "tam":                 self = .Tamil
        case "tat":                 self = .Tatar
        case "tel":                 self = .Telugu
        case "tem":                 self = .Timne
        case "ter":                 self = .Tereno
        case "tet":                 self = .Tetum
        case "tgk":                 self = .Tajik
        case "tgl":                 self = .Tagalog
        case "tha":                 self = .Thai
        case "tib":                 self = .Tibetan
        case "tig":                 self = .Tigre
        case "tir":                 self = .Tigrinya
        case "tiv":                 self = .Tiv
        case "tkl":                 self = .Tokelau
        case "tli":                 self = .Tlingit
        case "tmh":                 self = .Tamashek
        case "tsi":                 self = .Tsimshian
        case "tsn":                 self = .Tswana
        case "tso":                 self = .Tsonga
        case "tuk":                 self = .Turkmen
        case "tum":                 self = .Tumbuka
        case "tur":                 self = .Turkish
        case "tvl":                 self = .Tuvalu
        case "twi":                 self = .Twi
        case "tyv":                 self = .Tuvinian
        case "udm":                 self = .Udmurt
        case "uga":                 self = .Ugaritic
        case "ukr":                 self = .Ukrainian
        case "umb":                 self = .Umbundu
        case "und":                 self = .Undetermined
        case "urd":                 self = .Urdu
        case "uzb":                 self = .Uzbek
        case "vai":                 self = .Vai
        case "ven":                 self = .Venda
        case "vie":                 self = .Vietnamese
        case "vol":                 self = .Volapük
        case "vot":                 self = .Votic
        case "war":                 self = .Waray
        case "was":                 self = .Washo
        case "wel":                 self = .Welsh
        case "wln":                 self = .Walloon
        case "wol":                 self = .Wolof
        case "xho":                 self = .Xhosa
        case "yao":                 self = .Yao
        case "yap":                 self = .Yapese
        case "yid":                 self = .Yiddish
        case "yor":                 self = .Yoruba
        case "zap":                 self = .Zapotec
        case "zen":                 self = .Zenaga
        case "zul":                 self = .Zulu
        case "zun":                 self = .Zuni
        default: return nil
        }
    }
    
    public var iso639_2: String {
        switch self {
        case .Afar:                 return "﻿aar"
        case .Abkhazian:            return "abk"
        case .Achinese:             return "ace"
        case .Acoli:                return "ach"
        case .Adangme:              return "ada"
        case .Afrihili:             return "afh"
        case .Afrikaans:            return "afr"
        case .Ainu:                 return "ain"
        case .Akan:                 return "aka"
        case .Akkadian:             return "akk"
        case .Albanian:             return "alb"
        case .Aleut:                return "ale"
        case .Amharic:              return "amh"
        case .Angika:               return "anp"
        case .Arabic:               return "ara"
        case .Aragonese:            return "arg"
        case .Armenian:             return "arm"
        case .Arapaho:              return "arp"
        case .Arawak:               return "arw"
        case .Assamese:             return "asm"
        case .Avaric:               return "ava"
        case .Avestan:              return "ave"
        case .Awadhi:               return "awa"
        case .Aymara:               return "aym"
        case .Azerbaijani:          return "aze"
        case .Bashkir:              return "bak"
        case .Baluchi:              return "bal"
        case .Bambara:              return "bam"
        case .Balinese:             return "ban"
        case .Basque:               return "baq"
        case .Basa:                 return "bas"
        case .Belarusian:           return "bel"
        case .Bemba:                return "bem"
        case .Bengali:              return "ben"
        case .Bhojpuri:             return "bho"
        case .Bikol:                return "bik"
        case .Bislama:              return "bis"
        case .Siksika:              return "bla"
        case .Bosnian:              return "bos"
        case .Braj:                 return "bra"
        case .Breton:               return "bre"
        case .Buriat:               return "bua"
        case .Buginese:             return "bug"
        case .Bulgarian:            return "bul"
        case .Burmese:              return "bur"
        case .Caddo:                return "cad"
        case .Cebuano:              return "ceb"
        case .Chamorro:             return "cha"
        case .Chibcha:              return "chb"
        case .Chechen:              return "che"
        case .Chagatai:             return "chg"
        case .Chinese:              return "chi"
        case .Chuukese:             return "chk"
        case .Mari:                 return "chm"
        case .Choctaw:              return "cho"
        case .Cherokee:             return "chr"
        case .Chuvash:              return "chv"
        case .Cheyenne:             return "chy"
        case .Montenegrin:          return "cnr"
        case .Coptic:               return "cop"
        case .Cornish:              return "cor"
        case .Corsican:             return "cos"
        case .Cree:                 return "cre"
        case .Kashubian:            return "csb"
        case .Czech:                return "cze"
        case .Dakota:               return "dak"
        case .Danish:               return "dan"
        case .Dargwa:               return "dar"
        case .Delaware:             return "del"
        case .Dogrib:               return "dgr"
        case .Dinka:                return "din"
        case .Dogri:                return "doi"
        case .Duala:                return "dua"
        case .Dyula:                return "dyu"
        case .Dzongkha:             return "dzo"
        case .Efik:                 return "efi"
        case .Ekajuk:               return "eka"
        case .Elamite:              return "elx"
        case .English:              return "eng"
        case .Esperanto:            return "epo"
        case .Estonian:             return "est"
        case .Ewe:                  return "ewe"
        case .Ewondo:               return "ewo"
        case .Fang:                 return "fan"
        case .Faroese:              return "fao"
        case .Fanti:                return "fat"
        case .Fijian:               return "fij"
        case .Finnish:              return "fin"
        case .Fon:                  return "fon"
        case .French:               return "fre"
        case .Fulah:                return "ful"
        case .Friulian:             return "fur"
        case .Ga:                   return "gaa"
        case .Gayo:                 return "gay"
        case .Gbaya:                return "gba"
        case .Georgian:             return "geo"
        case .German:               return "ger"
        case .Geez:                 return "gez"
        case .Gilbertese:           return "gil"
        case .Irish:                return "gle"
        case .Galician:             return "glg"
        case .Manx:                 return "glv"
        case .Gondi:                return "gon"
        case .Gorontalo:            return "gor"
        case .Gothic:               return "got"
        case .Grebo:                return "grb"
        case .Guarani:              return "grn"
        case .Gujarati:             return "guj"
        case .Haida:                return "hai"
        case .Hausa:                return "hau"
        case .Hawaiian:             return "haw"
        case .Hebrew:               return "heb"
        case .Herero:               return "her"
        case .Hiligaynon:           return "hil"
        case .Hindi:                return "hin"
        case .Hittite:              return "hit"
        case .Croatian:             return "hrv"
        case .Hungarian:            return "hun"
        case .Hupa:                 return "hup"
        case .Iban:                 return "iba"
        case .Igbo:                 return "ibo"
        case .Icelandic:            return "ice"
        case .Ido:                  return "ido"
        case .Inuktitut:            return "iku"
        case .Iloko:                return "ilo"
        case .Indonesian:           return "ind"
        case .Ingush:               return "inh"
        case .Inupiaq:              return "ipk"
        case .Italian:              return "ita"
        case .Javanese:             return "jav"
        case .Lojban:               return "jbo"
        case .Japanese:             return "jpn"
        case .Kabyle:               return "kab"
        case .Kamba:                return "kam"
        case .Kannada:              return "kan"
        case .Kashmiri:             return "kas"
        case .Kanuri:               return "kau"
        case .Kawi:                 return "kaw"
        case .Kazakh:               return "kaz"
        case .Kabardian:            return "kbd"
        case .Khasi:                return "kha"
        case .Kinyarwanda:          return "kin"
        case .Kimbundu:             return "kmb"
        case .Konkani:              return "kok"
        case .Komi:                 return "kom"
        case .Kongo:                return "kon"
        case .Korean:               return "kor"
        case .Kosraean:             return "kos"
        case .Kpelle:               return "kpe"
        case .Karelian:             return "krl"
        case .Kurukh:               return "kru"
        case .Kumyk:                return "kum"
        case .Kurdish:              return "kur"
        case .Kutenai:              return "kut"
        case .Ladino:               return "lad"
        case .Lahnda:               return "lah"
        case .Lamba:                return "lam"
        case .Lao:                  return "lao"
        case .Latin:                return "lat"
        case .Latvian:              return "lav"
        case .Lezghian:             return "lez"
        case .Lingala:              return "lin"
        case .Lithuanian:           return "lit"
        case .Mongo:                return "lol"
        case .Lozi:                 return "loz"
        case .Ganda:                return "lug"
        case .Luiseno:              return "lui"
        case .Lunda:                return "lun"
        case .Lushai:               return "lus"
        case .Macedonian:           return "mac"
        case .Madurese:             return "mad"
        case .Magahi:               return "mag"
        case .Marshallese:          return "mah"
        case .Maithili:             return "mai"
        case .Makasar:              return "mak"
        case .Malayalam:            return "mal"
        case .Mandingo:             return "man"
        case .Maori:                return "mao"
        case .Marathi:              return "mar"
        case .Masai:                return "mas"
        case .Malay:                return "may"
        case .Moksha:               return "mdf"
        case .Mandar:               return "mdr"
        case .Mende:                return "men"
        case .Minangkabau:          return "min"
        case .Malagasy:             return "mlg"
        case .Maltese:              return "mlt"
        case .Manchu:               return "mnc"
        case .Manipuri:             return "mni"
        case .Mohawk:               return "moh"
        case .Mongolian:            return "mon"
        case .Mossi:                return "mos"
        case .Creek:                return "mus"
        case .Mirandese:            return "mwl"
        case .Marwari:              return "mwr"
        case .Erzya:                return "myv"
        case .Neapolitan:           return "nap"
        case .Nauru:                return "nau"
        case .Ndonga:               return "ndo"
        case .Nepali:               return "nep"
        case .Nias:                 return "nia"
        case .Niuean:               return "niu"
        case .Nogai:                return "nog"
        case .Norwegian:            return "nor"
        case .Nyamwezi:             return "nym"
        case .Nyankole:             return "nyn"
        case .Nyoro:                return "nyo"
        case .Nzima:                return "nzi"
        case .Ojibwa:               return "oji"
        case .Oriya:                return "ori"
        case .Oromo:                return "orm"
        case .Osage:                return "osa"
        case .Pangasinan:           return "pag"
        case .Pahlavi:              return "pal"
        case .Papiamento:           return "pap"
        case .Palauan:              return "pau"
        case .Persian:              return "per"
        case .Phoenician:           return "phn"
        case .Pali:                 return "pli"
        case .Polish:               return "pol"
        case .Pohnpeian:            return "pon"
        case .Portuguese:           return "por"
        case .Quechua:              return "que"
        case .Rajasthani:           return "raj"
        case .Rapanui:              return "rap"
        case .Romansh:              return "roh"
        case .Romany:               return "rom"
        case .Rundi:                return "run"
        case .Russian:              return "rus"
        case .Sandawe:              return "sad"
        case .Sango:                return "sag"
        case .Yakut:                return "sah"
        case .Sanskrit:             return "san"
        case .Sasak:                return "sas"
        case .Santali:              return "sat"
        case .Sicilian:             return "scn"
        case .Scots:                return "sco"
        case .Selkup:               return "sel"
        case .Shan:                 return "shn"
        case .Sidamo:               return "sid"
        case .Slovak:               return "slo"
        case .Slovenian:            return "slv"
        case .Samoan:               return "smo"
        case .Shona:                return "sna"
        case .Sindhi:               return "snd"
        case .Soninke:              return "snk"
        case .Sogdian:              return "sog"
        case .Somali:               return "som"
        case .Sardinian:            return "srd"
        case .Serbian:              return "srp"
        case .Serer:                return "srr"
        case .Swati:                return "ssw"
        case .Sukuma:               return "suk"
        case .Sundanese:            return "sun"
        case .Susu:                 return "sus"
        case .Sumerian:             return "sux"
        case .Swahili:              return "swa"
        case .Swedish:              return "swe"
        case .Syriac:               return "syr"
        case .Tahitian:             return "tah"
        case .Tamil:                return "tam"
        case .Tatar:                return "tat"
        case .Telugu:               return "tel"
        case .Timne:                return "tem"
        case .Tereno:               return "ter"
        case .Tetum:                return "tet"
        case .Tajik:                return "tgk"
        case .Tagalog:              return "tgl"
        case .Thai:                 return "tha"
        case .Tibetan:              return "tib"
        case .Tigre:                return "tig"
        case .Tigrinya:             return "tir"
        case .Tiv:                  return "tiv"
        case .Tokelau:              return "tkl"
        case .Tlingit:              return "tli"
        case .Tamashek:             return "tmh"
        case .Tsimshian:            return "tsi"
        case .Tswana:               return "tsn"
        case .Tsonga:               return "tso"
        case .Turkmen:              return "tuk"
        case .Tumbuka:              return "tum"
        case .Turkish:              return "tur"
        case .Tuvalu:               return "tvl"
        case .Twi:                  return "twi"
        case .Tuvinian:             return "tyv"
        case .Udmurt:               return "udm"
        case .Ugaritic:             return "uga"
        case .Ukrainian:            return "ukr"
        case .Umbundu:              return "umb"
        case .Undetermined:         return "und"
        case .Urdu:                 return "urd"
        case .Uzbek:                return "uzb"
        case .Vai:                  return "vai"
        case .Venda:                return "ven"
        case .Vietnamese:           return "vie"
        case .Volapük:              return "vol"
        case .Votic:                return "vot"
        case .Waray:                return "war"
        case .Washo:                return "was"
        case .Welsh:                return "wel"
        case .Walloon:              return "wln"
        case .Wolof:                return "wol"
        case .Xhosa:                return "xho"
        case .Yao:                  return "yao"
        case .Yapese:               return "yap"
        case .Yiddish:              return "yid"
        case .Yoruba:               return "yor"
        case .Zapotec:              return "zap"
        case .Zenaga:               return "zen"
        case .Zulu:                 return "zul"
        case .Zuni:                 return "zun"
        }
    }
    
    public var iso639_1: String? {
        switch self {
        case .Afar:                 return "aa"
        case .Abkhazian:            return "ab"
        case .Achinese:             return nil
        case .Acoli:                return nil
        case .Adangme:              return nil
        case .Afrihili:             return nil
        case .Afrikaans:            return "af"
        case .Ainu:                 return nil
        case .Akan:                 return "ak"
        case .Akkadian:             return nil
        case .Albanian:             return "sq"
        case .Aleut:                return nil
        case .Amharic:              return "am"
        case .Angika:               return nil
        case .Arabic:               return "ar"
        case .Aragonese:            return "an"
        case .Armenian:             return "hy"
        case .Arapaho:              return nil
        case .Arawak:               return nil
        case .Assamese:             return "as"
        case .Avaric:               return "av"
        case .Avestan:              return "ae"
        case .Awadhi:               return nil
        case .Aymara:               return "ay"
        case .Azerbaijani:          return "az"
        case .Bashkir:              return "ba"
        case .Baluchi:              return nil
        case .Bambara:              return "bm"
        case .Balinese:             return nil
        case .Basque:               return "eu"
        case .Basa:                 return nil
        case .Belarusian:           return "be"
        case .Bemba:                return nil
        case .Bengali:              return "bn"
        case .Bhojpuri:             return nil
        case .Bikol:                return nil
        case .Bislama:              return "bi"
        case .Siksika:              return nil
        case .Bosnian:              return "bs"
        case .Braj:                 return nil
        case .Breton:               return "br"
        case .Buriat:               return nil
        case .Buginese:             return nil
        case .Bulgarian:            return "bg"
        case .Burmese:              return "my"
        case .Caddo:                return nil
        case .Cebuano:              return nil
        case .Chamorro:             return "ch"
        case .Chibcha:              return nil
        case .Chechen:              return "ce"
        case .Chagatai:             return nil
        case .Chinese:              return "zh"
        case .Chuukese:             return nil
        case .Mari:                 return nil
        case .Choctaw:              return nil
        case .Cherokee:             return nil
        case .Chuvash:              return "cv"
        case .Cheyenne:             return nil
        case .Montenegrin:          return nil
        case .Coptic:               return nil
        case .Cornish:              return "kw"
        case .Corsican:             return "co"
        case .Cree:                 return "cr"
        case .Kashubian:            return nil
        case .Czech:                return "cs"
        case .Dakota:               return nil
        case .Danish:               return "da"
        case .Dargwa:               return nil
        case .Delaware:             return nil
        case .Dogrib:               return nil
        case .Dinka:                return nil
        case .Dogri:                return nil
        case .Duala:                return nil
        case .Dyula:                return nil
        case .Dzongkha:             return "dz"
        case .Efik:                 return nil
        case .Ekajuk:               return nil
        case .Elamite:              return nil
        case .English:              return "en"
        case .Esperanto:            return "eo"
        case .Estonian:             return "et"
        case .Ewe:                  return "ee"
        case .Ewondo:               return nil
        case .Fang:                 return nil
        case .Faroese:              return "fo"
        case .Fanti:                return nil
        case .Fijian:               return "fj"
        case .Finnish:              return "fi"
        case .Fon:                  return nil
        case .French:               return "fr"
        case .Fulah:                return "ff"
        case .Friulian:             return nil
        case .Ga:                   return nil
        case .Gayo:                 return nil
        case .Gbaya:                return nil
        case .Georgian:             return "ka"
        case .German:               return "de"
        case .Geez:                 return nil
        case .Gilbertese:           return nil
        case .Irish:                return "ga"
        case .Galician:             return "gl"
        case .Manx:                 return "gv"
        case .Gondi:                return nil
        case .Gorontalo:            return nil
        case .Gothic:               return nil
        case .Grebo:                return nil
        case .Guarani:              return "gn"
        case .Gujarati:             return "gu"
        case .Haida:                return nil
        case .Hausa:                return "ha"
        case .Hawaiian:             return nil
        case .Hebrew:               return "he"
        case .Herero:               return "hz"
        case .Hiligaynon:           return nil
        case .Hindi:                return "hi"
        case .Hittite:              return nil
        case .Croatian:             return "hr"
        case .Hungarian:            return "hu"
        case .Hupa:                 return nil
        case .Iban:                 return nil
        case .Igbo:                 return "ig"
        case .Icelandic:            return "is"
        case .Ido:                  return "io"
        case .Inuktitut:            return "iu"
        case .Iloko:                return nil
        case .Indonesian:           return "id"
        case .Ingush:               return nil
        case .Inupiaq:              return "ik"
        case .Italian:              return "it"
        case .Javanese:             return "jv"
        case .Lojban:               return nil
        case .Japanese:             return "ja"
        case .Kabyle:               return nil
        case .Kamba:                return nil
        case .Kannada:              return "kn"
        case .Kashmiri:             return "ks"
        case .Kanuri:               return "kr"
        case .Kawi:                 return nil
        case .Kazakh:               return "kk"
        case .Kabardian:            return nil
        case .Khasi:                return nil
        case .Kinyarwanda:          return "rw"
        case .Kimbundu:             return nil
        case .Konkani:              return nil
        case .Komi:                 return "kv"
        case .Kongo:                return "kg"
        case .Korean:               return "ko"
        case .Kosraean:             return nil
        case .Kpelle:               return nil
        case .Karelian:             return nil
        case .Kurukh:               return nil
        case .Kumyk:                return nil
        case .Kurdish:              return "ku"
        case .Kutenai:              return nil
        case .Ladino:               return nil
        case .Lahnda:               return nil
        case .Lamba:                return nil
        case .Lao:                  return "lo"
        case .Latin:                return "la"
        case .Latvian:              return "lv"
        case .Lezghian:             return nil
        case .Lingala:              return "ln"
        case .Lithuanian:           return "lt"
        case .Mongo:                return nil
        case .Lozi:                 return nil
        case .Ganda:                return "lg"
        case .Luiseno:              return nil
        case .Lunda:                return nil
        case .Lushai:               return nil
        case .Macedonian:           return "mk"
        case .Madurese:             return nil
        case .Magahi:               return nil
        case .Marshallese:          return "mh"
        case .Maithili:             return nil
        case .Makasar:              return nil
        case .Malayalam:            return "ml"
        case .Mandingo:             return nil
        case .Maori:                return "mi"
        case .Marathi:              return "mr"
        case .Masai:                return nil
        case .Malay:                return "ms"
        case .Moksha:               return nil
        case .Mandar:               return nil
        case .Mende:                return nil
        case .Minangkabau:          return nil
        case .Malagasy:             return "mg"
        case .Maltese:              return "mt"
        case .Manchu:               return nil
        case .Manipuri:             return nil
        case .Mohawk:               return nil
        case .Mongolian:            return "mn"
        case .Mossi:                return nil
        case .Creek:                return nil
        case .Mirandese:            return nil
        case .Marwari:              return nil
        case .Erzya:                return nil
        case .Neapolitan:           return nil
        case .Nauru:                return "na"
        case .Ndonga:               return "ng"
        case .Nepali:               return "ne"
        case .Nias:                 return nil
        case .Niuean:               return nil
        case .Nogai:                return nil
        case .Norwegian:            return "no"
        case .Nyamwezi:             return nil
        case .Nyankole:             return nil
        case .Nyoro:                return nil
        case .Nzima:                return nil
        case .Ojibwa:               return "oj"
        case .Oriya:                return "or"
        case .Oromo:                return "om"
        case .Osage:                return nil
        case .Pangasinan:           return nil
        case .Pahlavi:              return nil
        case .Papiamento:           return nil
        case .Palauan:              return nil
        case .Persian:              return "fa"
        case .Phoenician:           return nil
        case .Pali:                 return "pi"
        case .Polish:               return "pl"
        case .Pohnpeian:            return nil
        case .Portuguese:           return "pt"
        case .Quechua:              return "qu"
        case .Rajasthani:           return nil
        case .Rapanui:              return nil
        case .Romansh:              return "rm"
        case .Romany:               return nil
        case .Rundi:                return "rn"
        case .Russian:              return "ru"
        case .Sandawe:              return nil
        case .Sango:                return "sg"
        case .Yakut:                return nil
        case .Sanskrit:             return "sa"
        case .Sasak:                return nil
        case .Santali:              return nil
        case .Sicilian:             return nil
        case .Scots:                return nil
        case .Selkup:               return nil
        case .Shan:                 return nil
        case .Sidamo:               return nil
        case .Slovak:               return "sk"
        case .Slovenian:            return "sl"
        case .Samoan:               return "sm"
        case .Shona:                return "sn"
        case .Sindhi:               return "sd"
        case .Soninke:              return nil
        case .Sogdian:              return nil
        case .Somali:               return "so"
        case .Sardinian:            return "sc"
        case .Serbian:              return "sr"
        case .Serer:                return nil
        case .Swati:                return "ss"
        case .Sukuma:               return nil
        case .Sundanese:            return "su"
        case .Susu:                 return nil
        case .Sumerian:             return nil
        case .Swahili:              return "sw"
        case .Swedish:              return "sv"
        case .Syriac:               return nil
        case .Tahitian:             return "ty"
        case .Tamil:                return "ta"
        case .Tatar:                return "tt"
        case .Telugu:               return "te"
        case .Timne:                return nil
        case .Tereno:               return nil
        case .Tetum:                return nil
        case .Tajik:                return "tg"
        case .Tagalog:              return "tl"
        case .Thai:                 return "th"
        case .Tibetan:              return "bo"
        case .Tigre:                return nil
        case .Tigrinya:             return "ti"
        case .Tiv:                  return nil
        case .Tokelau:              return nil
        case .Tlingit:              return nil
        case .Tamashek:             return nil
        case .Tsimshian:            return nil
        case .Tswana:               return "tn"
        case .Tsonga:               return "ts"
        case .Turkmen:              return "tk"
        case .Tumbuka:              return nil
        case .Turkish:              return "tr"
        case .Tuvalu:               return nil
        case .Twi:                  return "tw"
        case .Tuvinian:             return nil
        case .Udmurt:               return nil
        case .Ugaritic:             return nil
        case .Ukrainian:            return "uk"
        case .Umbundu:              return nil
        case .Undetermined:         return nil
        case .Urdu:                 return "ur"
        case .Uzbek:                return "uz"
        case .Vai:                  return nil
        case .Venda:                return "ve"
        case .Vietnamese:           return "vi"
        case .Volapük:              return "vo"
        case .Votic:                return nil
        case .Waray:                return nil
        case .Washo:                return nil
        case .Welsh:                return "cy"
        case .Walloon:              return "wa"
        case .Wolof:                return "wo"
        case .Xhosa:                return "xh"
        case .Yao:                  return nil
        case .Yapese:               return nil
        case .Yiddish:              return "yi"
        case .Yoruba:               return "yo"
        case .Zapotec:              return nil
        case .Zenaga:               return nil
        case .Zulu:                 return "zu"
        case .Zuni:                 return nil
        }
    }
}
