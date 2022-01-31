//
//  Created by Matt Westcott.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet weak var cardType: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var cardExpiry: UITextField!
    @IBOutlet weak var cardCSV: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func savePayment(_ sender: UIBarButtonItem) {
        
    }
}
