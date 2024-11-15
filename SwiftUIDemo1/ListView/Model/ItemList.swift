//
//  ItemList.swift
//  SwiftUIDemo1
//
//  Created by Pravin Parmar on 12/11/24.
//

import SwiftUI


// MARK: - Welcome
class ItemList: Codable,Identifiable {
    
    let albumID, id: Int?
    let title: String?
    let url, thumbnailURL: String?
    
    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }

    init(albumID: Int?, id: Int?, title: String?, url: String?, thumbnailURL: String?) {
        self.albumID = albumID
        self.id = id
        self.title = title
        self.url = url
        self.thumbnailURL = thumbnailURL
    }
}
