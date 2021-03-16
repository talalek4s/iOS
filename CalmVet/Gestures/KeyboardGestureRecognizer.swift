//
//  keyboardGestureRecognizer.swift
//  CalmVet
//
//  Created by Aarón Cervantes Álvarez on 15/03/21.
//

import UIKit

class KeyboardGestureRecognizer: UITapGestureRecognizer {
  private var isKeyboardEnabled = false
  
  public func keyboardEnabled(
    notification: Notification,
    scrollView: UIScrollView
  ) -> CGFloat {
    print ("el teclado aparece")
    if isKeyboardEnabled { return scrollView.contentSize.height }
    isKeyboardEnabled = true;
    
    if let keyboardSize =
        ( notification.userInfo?[
          UIResponder.keyboardFrameEndUserInfoKey
        ] as? NSValue)?.cgRectValue {
      return scrollView.contentSize.height + keyboardSize.height;
    }
    
    return scrollView.contentSize.height
  }

  public func keyboardDisabled(
    notification: Notification,
    scrollView: UIScrollView
  ) -> CGFloat {
    print ("el teclado se fue")
    if !isKeyboardEnabled { return scrollView.contentSize.height }
    isKeyboardEnabled = false;
    
    if let keyboardSize =
        ( notification.userInfo?[
          UIResponder.keyboardFrameEndUserInfoKey
        ] as? NSValue)?.cgRectValue {
      return scrollView.contentSize.height - keyboardSize.height;
    }
    
    return scrollView.contentSize.height
  }

}
