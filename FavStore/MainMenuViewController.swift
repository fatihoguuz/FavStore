//
//  MainMenuViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 24.04.2024.
//

import UIKit
import Parse

class MainMenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.stop, target: self, action: #selector(logOutButtonClicked))
    }
    

    @objc func addButtonClicked() {
        self.performSegue(withIdentifier: "next", sender: nil)
        
    }
    @objc func logOutButtonClicked(){
    
        PFUser.logOutInBackground { error in
            if error != nil {
                self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "ERROR!!!")
                
            }else{
                self.performSegue(withIdentifier: "toSignInVC", sender: nil)
            }
        }
        
        
    }
    func makeAlert(titleInput: String , messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okBotton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okBotton)
        present(alert, animated: true, completion: nil)
        
    }
}
