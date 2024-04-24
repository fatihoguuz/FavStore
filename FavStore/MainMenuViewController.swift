//
//  MainMenuViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 24.04.2024.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
    }
    

    @objc func addButtonClicked() {
        
        
        
    }

}
