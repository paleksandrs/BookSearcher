//
//  SearchViewTableViewCell.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 30.03.2021.
//

import UIKit
import AlamofireImage

class SearchViewTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    
    func setup(data: SearchPresenterBookVM) {
        titleLabel.text = data.title
        authorLabel.text = data.author
        iconImageView.image = nil
        if let thumbnailUrl = data.thumbnailUrl {
            iconImageView.af_setImage(withURL: thumbnailUrl)
        } else {
            iconImageView.af_cancelImageRequest()
        }
    }
}
