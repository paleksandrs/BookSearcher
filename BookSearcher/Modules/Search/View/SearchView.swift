//
//  SearchView.swift
//  BookSearcher
//
//  Created by Aleksandrs Proskurins on 29.03.2021.
//

import UIKit

class SearchView: UIViewController, SearchViewInputProtocol, ViewProtocol {

    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var tableView: UITableView!
    
    var viewOutput: SearchViewOutputProtocol?
    
    var items: [SearchPresenterBookVM] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = searchBar
    }
    
    func updateUI(data: [SearchPresenterBookVM]) { items = data }
}

extension SearchView: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewOutput?.updateData(query: searchBar.text ?? "")
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        view.window?.endEditing(true)
    }
}

extension SearchView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchViewTableViewCell.self),
                                                 for: indexPath)
        (cell as? SearchViewTableViewCell)?.setup(data: items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewOutput?.selectItem(index: indexPath.row)
    }
}
