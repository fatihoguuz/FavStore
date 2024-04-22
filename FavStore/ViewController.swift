//
//  ViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 21.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logInClicked(_ sender: Any) {
    }
    
    
    @IBAction func logUpClicked(_ sender: Any) {
        performSegue(withIdentifier: "toLogUpVC", sender: nil)
    }
    
}

