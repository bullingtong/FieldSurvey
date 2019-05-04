//
//  FieldSurveyDetailViewController.swift
//  FieldSurvey
//
//  Created by Graeson Bullington on 5/2/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var dateFormatter = DateFormatter()
    
    var fieldSurveys: FieldSurveys?
    
    @IBOutlet weak var fieldSurveyImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let fieldSurveys = fieldSurveys {
            fieldSurveyImageView.image = UIImage(named: fieldSurveys.classification.rawValue)
            titleLabel.text = fieldSurveys.title
            dateLabel.text = dateFormatter.string(from: fieldSurveys.date)
            descriptionLabel.text = fieldSurveys.description
        }
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
