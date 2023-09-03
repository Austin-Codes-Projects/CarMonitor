//
//  ViewController.swift
//  Conitor.ver-2
//
//  Created by Sunesh, Austin on 2023-05-22.
//

import UIKit
import FirebaseAuth
class SignInControler: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
   
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignContionue(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in if let e = error {
            print ("error")
        }
            else {
                self.performSegue(withIdentifier: "gotoform1", sender: self)
            }
        }
        
    }
    
}
