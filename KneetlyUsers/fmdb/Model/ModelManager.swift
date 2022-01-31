//
//  ModelManager.swift
//  DataBaseDemo
//
//  Created by Krupa-iMac on 05/08/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

import UIKit

let sharedInstance = ModelManager()

class ModelManager: NSObject {
    
    var database: FMDatabase? = nil

    class func getInstance() -> ModelManager
    {
        if(sharedInstance.database == nil)
        {
            sharedInstance.database = FMDatabase(path: Util.getPath(fileName: "Data-07.db"))
        }
        return sharedInstance
    }
    
    func addStudentData(studentInfo: StudentInfo) -> Bool {
        sharedInstance.database!.open()
        let isInserted = sharedInstance.database!.executeUpdate("INSERT INTO KN1 (Email, Password,Phone) VALUES (?, ?, ?)", withArgumentsIn: [studentInfo.Email, studentInfo.Password,studentInfo.Phone])
        
        
        
        
        
        
        
        
        
        
        
       
        
        sharedInstance.database!.close()
        return isInserted
    }
   
    func updateStudentData(studentInfo: StudentInfo) -> Bool {
        sharedInstance.database!.open()
        
        if(studentInfo.firstName != ""){
    
        
        let isUpdated = sharedInstance.database!.executeUpdate("UPDATE KN1 SET firstName=?,LastName=?,dateofbirth=?,streetAddress=?, suburb=?,state=?,country=?, postcode=?  order by RollNo desc limit 1", withArgumentsIn: [studentInfo.firstName, studentInfo.LastName,studentInfo.dateofbirth,studentInfo.streetAddress,studentInfo.suburb,studentInfo.state,studentInfo.country,studentInfo.postcode, studentInfo.RollNo])
        
                sharedInstance.database!.close()
        
        return isUpdated
            
        }
        else if(studentInfo.carNickname != ""){

        
        
       let isUpdated = sharedInstance.database!.executeUpdate("UPDATE KN1 SET carNickname=?,carRegistration=?,carmake=?,carmodel=?, caryear=?  order by RollNo desc limit 1", withArgumentsIn: [studentInfo.carNickname, studentInfo.carRegistration,studentInfo.carmake,studentInfo.carmodel,studentInfo.caryear,studentInfo.RollNo])
        
        sharedInstance.database!.close()
        
            
            return isUpdated
        }
        
        else{
            
            
            let isUpdated = sharedInstance.database!.executeUpdate("UPDATE KN1 SET cardType=?,cardNumber=?,cardExpiry=?,cardCSV=?  order by RollNo desc limit 1", withArgumentsIn: [studentInfo.cardType, studentInfo.cardNumber,studentInfo.cardExpiry,studentInfo.cardCSV,studentInfo.RollNo])
            
            sharedInstance.database!.close()
            
            
            return isUpdated

            
            
        }

        return false
}

    
    

    
    
    
    func deleteStudentData(studentInfo: StudentInfo) -> Bool {
        sharedInstance.database!.open()
        let isDeleted = sharedInstance.database!.executeUpdate("DELETE FROM Register WHERE RollNo=?", withArgumentsIn: [studentInfo.RollNo])
        sharedInstance.database!.close()
        return isDeleted
    }

    func getAllStudentData() -> NSMutableArray {
        sharedInstance.database!.open()
        let resultSet: FMResultSet! = sharedInstance.database!.executeQuery("SELECT * FROM Register", withArgumentsIn: nil)
        let marrStudentInfo : NSMutableArray = NSMutableArray()
        if (resultSet != nil) {
            while resultSet.next() {
                let studentInfo : StudentInfo = StudentInfo()
                studentInfo.RollNo = resultSet.string(forColumn: "RollNo")
                studentInfo.Email = resultSet.string(forColumn: "Email")
                studentInfo.Password = resultSet.string(forColumn: "Password")
                studentInfo.Phone = resultSet.string(forColumn: "Phone")
                
                
                marrStudentInfo.add(studentInfo)
            }
        }
        sharedInstance.database!.close()
        return marrStudentInfo
    }

}
