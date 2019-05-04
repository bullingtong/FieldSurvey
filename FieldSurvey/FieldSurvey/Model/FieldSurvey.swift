//
//  FieldSurvey.swift
//  FieldSurvey
//
//  Created by Graeson Bullington on 5/2/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import Foundation

enum Classification: String, Codable{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
}


    struct FieldSurveys: Codable{
        var classification: Classification
        var title: String
        var description: String
        var date: Date
    }

    struct FieldSurvey: Codable {
        var status: String
        var observations: [FieldSurveys]
    }

