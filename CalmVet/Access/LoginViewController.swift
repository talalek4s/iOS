//
//  LoginViewController.swift
//  CalmVet
//
//  Created by Aarón Cervantes Álvarez on 14/03/21.
//

import UIKit


class LoginViewController: UIViewController, UITextFieldDelegate {
  
  /** Text Fields */
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  /** Buttons Element */
  @IBOutlet weak var submitButton: UIButton!
  @IBOutlet weak var registerButton: UIButton!
  
  /** ScrollView Element */
  @IBOutlet weak var scrollView: UIScrollView!
  
  private var keyboardGestureRecognizer = KeyboardGestureRecognizer()
  private var navigation = Navigation()
  
  // Create a storyBoard instace
  private var storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
  
  /** Lifecycles */
  override func viewDidLoad() {
    super.viewDidLoad()
    submitButton.layer.cornerRadius = 4;
  }
  override func viewWillAppear(_ animated: Bool) {
    
    super.viewWillAppear(animated)
    
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(showKeyboard),
      name: UIResponder.keyboardDidShowNotification,
      object: nil
    )
    
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(hideKeyboard),
      name: UIResponder.keyboardDidHideNotification,
      object: nil
    )
    
  }
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    NotificationCenter.default.removeObserver(self)
  }
  
  /** Tap Gesture Recognizer */
  @IBAction func tapOnView() {
    view.endEditing(true)
  }
  @objc func showKeyboard( notification: Notification ) {    
    scrollView.contentSize.height = keyboardGestureRecognizer
      .keyboardEnabled(notification: notification, scrollView: scrollView)
    
  }
  @objc func hideKeyboard( notification: Notification ) {
    scrollView.contentSize.height = keyboardGestureRecognizer
      .keyboardDisabled(notification: notification, scrollView: scrollView)
  }
  
  /** Navigate to Register View Controller */
  @IBAction func navigateToRegister(_ sender: UIButton) {

    // Create a SignUpViewController instance
    let signUpViewController = storyBoard.instantiateViewController(withIdentifier: "SignupBoard") as! SignupViewController

    // Navigate to ViewController
    navigation.navigateToViewController( viewController: signUpViewController )
  }
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
