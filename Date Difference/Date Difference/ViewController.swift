//
//  ViewController.swift
//  Date Difference
//
//  Created by Samrudhi Nayak on 4/22/16.
//  Copyright © 2016 Samrudhi Nayak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //initializing and attaching the GUI to the code
    @IBOutlet weak var messageOutputLabel: UITextField!
    @IBOutlet weak var second_year: UITextField!
    @IBOutlet weak var second_day: UITextField!
    @IBOutlet weak var second_month: UITextField!
    @IBOutlet weak var first_year: UITextField!
    @IBOutlet weak var first_day: UITextField!
    @IBOutlet weak var first_month: UITextField!
    @IBOutlet weak var lable1: UILabel!
    //function to implement what happens when the button is clicked
    @IBAction func myButtonfunc(sender: AnyObject) {
        print("button pressed")
        let fday = Int(first_day.text!)
        let sday = Int(second_day.text!)
        let fmonth = Int(first_month.text!)
        let smonth = Int(second_month.text!)
        let syear = Int(second_year.text!)
        let fyear = Int(first_year.text!)
        //flag to check for inaccurate values entered
        var flag = 0
        //messageOutputLabel.sizeToFit()
        messageOutputLabel.text="Button has been pressed "
        //to check if no value is entered
        if fmonth == nil || smonth == nil || fday == nil || sday == nil || fyear == nil || syear == nil {
            messageOutputLabel.text="Please enter a correct value"
            flag = 1
        }
        else {
            //to validate the entries for each entry in the first date
        switch fmonth! {
        case 1,3,5,7,8,10,12:
            if fday! > 31
            {
            messageOutputLabel.text="Inaccurate number of days for the month"
                flag = 1
            }
        case 4,6,9,11:
            if fday! > 30
            {
                messageOutputLabel.text="Inaccurate number of days for the month"
                 flag = 1
                
            }
        case 2:
            if (fyear! % 100 != 0) && (fyear! % 4 == 0) && (fyear! % 400 != 0)
            {
                if fday! > 29
                {
                messageOutputLabel.text="Inaccurate number of days for the month of Feb"
                     flag = 1
                }
            }
            else
            {
                if fday! > 28
                {
                    messageOutputLabel.text="Inaccurate number of days for the month of Feb"
                     flag = 1
                }
            }
        default:
            messageOutputLabel.text="Please enter a correct value"
            flag=1
        }
            //to validate each entry in the second date
        switch smonth! {
        case 1,3,5,7,8,10,12:
            if sday! > 31
            {
                messageOutputLabel.text="Inaccurate number of days for the month"
                 flag = 1
            }
        case 4,6,9,11:
            if sday! > 30
            {
                messageOutputLabel.text="Inaccurate number of days for the month"
                 flag = 1
                
            }
        case 2:
            if (syear! % 100 != 0) && (syear! % 4 == 0) && (syear! % 400 != 0)
            {
                if sday! > 29
                {
                    messageOutputLabel.text="Inaccurate number of days for the month of Feb"
                     flag = 1
                }
            }
            else
            {
                if sday! > 28
                {
                    messageOutputLabel.text="Inaccurate number of days for the month of Feb"
                     flag = 1
                }
            }
        default:
            messageOutputLabel.text="Please enter a correct value"
            flag = 1
        }
        }
        //if no inaccurate data is found
        if flag == 0 {
            //create an object of the class
            var dateObj = GregarianCalendar(first_day: fday!, second_day: sday!, first_month: fmonth!, second_month: smonth!, first_year: fyear!, second_year: syear!)
            //variable to take in the value of the date difference returned by the GregarianCalendar class
            var datedifference = 0
            //call to the function that calculates date difference
            datedifference = dateObj.DateCalc(fday!, second_day: sday!, first_month: fmonth!, second_month: smonth!, first_year: fyear!, second_year: syear!)
            //convert the date difference from int to string to display
            var stringdifference = String(datedifference)
            //display the result
            messageOutputLabel.text = "Date difference is : " + stringdifference
            
        }
        
    }

}
