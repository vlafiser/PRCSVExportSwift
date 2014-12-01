//
//  PRCSVExport.swift
//  PRCSVExportSwift
//
//  Created by EPH133 on 01/12/14.
//  Copyright (c) 2014 PREMKUMAR. All rights reserved.
//

import UIKit
import Foundation

class PRCSVExport: NSObject
{
   
    class func exportCsvFileName(fielName : NSString, keyArray:NSArray, variableArray:NSArray)->NSString
    {
        
        var myString: NSString = keyArray.componentsJoinedByString(",")
        var content: NSString =  "\(myString)\n"
        
        
        var AppendString : NSMutableString? = NSMutableString()
        
         var paths: NSArray = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true);
        
        var documentsDirectory : NSString = paths[0] as NSString
        
        var fileNameget = "\(documentsDirectory)/\(fielName)"
        
        AppendString?.appendString("\(content)")
        
        
        
     
        
        
        var a=0
        var b : Int = variableArray[0].count as Int
        
        
        for j in 0..<b
        {
            
            var teststring : NSMutableString = NSMutableString()
            
            var varArrayCount : Int = variableArray.count as Int
            
            
            
            
            for k in 0..<varArrayCount
            {
                
                
                
                var newVar = variableArray[k] as NSArray
                
                
                
               teststring.appendString("\(newVar[j]),")
            }
            
           
            var original : NSString  = "\(teststring)" as NSString
            
            println(original)
            
            var locationInt : NSRange = original.rangeOfString(",", options: NSStringCompareOptions.BackwardsSearch)
            
        
            
            
            
            var newStr : NSString = ""
            
            
           if(locationInt.location != NSNotFound)
           {
            newStr = "\(teststring)"
            
            
              newStr = newStr.stringByReplacingCharactersInRange(locationInt, withString: "\n")
            
            
            }
            
            println(newStr)
            
            AppendString?.appendString(newStr)
            
        }
        
        
        var err : NSErrorPointer = nil
        
        var encode = NSStringEncodingConversionOptions.AllowLossy
        
        
        AppendString?.writeToFile(fileNameget, atomically: false, encoding:NSUTF8StringEncoding, error: err)
        
               
        var alert = UIAlertView()
        alert.delegate = self
        alert.message = "Open your Application Folder And See the File"
        alert.title = "Export Successfully"
        alert.addButtonWithTitle("OK")
        alert.cancelButtonIndex = 0
        alert.show()
        
        
        return "Success"
    }
    
}
