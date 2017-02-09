//
//  GregarianCalendar.swift
//  Date Difference
//
//  Created by Samrudhi Nayak on 4/27/16.
//  Copyright © 2016 Samrudhi Nayak. All rights reserved.
//

import UIKit

class GregarianCalendar: NSObject {
    var fday: Int
    var sday: Int
    var fmonth: Int
    var smonth: Int
    var fyear: Int
    var syear: Int
    //constructor for the class
    init(first_day: Int, second_day: Int, first_month: Int, second_month: Int, first_year: Int, second_year: Int)
    {
        self.fday = first_day
        self.sday = second_day
        self.fmonth = first_month
        self.smonth = second_month
        self.fyear = first_year
        self.syear = second_year
    }
    //function to calculate the date difference
    func DateCalc(first_day: Int, second_day: Int, first_month: Int, second_month: Int, first_year: Int, second_year: Int)->Int
    {
        var result = 0
        var days1 = 0
        var days2 = 0
        var fmonth = first_month
        var fyear = first_year
        var fday = first_day
        var smonth = second_month
        var sday = second_day
        var syear =  second_year
        //if the month is less than 3, reduce the year by 1 and add those months to the month
        if fmonth <= 2
        {
            fmonth = fmonth + 12
            fyear = fyear - 1
        }
        if smonth <= 2
        {
            smonth = smonth + 12
            syear = syear - 1
        }
        //calculate the number of days for each date and find the difference between them by factoring in leap years
        days1 = (365*fyear) + (fyear/4) - (fyear/100) + (fyear/400) + fday + ((153 * fmonth + 8) / 5)
        days2 = (365*syear) + (syear/4) - (syear/100) + (syear/400) + sday + ((153 * smonth + 8) / 5)
        //result is absolute as user can enter first date greater than second or vice versa
        result = abs(days1 - days2)
        return result
    }

}
