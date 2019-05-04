//
//  FieldSurveyViewController.swift
//  FieldSurvey
//
//  Created by Graeson Bullington on 5/2/19.
//  Copyright © 2019 Graeson Bullington. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldSurveyTableView: UITableView!
    
    let jsonFileName = "field_observations"
    
    var fieldSurvey: FieldSurvey?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.fieldSurveyTableView.rowHeight = 60.0
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldSurvey = FieldSurveyLoader.load(jsonFileName: jsonFileName)
       
        
        
//        if fieldSurvey == nil {
//            presentMessage(message: "Unable to load and parse \(jsonFileName).json")
//        }

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurvey?.observations.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = fieldSurveyTableView.dequeueReusableCell(withIdentifier: "fieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell,
            let fieldSurveys = fieldSurvey?.observations[indexPath.row] {
            cell.classificationIconImageView.image = UIImage(named: fieldSurveys.classification.rawValue)
            cell.classificationLabel.text = fieldSurveys.title
            cell.dateLabel.text = dateFormatter.string(from: fieldSurveys.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            let selectedIndexPath = fieldSurveyTableView.indexPathForSelectedRow {
            destination.fieldSurveys = fieldSurvey?.observations[selectedIndexPath.row]
            
        }
    }
    
//    func presentMessage(message: String){
//        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//        present(alertController, animated: true, completion: nil)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
