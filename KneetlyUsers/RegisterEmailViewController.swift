//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class RegisterEmailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var mobilePhone: UITextField!
    
    var isEdit : Bool = false
    var studentData : StudentInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        emailAddress.delegate = self
        password.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailAddress.resignFirstResponder()
        password.resignFirstResponder()
        mobilePhone.resignFirstResponder()

        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SaveBtn(_ sender: AnyObject) {
        
        if(emailAddress.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter an email address.", delegate: nil)
        }
        else if(password.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter a password.", delegate: nil)
        }
            
        else if(mobilePhone.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your mobile number.", delegate: nil)
        }
        else
        {
            if(isEdit)
            {
                let studentInfo: StudentInfo = StudentInfo()
                //studentInfo.RollNo = studentInfo.RollNo
                //studentInfo.RollNo=studentInfo.RollNo
                studentInfo.RollNo=studentData.RollNo
                studentInfo.Email = emailAddress.text!
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
                if isUpdated {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
                }
            }
            else
            {
                let studentInfo: StudentInfo = StudentInfo()
                studentInfo.Email = emailAddress.text!
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                let isInserted = ModelManager.getInstance().addStudentData(studentInfo: studentInfo)
                if isInserted {
                    let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterProfileViewController")
                    self.present(viewController, animated: true, completion: nil)
                    
                   // Util.invokeAlertMethod(strTitle: "", strBody: "Record Inserted successfully.", delegate: nil)
                    
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in inserting record.", delegate: nil)
                }
            }
        }
    }
    
    @IBAction func btnclk(_ sender: AnyObject) {
        if(emailAddress.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter an email address.", delegate: nil)
        }
        else if(password.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter a password.", delegate: nil)
        }
            
        else if(mobilePhone.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your mobile number.", delegate: nil)
        }
        else
        {
            if(isEdit)
            {
                let studentInfo: StudentInfo = StudentInfo()
                //studentInfo.RollNo = studentInfo.RollNo
                
                //studentInfo.RollNo=studentInfo.RollNo
                
                studentInfo.RollNo=studentData.RollNo
                
                studentInfo.Email = emailAddress.text!
                
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
                if isUpdated {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
                }
            }
            else
            {
                let studentInfo: StudentInfo = StudentInfo()
                studentInfo.Email = emailAddress.text!
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                
                let isInserted = ModelManager.getInstance().addStudentData(studentInfo: studentInfo)
                if isInserted {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record Inserted successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in inserting record.", delegate: nil)
                }
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterProfileViewController") as! RegisterProfileViewController
                let navigationController = UINavigationController(rootViewController: vc)
                self.present(navigationController, animated: true, completion: nil)
                
                //self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func Item_save(_ sender: AnyObject) {
        if(emailAddress.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter an email address.", delegate: nil)
        }
        else if(password.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter a password.", delegate: nil)
        }
            
        else if(mobilePhone.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your mobile number.", delegate: nil)
        }
        else
        {
            if(isEdit)
            {
                let studentInfo: StudentInfo = StudentInfo()
                //studentInfo.RollNo = studentInfo.RollNo
                
                //studentInfo.RollNo=studentInfo.RollNo
                
                studentInfo.RollNo=studentData.RollNo
                
                studentInfo.Email = emailAddress.text!
                
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
                if isUpdated {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
                }
            }
            else
            {
                let studentInfo: StudentInfo = StudentInfo()
                studentInfo.Email = emailAddress.text!
                studentInfo.Password = password.text!
                studentInfo.Phone = mobilePhone.text!
                
                
                let isInserted = ModelManager.getInstance().addStudentData(studentInfo: studentInfo)
                if isInserted {
                    
                    
                    let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterProfileViewController")
                    self.present(viewController, animated: true, completion: nil)
                    
                    
                    
                    // Util.invokeAlertMethod(strTitle: "", strBody: "Record Inserted successfully.", delegate: nil)
                    
                    
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in inserting record.", delegate: nil)
                }
            }
        }
        return
    }
    @IBAction func registerWithFacebook(_ sender: UIButton) {
        return
    }
    @IBAction func registerEmail(_ sender: UIBarButtonItem) {
    }
}
