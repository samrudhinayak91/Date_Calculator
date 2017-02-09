//
//  File.swift
//  Date Difference
//
//  Created by Samrudhi Nayak on 4/22/16.
//  Copyright © 2016 Samrudhi Nayak. All rights reserved.
//

import Foundation
class GregorianCalendar{
    var first_day: Int
    var first_month: Int
    var first_year: Int
    var second_day: Int
    var second_month: Int
    var second_year: Int
    
    init(first_day: Int,second_day: Int,first_month: Int,second_month: Int,first_year: Int,second_year: Int)
    {
    self.first_day = first_day
    self.second_day = second_day
    self.first_month = first_month
    self.second_month = second_month
    self.first_year = first_year
    self.second_year = second_year
    }
    
