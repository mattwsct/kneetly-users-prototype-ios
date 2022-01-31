//
//  Vehicle_profile_ViewController.swift
//  KneetlyUsers
//
//  Created by Kiran on 10/9/16.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class Vehicle_profile_ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Mobile: UITextField!
    
    
    
    @IBOutlet weak var firstname: UITextField!
    
    
    @IBOutlet weak var lastname: UITextField!
    
    @IBOutlet weak var change_psw: UITextField!
    
    
    
    var Emailtext = String()
    var passwordtext = String()
    var phonetext = String()
    var firstnametext = String()
    var lastnametext = String()
    
    

    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Email.text = Emailtext
        change_psw.text = passwordtext
        Mobile.text = phonetext
        firstname.text = firstnametext
        lastname.text = lastnametext

        
        

        // Do any additional setup after loading the view.
    }
    
    
    
   
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func Edit_btn(_ sender: AnyObject) {
        
        
        
        let studentInfo: StudentInfo = StudentInfo()
        //studentInfo.RollNo = studentData.RollNo
        studentInfo.Email = Email.text!
        
        
        studentInfo.Phone = Mobile.text!
        
        studentInfo.Password=change_psw.text!
        studentInfo.firstName=firstname.text!
         studentInfo.LastName=lastname.text!
        
        
        
        //studentInfo.Phone = mobilePhone.text!
        
        
        let isUpdated = ModelManager.getInstance().updateStudentData(studentInfo: studentInfo)
        if isUpdated {
            Util.invokeAlertMethod(strTitle: "", strBody: "Record Edit successfully.", delegate: nil)
        } else {
            Util.invokeAlertMethod(strTitle: "", strBody: "Error in Edit record.", delegate: nil)
        }

        
        
        
        
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
