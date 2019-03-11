//
//  HouseViewController.swift
//  Week2
//
//  Created by Duy Nguyen on 11/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    var person: Person?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if person != nil {
            nameLabel.text = "Name: \(person!.name)"
            ageLabel.text = "Age: \(person!.age)"
            houseLabel.text = "House: \(person!.house)"
            
            switch self.person!.house {
                case "Lannister":
                    view.backgroundColor = UIColor(red: 0.52, green: 0.03, blue: 0.86, alpha: 1.0)
                default:
                    view.backgroundColor = UIColor.white
            }
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
