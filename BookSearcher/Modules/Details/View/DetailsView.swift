//
//  DetailsView.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class DetailsView: UIViewController, DetailsViewInputProtocol, ViewProtocol {

    @IBOutlet private weak var thumbnail: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorsLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    var viewOutput: DetailsViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput?.loadData()
    }
    
    func show(details: DetailsPresenterBookVM) {
        if let thumbnailUrl = details.thumbnailUrl {
            thumbnail.af_setImage(withURL: thumbnailUrl)
        }
        titleLabel.text = details.title
        authorsLabel.text = details.author
        descriptionLabel.text = details.description
    }
}
