//
//  LoginViewController.swift
//  Conitor.ver-2
//
//  Created by Sunesh, Austin on 2023-06-08.
//

import UIKit
import Firebase

class LoginViewControler: UIViewController {

    @IBOutlet weak var email1TextField: UITextField!
    
    @IBOutlet weak var password1TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func LoginButton(_ sender: Any) {
            guard let email = email1TextField.text else {return}
        guard let password = password1TextField.text else {return}
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in if let e = error {
            print ("error")
        }
            else {
                self.performSegue(withIdentifier: "gotohome1", sender: self)
            }
        }
        
    }
    
}
