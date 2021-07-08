//
//  Person.swift
//  TableViewAndCell
//
//  Created by Daniel Washington Ignacio on 06/07/21.
//

import Foundation

enum Gender: String {
    
    case male = "male"
    case female = "female"
}

class Person{
    
    var name: String?
    var surname: String?
    var year: Int?
    var gender: Gender?
    
    
    init(name: String?, surname: String, year: Int?, gender: Gender?) {
        self.name = name
        self.surname = surname
        self.year = year
        self.gender = gender
    }
    
}
