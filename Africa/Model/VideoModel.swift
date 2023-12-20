//
//  VideoModel.swift
//  Africa
//
//  Created by mohamed ramadan on 17/12/2023.
//

import Foundation
struct VideoModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    var thumbnail: String {
      "video-\(id)"
    }
}
