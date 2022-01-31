//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//
import UIKit

class RegisterVehicleViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var carNickname: UITextField!
    @IBOutlet weak var carRegistration: UITextField!
    @IBOutlet weak var carMake: UITextField!
    @IBOutlet weak var carModel: UITextField!
    @IBOutlet weak var carYear: UITextField!
    
    var isEdit : Bool = false
    var studentData : StudentInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
    }

    @IBAction func selectCarSmall(_ sender: UIButton) {
    }
    
    @IBAction func selectCarMedium(_ sender: UIButton) {
    }

    @IBAction func selectCarLarge(_ sender: UIButton) {
    }
    
    @IBAction func registerVehicle(_ sender: UIBarButtonItem) {
    }

    @IBAction func Updat_save(_ sender: AnyObject) {
        
        let studentInfo: StudentInfo = StudentInfo()
        studentInfo.carNickname=carNickname.text!
        studentInfo.carRegistration=carRegistration.text!
        studentInfo.carmake = carMake.text!
        studentInfo.carmodel = carModel.text!
        studentInfo.caryear = carYear.text!
        //studentInfo.Phone = mobilePhone.text!
        
        let isUpdated1 = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
        if isUpdated1 {
            
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterPaymentViewController")
            self.present(viewController, animated: true, completion: nil)
            
            //Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
        } else {
            Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
        }
    }

    @IBAction func Save_btn_click(_ sender: AnyObject) {
        
        if(carNickname.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter an carNickName address.", delegate: nil)
        }
        else if(carRegistration.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter a carRegistration.", delegate: nil)
        }
        else if(carMake.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your carmake.", delegate: nil)
        }
        else if(carModel.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your carmodel.", delegate: nil)
        }
        else if(carYear.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your caryear .", delegate: nil)
        }
        else
        {
            if(isEdit)
            {
                let studentInfo: StudentInfo = StudentInfo()
                //studentInfo.RollNo = studentInfo.RollNo
                
                //studentInfo.RollNo=studentInfo.RollNo
                
                studentInfo.RollNo=studentData.RollNo
                
                studentInfo.carNickname = carNickname.text!
                
                //studentInfo.carRegistraion = carRegistration.text!
                studentInfo.carmake = carMake.text!
                
                studentInfo.carmodel = carModel.text!
                studentInfo.caryear = carYear.text!
                
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
                studentInfo.carNickname = carNickname.text!
                //studentInfo.carRegistraion = carRegistration.text!
                studentInfo.carmake = carMake.text!
                studentInfo.carmodel = carModel.text!
                studentInfo.caryear = carYear.text!
                let isInserted2 = ModelManager.getInstance().addStudentData(studentInfo: studentInfo)
                if isInserted2 {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record Inserted successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in inserting record.", delegate: nil)
                }
            }
            //self.navigationController?.popViewController(animated: true)
        }
        
    }
}
