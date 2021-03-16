//
//  Navigation.swift
//  CalmVet
//
//  Created by Aarón Cervantes Álvarez on 16/03/21.
//

import UIKit

class Navigation: NSObject {

  /** Getting access to the window object from SceneDelegate */
  public func navigateToViewController( viewController: UIViewController ) {

    guard
      // Get UIWindowScene
      let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
      
      // Instance SceneDelegate
      let sceneDelegate = windowScene.delegate as? SceneDelegate
    else {
      return
    }
      
     // Navigate to ViewController
    sceneDelegate.window?.rootViewController = viewController

  }

}
