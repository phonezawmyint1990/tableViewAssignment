//
//  ViewController.swift
//  tableViewAssignment
//
//  Created by Aung Ko Ko on 8/6/19.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static let identifier = "ViewController"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let nib = UINib(nibName: FriendTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: FriendTableViewCell.identifier)
        self.tableView.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)
        self.tableView.rowHeight = 148.5
    }
}

extension ViewController: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendTableViewCell.identifier, for: indexPath) as! FriendTableViewCell
        return cell
    }
    
    
    
}
