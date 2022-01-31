//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class RegisterProfileViewController: UIViewController,UITextFieldDelegate {
   
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var streetAddress: UITextField!
    @IBOutlet weak var suburb: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var postcode: UITextField!
    var gender: String = ""
//    var profile: [Profile] = []
    
    var isEdit : Bool = false
    var studentData : StudentInfo!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

    }
    
    override func viewWillAppear(_ animated: Bool) {
//        getData()
//        print(profile)
    }
    
    @IBAction func registerProfile(_ sender: UIBarButtonItem) {
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//        let profile = Profile(context: context)
//        profile.firstName = firstName.text!
//        profile.lastName = lastName.text!
//        profile.dateOfBirth = dateOfBirth.text!
//        profile.streetAddress = streetAddress.text!
//        profile.suburb = suburb.text!
//        profile.state = state.text!
//        profile.country = country.text!
//        profile.postcode = postcode.text!
//        profile.gender = gender
        
        // Save the data to CoreData
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        print("Saved")
    }
    
    @IBAction func selectFemaleAvatar(_ sender: UIButton) {
        gender = "Female"
        print("Female button pressed")
    }
    
    @IBAction func selectMaleAvatar(_ sender: UIButton) {
        gender = "Male"
        print("Male button pressed")
    }
    
    
    
    @IBAction func Save_Btn_click(_ sender: AnyObject) {
        
        
        if(firstName.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter an firstName .", delegate: nil)
        }
        else if(lastName.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter a LastName.", delegate: nil)
        }
        else if(dateOfBirth.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your Dateofbirth .", delegate: nil)
        }
        else if (streetAddress.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your streetAdress .", delegate: nil)
        }
        else if (suburb.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your suburb .", delegate: nil)
        }
        else if (state.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your state .", delegate: nil)
        }
        else if (country.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your country .", delegate: nil)
        }
        else if (postcode.text == "")
        {
            Util.invokeAlertMethod(strTitle: "", strBody: "Please enter your postcode .", delegate: nil)
        }
        else
        {
            if(isEdit)
            {
                let studentInfo: StudentInfo = StudentInfo()
                //studentInfo.RollNo = studentInfo.RollNo
                //studentInfo.RollNo=studentInfo.RollNo
                studentInfo.RollNo=studentData.RollNo
                studentInfo.firstName = firstName.text!
                studentInfo.LastName = lastName.text!
                studentInfo.dateofbirth = dateOfBirth.text!
                studentInfo.streetAddress = streetAddress.text!
                studentInfo.suburb = suburb.text!
                studentInfo.state = state.text!
                studentInfo.country = country.text!
                studentInfo.postcode = postcode.text!
                
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
                studentInfo.firstName = firstName.text!
                
                studentInfo.LastName = lastName.text!
                studentInfo.dateofbirth = dateOfBirth.text!
                studentInfo.streetAddress = streetAddress.text!
                studentInfo.suburb = suburb.text!
                studentInfo.state = state.text!
                studentInfo.country = country.text!
                studentInfo.postcode = postcode.text!
                
                let isInserted1 = ModelManager.getInstance().addStudentData(studentInfo: studentInfo)
                if isInserted1 {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Record Inserted successfully.", delegate: nil)
                } else {
                    Util.invokeAlertMethod(strTitle: "", strBody: "Error in inserting record.", delegate: nil)
                }
            }
            //self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func update_Btn(_ sender: AnyObject) {
        let studentInfo: StudentInfo = StudentInfo()
        //studentInfo.RollNo = studentData.RollNo
        studentInfo.firstName = firstName.text!
        studentInfo.LastName = lastName.text!
        studentInfo.dateofbirth=dateOfBirth.text!
        studentInfo.streetAddress=streetAddress.text!
        studentInfo.suburb=suburb.text!
        studentInfo.state=state.text!
        studentInfo.country=country.text!
        studentInfo.postcode=postcode.text!
        
        //studentInfo.Phone = mobilePhone.text!
        
        
        let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
        if isUpdated {
            let viewController:UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterVehicleViewController")
            self.present(viewController, animated: true, completion: nil)

            //Util.invokeAlertMethod(strTitle: "", strBody: "Record updated successfully.", delegate: nil)
        } else {
            Util.invokeAlertMethod(strTitle: "", strBody: "Error in updating record.", delegate: nil)
        }

    }
}
