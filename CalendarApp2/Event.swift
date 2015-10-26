//
//  Event.swift
//  CalendarApp2
//
//  Created by Julian Leong on 10/25/15.
//
//

import UIKit

class Event{
    var name: String
    var date: String
    
    init? (name: String, date: String) {
        self.name = name
        self.date = date
        
        if name.isEmpty || date.isEmpty{
            return nil 
        }
    }
}
