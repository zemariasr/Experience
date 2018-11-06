//
//  MarvelClasses.swift
//  MarvelQuiz
//
//  Created by José Maria Só Rodrigues on 05/11/2018.
//  Copyright © 2018 ZM FIGHTER SYSTEM. All rights reserved.
//

import Foundation

struct MarvelInfo: Codable {
    let code: Int
    let status: String
    let data: MarvelData
    
}

struct MarvelData: Codable {
    let offset: Int
    let limit: Int
    let total: Int
    let count: Int
    let results: [Hero]
}

struct Hero: Codable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let urls: [HeroURL]
 //   let comics: [ComicList]
}

struct Thumbnail: Codable {
    let path: String
    let ext: String
    
    var url: String {
        return path + "." + ext
    }
    
    enum CodingKeys: String, CodingKey {
        case path
        case ext = "extension"
    }
    
}

struct HeroURL: Codable {
    let type: String
    let url: String
    
}

//struct ComicList: Codable {
//    let available: Int
//    let returned: Int
//    let items: [ComicSummary]
//}

//struct ComicSummary: Codable {
//    let name: String
//}
