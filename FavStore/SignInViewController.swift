//
//  ViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 21.04.2024.
//

import UIKit
import Parse

class SignInViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var logInClicked: UIButton!
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }


    @IBAction func logInClicked(_ sender: Any) {
        if userNameText.text != "" && passwordText.text != "" {

            
            print("Success")
            PFUser.logInWithUsername(inBackground: userNameText.text!, password: passwordText.text!) { (user , error) in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "ERROR!!!")
                   
                    
                }else {
                    self.performSegue(withIdentifier: "toMainMenu", sender: nil)
                }

            }
            
            
        }else{
            makeAlert(titleInput: "Error", messageInput: "Username / Password")
        }
        

    }
    
    
    @IBAction func logUpClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "toLogUpVC", sender: nil)
    }
    
    func makeAlert(titleInput: String , messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okBotton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okBotton)
        present(alert, animated: true, completion: nil)
        
    }
  

}

