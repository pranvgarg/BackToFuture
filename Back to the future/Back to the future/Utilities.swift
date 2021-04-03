//
//  Utilities.swift
//  Back to the future
//
//  Created by Pranav Garg on 25/09/20.
//  Copyright © 2020 Pranav Garg. All rights reserved.
//

import Foundation

class Utilities {
    
    func GetCurrentYear () -> String {
        let date = Date()
        let calender = Calendar.current
        return String(calender.component(.year, from: date))
    }
    
    func GetLetterAtIndex (str: String, location: Int) -> String{
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
        
    }
    
    func GetCurrentTime() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        
        let timeString = formatter.string(from: date)
        return timeString
    }
    
    func GetRandomYear() -> String {
        
        return String(arc4random_uniform(8999) + 1000)
        
    }
}
