//
//  SettingsViewController.swift
//  Sa3i
//
//  Created by Ahmad Shalabi on 09/08/2021.
//

import UIKit

class SettingsViewController: UIViewController {

    var segmentIndex: Int = 0
    
    var closure: ((_ segmentIndex: Int) -> ())?
    
    @IBOutlet weak var levelPick: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.levelPick.selectedSegmentIndex = self.segmentIndex

    }
    
    @IBAction func levelPickAction(_ sender: Any) {
        
        guard let closure = self.closure else {
            return
        }
        closure(levelPick.selectedSegmentIndex)
    }
    
}
