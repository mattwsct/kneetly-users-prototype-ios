//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class RegisterPaymentViewController: UIViewController {

    @IBOutlet weak var cardType: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var cardExpiry: UITextField!
    @IBOutlet weak var cardCSV: UITextField!
    
    var isEdit : Bool = false
    var studentData : StudentInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Reg_save_btn(_ sender: AnyObject) {

        let studentInfo: StudentInfo = StudentInfo()
        //studentInfo.RollNo = studentData.RollNo
        studentInfo.cardType = cardType.text!
        studentInfo.cardNumber = cardNumber.text!
        studentInfo.cardExpiry=cardExpiry.text!
        studentInfo.cardCSV=cardCSV.text!
        //studentInfo.Phone = mobilePhone.text!
        
        let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
        
        if isUpdated {
            Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
        } else {
            Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
        }
    }
    
    @IBAction func registerPayment(_ sender: UIBarButtonItem) {

    }
}
