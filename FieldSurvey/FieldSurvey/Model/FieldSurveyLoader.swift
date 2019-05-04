//
//  FieldSurveyLoader.swift
//  FieldSurvey
//
//  Created by Graeson Bullington on 5/2/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import Foundation

class FieldSurveyLoader {
    
    
    class func load(jsonFileName: String) -> FieldSurvey? {
        var fieldSurvey: FieldSurvey?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldSurvey = try? jsonDecoder.decode(FieldSurvey.self, from: jsonData)
        
        }
        
        return fieldSurvey
    }
}
