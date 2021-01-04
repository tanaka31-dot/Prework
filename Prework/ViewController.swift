//
//  ViewController.swift
//  Prework
//
//  Created by Tanaka Muchemwa on 1/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        //print("Hello from Tanaka!")
        textLabel.textColor = UIColor.orange
    }
        
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red 
    }
    
    @IBAction func didTapChangeStringButton(_ sender: Any) {
        if textField.text == " " {
            textLabel.text = "Goodbye 👋🏻"
        } else {
            textLabel.text = textField.text
            textField.text = " "
            view.endEditing(true)
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Tanaka!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.white
    }
}

