//
//  Radio.swift
//  Radio
//
//  Created by Serge Sinkevych on 12/19/17.
//  Copyright © 2017 Serge Sinkevych. All rights reserved.
//

import UIKit

// MARK: - Radio Class -

public struct Radio {
    
    struct Names {
        static let prosto = "Просто радио"
        static let feel = "Радио Фил"
        static let russian = "Русское радио Укр"
        static let rrussian = "Русское радио"
        static let hitfm = "Хит FM"
        static let radioLux = "Радио Люкс"
        static let kissFm = "Kiss Fm"
        static let nrj = "NRJ"
        static let nashe = "Наше радио"
        static let shanson = "Шансон"
        static let avtoradio = "Авторадио"
        static let relax = "Relax"
        static let melodia = "Мелодия"
        static let retro = "Ретро Fm"
        static let rretro = "Ретро Russian"
        static let romantic = "Ретро Романтика"
        static let loungeFm = "Lounge Fm"
        static let loungeChill = "Chillout"
        static let loungeTerrace = "Lounge Terrace"
        static let roks = "Радио Рокс"
        static let gorvolna = "Городская Волна"
        static let horoshee = "Хорошее Радио"
        static let europa = "Europa Plus"
        static let vesti = "Вести Fm"
        static let comedy = "Comedy Radio"
        static let svoe = "Своё FM"
        static let business = "Business FM"
        static let breeze = "Jazz Breeze FM"
        static let blackStar = "Black Star Radio"
        
    }
    
    struct Logos {
        static let prosto = #imageLiteral(resourceName: "prosto")
        static let feel = #imageLiteral(resourceName: "feel")
        static let russian = #imageLiteral(resourceName: "russian")
        static let rrussian = #imageLiteral(resourceName: "rrussian")
        static let hitfm = #imageLiteral(resourceName: "hitfm")
        static let radiolux = #imageLiteral(resourceName: "radiolux")
        static let kissFm = #imageLiteral(resourceName: "kissfm")
        static let nrj = #imageLiteral(resourceName: "nrj")
        static let nashe = #imageLiteral(resourceName: "nashe")
        static let shanson = #imageLiteral(resourceName: "shanson")
        static let avtoradio = #imageLiteral(resourceName: "avtoradio")
        static let relax = #imageLiteral(resourceName: "relax")
        static let melodia = #imageLiteral(resourceName: "melodia")
        static let retro = #imageLiteral(resourceName: "retro")
        static let rretro = #imageLiteral(resourceName: "rretro")
        static let romantic = #imageLiteral(resourceName: "romantic")
        static let loungeFm = #imageLiteral(resourceName: "lounge")
        static let loungeChill = #imageLiteral(resourceName: "loungeFm")
        static let loungeTerrace = #imageLiteral(resourceName: "loungeTerrace")
        static let roks = #imageLiteral(resourceName: "roks")
        static let gorvolna = #imageLiteral(resourceName: "gorvolna")
        static let horoshee = #imageLiteral(resourceName: "horoshee")
        static let europa = #imageLiteral(resourceName: "europa")
        static let vesti = #imageLiteral(resourceName: "vesti")
        static let comedy = #imageLiteral(resourceName: "comedy")
        static let svoe = #imageLiteral(resourceName: "svoe")
        static let business = #imageLiteral(resourceName: "business")
        static let breeze = #imageLiteral(resourceName: "breeze")
        static let blackStar = #imageLiteral(resourceName: "blackStar")
    }
    
    struct Urls {
        static let prosto = "http://www.prosto.fm/files/ProstoRadio128-Odessa.m3u"
        static let feel = "http://62.80.190.246:8000/Feel"
        static let russian = "http://online-rusradio.tavrmedia.ua/RusRadio"
        static let rrussian = "http://icecast.russkoeradio.cdnvideo.ru/rr.mp3"
        static let hitfm = "http://195.95.206.17/HitFM"
        static let radiolux = "http://icecastlv.luxnet.ua/lux_mp3"
        static let kissFm = "http://online-kissfm.tavrmedia.ua/KissFM"
        static let nrj = "http://cast.nrj.in.ua/nrj"
        static let nashe = "http://cast.nashe.ua/nashe"
        static let shanson = "http://217.20.164.170:8002/;stream.nsv"
        static let avtoradio = "http://cast.radiogroup.com.ua/avtoradio"
        static let relax = "http://online-radiorelax.tavrmedia.ua/RadioRelax"
        static let melodia = "http://online-radiomelodia.tavrmedia.ua/RadioMelodia"
        static let retro = "http://cast.radiogroup.com.ua/retro"
        static let rretro = "http://cast2.retro.ua/retro_russian"
        static let romantic = "http://cast2.retro.ua/retro_romantic"
        static let loungeFm = "http://cast.loungefm.com.ua/loungefm"
        static let loungeChill = "http://cast.loungefm.com.ua/chillout128"
        static let loungeTerrace = "http://cast.loungefm.com.ua/terrace128"
        static let roks = "http://online-radioroks.tavrmedia.ua/RadioROKS"
        static let gorvolna = "http://online.gorvolna.ru:8000/gorvolna"
        static let horoshee = "http://listen.rusongs.ru/ru-aac-48"
        static let europa = "http://ep256.hostingradio.ru:8052/europaplus256.mp3"
        static let vesti = "http://icecast.vgtrk.cdnvideo.ru/vestifm_aac_32kbps"
        static let business = "http://bfm.hostingradio.ru:8004/fm"
        static let svoe = "http://getradio.me/svoefm"
        static let breeze = "http://stream.zenolive.com/e1aq6cu8pg5tv"
        static let blackStar = "http://blackstarradio.hostingradio.ru:8024/blackstarradio128.mp3"
    }
    
