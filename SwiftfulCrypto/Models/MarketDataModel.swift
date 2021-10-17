//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Steven Yu on 10/12/21.
//

import Foundation

// JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 9645,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 657,
     "total_market_cap": {
       "btc": 42636440.169273466,
       "eth": 686522554.9746593,
       "ltc": 13911628233.685934,
       "bch": 4069158627.145283,
       "bnb": 5461360444.660817,
       "eos": 531763958182.1807,
       "xrp": 2177511822234.7822,
       "xlm": 7157312174266.161,
       "link": 97179303852.59328,
       "dot": 68288929848.05422,
       "yfi": 69039511.0933194,
       "usd": 2406462524745.0938,
       "aed": 8839418145893.691,
       "ars": 238272852338391.9,
       "aud": 3275436142430.548,
       "bdt": 206037312202108.7,
       "bhd": 907279688154.3457,
       "bmd": 2406462524745.0938,
       "brl": 13314957149414.596,
       "cad": 3000389508164.8066,
       "chf": 2239701891167.8306,
       "clp": 1980903691869169.5,
       "cny": 15519276822081.1,
       "czk": 53026161086505.71,
       "dkk": 15526736855907.828,
       "eur": 2086884301458.9438,
       "gbp": 1770838765159.1204,
       "hkd": 18726008459430.18,
       "huf": 752356443736305.2,
       "idr": 34228199397585580,
       "ils": 7775906097707.813,
       "inr": 181644965262187.94,
       "jpy": 273347671723270.25,
       "krw": 2883012496079933.5,
       "kwd": 726429216494.7014,
       "lkr": 482454056280464.44,
       "mmk": 4644200034992756,
       "mxn": 50056586330970.19,
       "myr": 10024119646825.684,
       "ngn": 992867722540728.5,
       "nok": 20591498208612.57,
       "nzd": 3471651877310.6875,
       "php": 122368053864594.61,
       "pkr": 411940878030017.25,
       "pln": 9566049505240.45,
       "rub": 172994574747612.88,
       "sar": 9026260709239.918,
       "sek": 21143468517913.344,
       "sgd": 3265574459004.14,
       "thb": 80198958892142.14,
       "try": 21756875815470.9,
       "twd": 67725796772658.39,
       "uah": 63399482510297.055,
       "vef": 240959092602.72632,
       "vnd": 54867197484923300,
       "zar": 36000354497745.77,
       "xdr": 1708075816051.2466,
       "xag": 106681347412.3546,
       "xau": 1366870714.0552127,
       "bits": 42636440169273.47,
       "sats": 4263644016927346.5
     },
     "total_volume": {
       "btc": 2422595.770823148,
       "eth": 39008102.73215294,
       "ltc": 790456510.6840096,
       "bch": 231208948.06867436,
       "bnb": 310313634.619782,
       "eos": 30214743797.88214,
       "xrp": 123725876515.954,
       "xlm": 406677343019.2237,
       "link": 5521712638.066187,
       "dot": 3880166167.4174867,
       "yfi": 3922814.0747760613,
       "usd": 136734819134.67172,
       "aed": 502254337645.4769,
       "ars": 13538625694012.6,
       "aud": 186109762324.20172,
       "bdt": 11707007414101.914,
       "bhd": 51551488040.515656,
       "bmd": 136734819134.67172,
       "brl": 756553754272.1382,
       "cad": 170481656171.20438,
       "chf": 127259506373.09622,
       "clp": 112554633718896.27,
       "cny": 881802848599.4973,
       "czk": 3012938066150.5806,
       "dkk": 882226726538.8159,
       "eur": 118576435153.58723,
       "gbp": 100618777886.99248,
       "hkd": 1064008831837.4044,
       "huf": 42748773854263.72,
       "idr": 1944840863221045.2,
       "ils": 441825751677.0983,
       "inr": 10321038128146.164,
       "jpy": 15531571370688.215,
       "krw": 163812312953531.22,
       "kwd": 41275592912.90675,
       "lkr": 27412962989434.367,
       "mmk": 263882709695317.56,
       "mxn": 2844207299338.391,
       "myr": 569568889105.4749,
       "ngn": 56414586585195.36,
       "nok": 1170005663630.6018,
       "nzd": 197258709271.98538,
       "php": 6952933420315.555,
       "pkr": 23406415380425.97,
       "pln": 543541416283.1897,
       "rub": 9829524310543.709,
       "sar": 512870702472.7293,
       "sek": 1201368529095.5208,
       "sgd": 185549423035.3877,
       "thb": 4556892129482.718,
       "try": 1236222234492.9504,
       "twd": 3848169035352.795,
       "uah": 3602348544860.6816,
       "vef": 13691257439.954683,
       "vnd": 3117545462430163.5,
       "zar": 2045534435054.1067,
       "xdr": 97052597069.14128,
       "xag": 6061617246.674776,
       "xau": 77665377.2684935,
       "bits": 2422595770823.148,
       "sats": 242259577082314.8
     },
     "market_cap_percentage": {
       "btc": 44.19193819849595,
       "eth": 17.171909772728082,
       "bnb": 3.0785276668179327,
       "usdt": 2.899126686440975,
       "ada": 2.8365497226587038,
       "xrp": 2.149520955097677,
       "sol": 1.8801365056178965,
       "dot": 1.522675720480197,
       "usdc": 1.3743194784037585,
       "doge": 1.2424585077344446
     },
     "market_cap_change_percentage_24h_usd": -0.07672792434178367,
     "updated_at": 1634079133
   }
 }
 
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
