//
//  VolumeInfo.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import Foundation

class VolumeInfoDTO: Codable {
    var title: String
    var subtitle: String?
    var authors: [String]?
    var publishedDate: String
    var industryIdentifiers: [IndustryIdentifiersDTO]?
    var readingModes: ReadingModesDTO
    var pageCount: Int?
    var printType: String
    var categories: [String]?
    var maturityRating: String
    var allowAnonLogging: Bool
    var contentVersion: String
    var panelizationSummary: PanelizationSummaryDTO?
    var imageLinks: ImageLinksDTO
    var language: String
    var previewLink: String
    var infoLink: String
    var canonicalVolumeLink: String
    var description: String?
}
