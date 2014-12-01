PRCSVExportSwift
================

This is Easy integration Swift code! You can Export your Array to CSV file with 2 easy steps.

1. Drag and Drop PRCSVExport.swift file to your Project.

2 . Create Array Like fillowing Example.

        var userId = NSMutableArray(objects: "1","2","3","4","5")
        var userName = NSMutableArray(objects:"PREM","KUMAR","VINOTH","KANNAN","PETER")

        var userQualification = NSMutableArray(objects: "MSc.Cs","MBA","MCA","BBM","BSC")

        var userEmail = NSMutableArray(objects: "premkumar.winner@gmail.com","test@gmail.com","test1@gmail.com","h","test2@gmail.com")

        var variablesArray = NSArray(objects: userId,userName,userQualification,userEmail)
        
        var keyArray = NSArray(objects: "ID","Name","Qualification","Email")
        
        var csvFileName : NSString = "UserDetails.csv"
    
4.  Add Following code
    
     [PRCSVExport .exportCsvFileName(csvFileName, keyArray: keyArray, variableArray: variablesArray)]


![alt tag](http://oi60.tinypic.com/24nnyau.jpg)
