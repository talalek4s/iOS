//
//  LoginViewController.swift
//  CalmVet
//
//  Created by Aarón Cervantes Álvarez on 14/03/21.
//

import UIKit

// Material Design

// Buttons
import MaterialComponents.MaterialButtons

// Text Fields
import MaterialComponents.MaterialTextControls_FilledTextAreas
import MaterialComponents.MaterialTextControls_FilledTextFields
import MaterialComponents.MaterialTextControls_OutlinedTextAreas
import MaterialComponents.MaterialTextControls_OutlinedTextFields

class LoginViewController: UIViewController {

  @IBOutlet weak var registerButton: MDCButton!
  @IBOutlet weak var submitButton: MDCButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  @IBAction func goToRegisterView(_ sender: MDCButton) {
    performSegue(withIdentifier: “BruceTheHoon”, sender: self)
  }
  
}
