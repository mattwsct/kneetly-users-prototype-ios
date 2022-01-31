//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class InterviewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var carTypePicker: UIPickerView!
    @IBOutlet weak var carTypeLabel: UIButton!
    @IBOutlet weak var washTimePicker: UIPickerView!
    @IBOutlet weak var washTimeLabel: UIButton!
    @IBOutlet weak var washerMovementPicker: UIPickerView!
    @IBOutlet weak var washerMovementLabel: UIButton!
    @IBOutlet weak var washTypePicker: UIPickerView!
    @IBOutlet weak var washTypeLabel: UIButton!
    
    var carTypes = ["Tesla Model S", "Toyota Corolla", "Lamborghini Aventador"]
    var washTimes = ["now.", "later."]
    var washerMovements = ["come to me", "wait for me"]
    var washTypes = ["classic wash.", "express wash.", "express plus wash."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.carTypePicker.delegate = self
        self.carTypePicker.dataSource = self
        self.washTimePicker.delegate = self
        self.washTimePicker.dataSource = self
        self.washerMovementPicker.delegate = self
        self.washerMovementPicker.dataSource = self
        self.washTypePicker.delegate = self
        self.washTypePicker.dataSource = self
        
        carTypePicker.isHidden = true
        washTimePicker.isHidden = true
        washerMovementPicker.isHidden = true
        washTypePicker.isHidden = true
    }
    
    @IBAction func carTypePressed(_ sender: UIButton) {
        carTypePicker.isHidden = false
    }
    @IBAction func washTimePressed(_ sender: UIButton) {
        washTimePicker.isHidden = false
    }
    @IBAction func washerMovementPressed(_ sender: UIButton) {
        washerMovementPicker.isHidden = false
    }
    @IBAction func washTypePressed(_ sender: UIButton) {
        washTypePicker.isHidden = false
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return carTypes.count
        }
        else if pickerView.tag == 1 {
            return washTimes.count
        }
        else if pickerView.tag == 2 {
            return washerMovements.count
        }
        else{
            return washTypes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return carTypes[row]
        }
        else if pickerView.tag == 1 {
            return washTimes[row]
        }
        else if pickerView.tag == 2 {
            return washerMovements[row]
        }
        else{
            return washTypes[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            carTypeLabel.setTitle(carTypes[row], for: .normal)
            carTypePicker.isHidden = true
        }
        else if pickerView.tag == 1 {
            washTimeLabel.setTitle(washTimes[row], for: .normal)
            washTimePicker.isHidden = true
        }
        else if pickerView.tag == 2 {
            washerMovementLabel.setTitle(washerMovements[row], for: .normal)
            washerMovementPicker.isHidden = true
        }
        else{
            washTypeLabel.setTitle(washTypes[row], for: .normal)
            washTypePicker.isHidden = true
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.black
        pickerLabel.font = UIFont(name: "Gibson-Light", size: 25)
        pickerLabel.textAlignment = NSTextAlignment.center
        if pickerView.tag == 0 {
            pickerLabel.text = carTypes[row]
        }
        else if pickerView.tag == 1 {
            pickerLabel.text = washTimes[row]
        }
        else if pickerView.tag == 2 {
            pickerLabel.text = washerMovements[row]
        }
        else {
            pickerLabel.text = washTypes[row]
        }
        return pickerLabel
    }
    
    //    @IBAction func datepkr_btn(_ sender: AnyObject) {
    //
    //        let datePicker: UIDatePicker = UIDatePicker()
    //        datePicker.frame = CGRect(x: 40, y: 200, width: 300, height: 230)
    //
    //        // Set some of UIDatePicker properties
    //        //datePicker.timeZone = NSTimeZone.local
    //        datePicker.backgroundColor = UIColor.white
    //
    //        // Add an event to call onDidChangeDate function when value is changed.
    //        //datePicker.addTarget(self, action: "datePickerValueChanged:", forControlEvents: .ValueChanged)
    //
    //        // Add DataPicker to the view
    //        self.view.addSubview(datePicker)
    //        let doneButton = UIButton()
    //        doneButton.setTitle("Update", for: UIControlState.normal)
    //        doneButton.setTitleColor(UIColor.init(red: 117/255, green: 180/255, blue: 235/255, alpha: 1.0), for: UIControlState.normal)
    //        doneButton.frame = CGRect(x: -10, y: 400, width: 400, height: 25)
    //        self.view.addSubview(doneButton)
    //    }
    
}



