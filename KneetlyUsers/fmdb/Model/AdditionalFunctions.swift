//
//  AdditionalFunctions.swift
//  KneetlyUsers
//
//  Created by Matt Westcott on 4/10/16.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import Foundation

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
