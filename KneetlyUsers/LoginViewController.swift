//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
 
    @IBOutlet var email_txt: UITextField!
    @IBOutlet var password_txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func dismisskeyboard()  {
        
        email_txt.resignFirstResponder()
        password_txt.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        email_txt.resignFirstResponder()
        password_txt.resignFirstResponder()
        return true
    }
    
}
