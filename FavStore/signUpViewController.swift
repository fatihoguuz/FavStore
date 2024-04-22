//
//  signUpViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 22.04.2024.
//

import UIKit
import Parse

class signUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextView: UITextField!
    @IBOutlet weak var usernameTextV: UITextField!
    @IBOutlet weak var passwordTextV: UITextField!
    
    override func viewDidLoad() {
        
        
        
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if usernameTextV.text != "" && passwordTextV.text != "" {
            let user = PFUser()
            user.username = usernameTextV.text!
            user.password = passwordTextV.text!
            
            user.signUpInBackground { (success, error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "ERROR!!")
                    
                }else{
                    
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
