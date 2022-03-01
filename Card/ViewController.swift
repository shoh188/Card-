//
//  ViewController.swift
//  Card
//
//  Created by Shokhrukh Egamov on 20.02.2022.
//

import UIKit
import CardScanner

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var resultsLabel: UILabel!

    @IBAction func scanPaymentCard(_ sender: Any) {
        
        // Add NSCameraUsageDescription to your Info.plist
        let scannerView = CardScanner.getScanner { card, date, cvv in
            self.resultsLabel.text = "\(String(describing: card)) \(String(describing: date)) \(String(describing: cvv))"
        }
        present(scannerView, animated: true, completion: nil)
    }
}
