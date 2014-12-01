//
//  ViewController.swift
//  PRCSVExportSwift
//
//  Created by EPH133 on 01/12/14.
//  Copyright (c) 2014 PREMKUMAR. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBAction func Export(sender: AnyObject)
    {
        
        var userId = NSMutableArray(objects: "1","2","3","4","5")
        var userName = NSMutableArray(objects:"PREM","KUMAR","VINOTH","KANNAN","PETER")

        var userQualification = NSMutableArray(objects: "MSc.Cs","MBA","MCA","BBM","BSC")

        var userEmail = NSMutableArray(objects: "premkumar.winner@gmail.com","test@gmail.com","test1@gmail.com","h","test2@gmail.com")

        var variablesArray = NSArray(objects: userId,userName,userQualification,userEmail)
        
        var keyArray = NSArray(objects: "ID","Name","Qualification","Email")
        
        var csvFileName : NSString = "UserDetails.csv"
        
       
        [PRCSVExport .exportCsvFileName(csvFileName, keyArray: keyArray, variableArray: variablesArray)]
        
        
        
        
    }
    
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

