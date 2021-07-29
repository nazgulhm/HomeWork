//
//  EditUserNameViewController.swift
//  homeWork8
//
//  Created by NAZGUL on 28/7/21.
//

import UIKit

class EditUserNameViewController: UIViewController {

    @IBOutlet weak var usernameTextFileld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.setValue(usernameTextFileld.text, forKey: "usernameKey")
        navigationController?.popViewController(animated: true)
    }
  
    @IBAction func saveRed(_ sender: Any) {
        UserDefaults.standard.setValue("red", forKey: "redColor")
        navigationController?.popViewController(animated: true)
    }
   
    @IBAction func saveYellow(_ sender: Any) {
        UserDefaults.standard.setValue("Yellow", forKey: "yellowColor")
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func saveGreen(_ sender: Any) {
        UserDefaults.standard.setValue("green", forKey: "greenColor")
        navigationController?.popViewController(animated: true)
    }
}
