//
//  ViewController.swift
//  homeWork8
//
//  Created by NAZGUL on 28/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userImageView.layer.cornerRadius = 45
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToEditUsername" {
        let vc = segue.destination as! EditUserNameViewController
        vc.title = "Edit Username"
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (animated)
        if let username =  UserDefaults.standard.value(forKey: "usernameKey") as? String {
            usernameLabel.text = username
        }
        if let color =  UserDefaults.standard.value(forKey: "redColor") as? String {
            if color == "red"{
                view.backgroundColor = UIColor.red
            }
        }
        if let Yellow =  UserDefaults.standard.value(forKey: "yellowColor") as? String {
                if Yellow == "Yellow" {
                    view.backgroundColor = UIColor.yellow
                 }
                }
        if let greencolor =  UserDefaults.standard.value(forKey: "greenColor") as? String {
                    if greencolor == "green" {
                        view.backgroundColor = UIColor.green
                     }
                }
        }
    @IBAction func resertButton(_ sender: Any) {
        usernameLabel.text=""
        view.backgroundColor = UIColor.white
    }
}
   