    var name: String
    var url: String
    var logo: UIImage
    
    init(name: String, url: String, logo: UIImage) {
        self.name = name
        self.url = url
        self.logo = logo
    }
}

// MARK: - Radio ext: Radios -

extension Radio {
    
    static var prosto: Radio {
        return Radio(name: Names.prosto, url: Urls.prosto, logo: Logos.prosto)
    }
    
    static var feel: Radio {
        return Radio(name: Names.feel, url: Urls.feel, logo: Logos.feel)
    }
    
    static var russian: Radio {
        return Radio(name: Names.russian, url: Urls.russian, logo: Logos.russian)
    }
    
    static var rrussian: Radio {
        return Radio(name: Names.rrussian, url: Urls.rrussian, logo: Logos.rrussian)
    }
    
    static var hitfm: Radio {
        return Radio(name: Names.hitfm, url: Urls.hitfm, logo: Logos.hitfm)
    }
    
    static var radiolux: Radio {
        return Radio(name: Names.radioLux, url: Urls.radiolux, logo: Logos.radiolux)
    }
    
    static var kissFm: Radio {
        return Radio(name: Names.kissFm, url: Urls.kissFm, logo: Logos.kissFm)
    }
    
    static var nrj: Radio {
        return Radio(name: Names.nrj, url: Urls.nrj, logo: Logos.nrj)
    }
    
    static var nashe: Radio {
        return Radio(name: Names.nashe, url: Urls.nashe, logo: Logos.nashe)
    }
    
    static var shanson: Radio {
        return Radio(name: Names.shanson, url: Urls.shanson, logo: Logos.shanson)
    }
    
    static var avtoradio: Radio {
        return Radio(name: Names.avtoradio, url: Urls.avtoradio, logo: Logos.avtoradio)
    }
    
    static var relax: Radio {
        return Radio(name: Names.relax, url: Urls.relax, logo: Logos.relax)
    }
    
    static var melodia: Radio {
        return Radio(name: Names.melodia, url: Urls.melodia, logo: Logos.melodia)
    }
    
    static var retro: Radio {
        return Radio(name: Names.retro, url: Urls.retro, logo: Logos.retro)
    }
    
    static var rretro: Radio {
        return Radio(name: Names.rretro, url: Urls.rretro, logo: Logos.rretro)
    }
    
    static var romantic: Radio {
        return Radio(name: Names.romantic, url: Urls.romantic, logo: Logos.romantic)
    }
    
    static var loungeFm: Radio {
        return Radio(name: Names.loungeFm, url: Urls.loungeFm, logo: Logos.loungeFm)
    }
    
    static var loungeChill: Radio {
        return Radio(name: Names.loungeChill, url: Urls.loungeChill, logo: Logos.loungeChill)
    }
    
    static var loungeTerrace: Radio {
        return Radio(name: Names.loungeTerrace, url: Urls.loungeTerrace, logo: Logos.loungeTerrace)
    }
    
    static var roks: Radio {
        return Radio(name: Names.roks, url: Urls.roks, logo: Logos.roks)
    }
    
    static var gorvolna: Radio {
        return Radio(name: Names.gorvolna, url: Urls.gorvolna, logo: Logos.gorvolna)
    }
    
    static var horoshee: Radio {
        return Radio(name: Names.horoshee, url: Urls.horoshee, logo: Logos.horoshee)
    }
    
    static var europa: Radio {
        return Radio(name: Names.europa, url: Urls.europa, logo: Logos.europa)
    }
    
    static var vesti: Radio {
        return Radio(name: Names.vesti, url: Urls.vesti, logo: Logos.vesti)
    }
    
    static var business: Radio {
        return Radio(name: Names.business, url: Urls.business, logo: Logos.business)
    }
    
    static var svoe: Radio {
        return Radio(name: Names.svoe, url: Urls.svoe, logo: Logos.svoe)
    }
    
    static var breeze: Radio {
        return Radio(name: Names.breeze, url: Urls.breeze, logo: Logos.breeze)
    }
    
    static var blackStar: Radio {
        return Radio(name: Names.blackStar, url: Urls.blackStar, logo: Logos.blackStar)
    }
}
