//
//  ViewController.swift
//  introduce
//
//  Created by Won Jun Cho on 11/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextInput: UITextField!
    @IBOutlet weak var lastTextInput: UITextField!
    @IBOutlet weak var schoolTextInput: UITextField!
    @IBOutlet weak var petNumber: UILabel!
    @IBOutlet weak var segmentYear: UISegmentedControl!
    @IBOutlet weak var morePetSwitch: UISwitch!
    @IBOutlet weak var petStepper: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didPetStepperChange(_ sender: UIStepper) {
        petNumber.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduce(_ sender: Any) {
        let year = segmentYear.titleForSegment(at: segmentYear.selectedSegmentIndex)
        let introduction = "My name is \(firstTextInput.text!) \(lastTextInput.text!) and I attend \(schoolTextInput.text!). I am currently in my \(year!) year and I own \(petNumber.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
}

