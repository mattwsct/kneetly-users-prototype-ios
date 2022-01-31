//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class UpdateVehicleViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var car_nickname_txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
}
