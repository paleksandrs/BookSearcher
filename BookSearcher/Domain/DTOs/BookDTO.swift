//
//  BookDTO.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

class BookDTO: Codable {
    var kind: String
    var id: String
    var etag: String
    var selfLink: String
    var volumeInfo: VolumeInfoDTO
    var saleInfo: SalesInfoDTO
    var accessInfo: AccessInfoDTO
}
