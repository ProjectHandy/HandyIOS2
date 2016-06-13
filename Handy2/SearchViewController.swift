//
//  SearchViewController.swift
//  Handy2
//
//  Created by 宫澄光 on 4/1/16.
//  Copyright © 2016 cggong. All rights reserved.
//

import UIKit
import Alamofire

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var bookTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var data: [bookinfo] = [
        bookinfo(title: "Odyssey", author: "Robert Fagles", isbn: "9780140268867", oncampus: 16, lowestoffer: 7.5),
        bookinfo(title: "Hortensius", author: "William Forsyth", isbn: "9781330550335", oncampus: 14, lowestoffer: 5.5)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bookTableView.dataSource = self
        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        self.searchBar.showsCancelButton = true
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.showsCancelButton = false
        searchBar.text = ""
        searchBar.resignFirstResponder()
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        //let queryText: String = searchBar.text!
        //Alamofire.request(.POST, "http://107.170.244.118:12323/matchbook", parameters: ["indicator": queryText])
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: BookCell = bookTableView.dequeueReusableCellWithIdentifier("BookCell", forIndexPath: indexPath) as! BookCell
        let book: bookinfo = data[indexPath.section]
        cell.titleLabel.text = book.title
        cell.authorLabel.text = book.author
        cell.isbnLabel.text = "ISBN: \(book.isbn)"
        cell.oncampusLabel.text = "On Campus: \(book.oncampus)"
        cell.lowestofferLabel.text = "Lowest Offer: $\(book.lowestoffer)"
        return cell
    }
    
}