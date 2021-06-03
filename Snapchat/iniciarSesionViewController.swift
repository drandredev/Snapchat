//
//  ViewController.swift
//  Snapchat
//
//  Created by drandredev on 2/06/21.
//

import UIKit
import Firebase
import FirebaseAuth
import FBSDKLoginKit

class iniciarSesionViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){ (user,error) in
            print("Intentando Iniciar Sesión")
            if error != nil {
                print("Se presentó el siguiente error: \(error)")
            } else {
                print("Inicio de sesión exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBLoginButton()
                loginButton.center = view.center
                view.addSubview(loginButton)
        if let token = AccessToken.current,
                !token.isExpired {
                // User is logged in, do work such as go to next view controller.
            }
        loginButton.permissions = ["public_profile", "email"]
    }


}

