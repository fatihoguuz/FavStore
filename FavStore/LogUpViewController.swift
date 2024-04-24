//
//  LogUpViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 24.04.2024.
//

import UIKit
import Parse

class LogUpViewController: UIViewController {

    @IBOutlet weak var emailTextView: UITextField!
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func signUpButton(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
        let user = PFUser()
        UserData.shared.userName = usernameText.text
        UserData.shared.password = passwordText.text
        user.username = usernameText.text!
        user.password = passwordText.text!
        
        user.signUpInBackground { (success, error) in
            if error != nil {
                self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "ERROR!!")
                
            }else{
                self.performSegue(withIdentifier: "toViewController", sender: nil)
            }
        }
    }else {
        makeAlert(titleInput: "Error", messageInput: "Username / Password ?")
        
        
    }
    
}

func makeAlert(titleInput: String , messageInput: String) {
    let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
    let okBotton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
    alert.addAction(okBotton)
    present(alert, animated: true, completion: nil)
    
}
}
