//
//  MainViewController.swift
//  Sa3i
//
//  Created by Ahmad Shalabi on 09/08/2021.
//

import UIKit

class MainViewController: UIViewController {

    var segmentIndex: Int = 0

    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func Roll(_ sender: Any) {
        
        let vc = (UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController)
        vc.segmentIndex = segmentIndex
        vc.closure = { [weak self] segmentIndex in
            self!.segmentIndex = segmentIndex
            switch segmentIndex {
            // easy
            case 0:
                self!.displayText.text = "test1"
            // medium
            case 1:
                self!.displayText.text = "test2"
            // hard
            case 2:
                self!.displayText.text = "test3"
            default:
               break
            }
        }
        self.present(vc, animated: true, completion: nil)
    
    }
    
}
