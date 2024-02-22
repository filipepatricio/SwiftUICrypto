//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 22/02/2024.
//

import Foundation

// JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 12849,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 945,
 "total_market_cap": {
 "btc": 40151238.12883086,
 "eth": 697107738.0385649,
 "ltc": 29801397432.658707,
 "bch": 7890240854.768725,
 "bnb": 5428800348.840179,
 "eos": 2695051473812.5493,
 "xrp": 3807356884008.726,
 "xlm": 17800536040381.65,
 "link": 112370247286.73938,
 "dot": 276486214065.1527,
 "yfi": 275428795.00303686,
 "usd": 2045354449693.7974,
 "aed": 7512484626002.832,
 "ars": 1714761774862113.5,
 "aud": 3118617380790.5273,
 "bdt": 224535841187988.16,
 "bhd": 770736599796.9663,
 "bmd": 2045354449693.7974,
 "brl": 10104255516932.35,
 "cad": 2761185554643.1846,
 "chf": 1798834013935.5542,
 "clp": 1982132543653761.5,
 "cny": 14712030021202.54,
 "czk": 47820180453041.56,
 "dkk": 14074979833591.99,
 "eur": 1888203731260.4753,
 "gbp": 1618106494760.6106,
 "gel": 5409962519440.078,
 "hkd": 15998803412593.887,
 "huf": 730758874867235.1,
 "idr": 31895826938147524,
 "ils": 7466691185228.632,
 "inr": 169518455225237.22,
 "jpy": 307791950230828.4,
 "krw": 2715794148739623,
 "kwd": 629439423703.2192,
 "lkr": 635906429492969.5,
 "mmk": 4296880619735334.5,
 "mxn": 34975068159341.6,
 "myr": 9769635528962.443,
 "ngn": 3274898823582728.5,
 "nok": 21449223043048.945,
 "nzd": 3304208752846.8433,
 "php": 114179860663643.23,
 "pkr": 571633941457330.5,
 "pln": 8152680568757.012,
 "rub": 189209477265848.4,
 "sar": 7671341170047.209,
 "sek": 21099328348048.723,
 "sgd": 2746103110931.143,
 "thb": 73525379080367.69,
 "try": 63375510113852.86,
 "twd": 64512829455604.99,
 "uah": 78712256835334.22,
 "vef": 204801341047.8399,
 "vnd": 50316063024745160,
 "zar": 39101533945218.73,
 "xdr": 1544553503395.1719,
 "xag": 89017466381.59473,
 "xau": 1009505142.1908698,
 "bits": 40151238128830.86,
 "sats": 4015123812883086
 },
 "total_volume": {
 "btc": 1865450.1225519206,
 "eth": 32388035.237751693,
 "ltc": 1384590440.6383111,
 "bch": 366585227.6401789,
 "bnb": 252225255.0110516,
 "eos": 125213675503.00613,
 "xrp": 176892038623.66147,
 "xlm": 827023366788.1846,
 "link": 5220787735.103935,
 "dot": 12845712011.590567,
 "yfi": 12796583.700461442,
 "usd": 95028369899.84778,
 "aed": 349034451223.6458,
 "ars": 79668839919707.42,
 "aud": 144892796494.1349,
 "bdt": 10432067153631.947,
 "bhd": 35808875430.77036,
 "bmd": 95028369899.84778,
 "brl": 469449650142.23895,
 "cad": 128286303769.02667,
 "chf": 83574885560.92888,
 "clp": 92091042986243.45,
 "cny": 683529561852.6162,
 "czk": 2221753690393.081,
 "dkk": 653931835706.8689,
 "eur": 87727055155.33282,
 "gbp": 75178178796.57834,
 "gel": 251350038385.09662,
 "hkd": 743313809924.0077,
 "huf": 33951486833431.84,
 "idr": 1481898866474499.5,
 "ils": 346906861049.9578,
 "inr": 7875927065065.057,
 "jpy": 14300194913947.29,
 "krw": 126177392371726.55,
 "kwd": 29244125581.34907,
 "lkr": 29544586471355.125,
 "mmk": 199635599105487.78,
 "mxn": 1624962223450.253,
 "myr": 453903008826.62384,
 "ngn": 152153724181442.34,
 "nok": 996543509465.725,
 "nzd": 153515480722.10727,
 "php": 5304863436203.994,
 "pkr": 26558448900750.38,
 "pln": 378778331002.2992,
 "rub": 8790783522566.292,
 "sar": 356415019628.6577,
 "sek": 980287196283.6976,
 "sgd": 127585564569.38522,
 "thb": 3416032326974.7734,
 "try": 2944463449155.4043,
 "twd": 2997303974238.21,
 "uah": 3657017716083.2686,
 "vef": 9515190678.071756,
 "vnd": 2337713861641609.5,
 "zar": 1816680249212.537,
 "xdr": 71760863586.60991,
 "xag": 4135803808.539807,
 "xau": 46902202.24776883,
 "bits": 1865450122551.9207,
 "sats": 186545012255192.06
 },
 "market_cap_percentage": {
 "btc": 48.901575794379504,
 "eth": 17.23529361246233,
 "usdt": 4.753707805532923,
 "bnb": 2.834073555914619,
 "sol": 2.226637955243628,
 "xrp": 1.432814020985521,
 "steth": 1.4042768193672117,
 "usdc": 1.3631394990459738,
 "ada": 1.0064272124533817,
 "avax": 0.6736530708099899
 },
 "market_cap_change_percentage_24h_usd": -0.12293109653582367,
 "updated_at": 1708609901
 }
 }
 
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey{
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String{
        if let item = totalMarketCap.first(where: { $0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}){
            return item.value.asPercentString()
        }
        return ""
    }
    
    
}
