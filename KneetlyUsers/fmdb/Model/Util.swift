//
//  Util.swift
//  DemoProject
//
//  Created by Krupa-iMac on 24/07/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

import UIKit

let rootVC = UIApplication.shared.keyWindow?.rootViewController

let alert = UIAlertController(title: "", message:"", preferredStyle: .alert)
let action = UIAlertAction(title: "OK", style: .default) { _ in
    // Put here any code that you would like to execute when
    // the user taps that OK button (may be empty in your case if that's just
    // an informative alert)
}

class Util: NSObject {
    
    class func getPath(fileName: String) -> String {
        
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        //let fileURL = documentsURL.URLByAppendingPathComponent(fileName)
        
        
        let fileURL = documentsURL.appendingPathComponent(fileName as String)
        
        return fileURL.path
    }
    
    class func copyFile(fileName: NSString) {
        let dbPath: String = getPath(fileName: fileName as String)
        let fileManager = FileManager.default
        if !fileManager.fileExists(atPath: dbPath) {
            
            let documentsURL = Bundle.main.resourceURL
            //let fromPath = documentsURL!.URLByAppendingPathComponent(fileName as String)
            
            let fromPath = documentsURL!.appendingPathComponent(fileName as String)
            
            var error : NSError?
            do {
                try fileManager.copyItem(atPath: fromPath.path, toPath: dbPath)
            } catch let error1 as NSError {
                error = error1
            }
            
            if (error != nil) {
                alert.title = "Error Occurred"
                alert.message = error?.localizedDescription
            } else {
                alert.title = "Successfully Copied"
                alert.message = "Your database copied successfully"
            }
            alert.addAction(action)
            rootVC?.present(alert, animated: true){}
        }
    }
    
    class func invokeAlertMethod(strTitle: NSString, strBody: NSString, delegate: AnyObject?) {
        alert.message = strBody as String
        alert.title = strTitle as String
        alert.addAction(action)
        rootVC?.present(alert, animated: true){}
    }
   
}
