//
//  ViewController.swift
//  terry_week3_assignment
//
//  Created by 黃偉勛 Terry on 2019/1/21.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentSwitch()
    }
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        segmentSwitch()
    }
    
    func segmentSwitch() {
        guard let segment = Segment(rawValue: segmentedControl.selectedSegmentIndex) else {
            fatalError()
        }
        
        checkLabel.textColor = segment.labelColor
        
        checkTextField.backgroundColor = segment.textFieldColor
        checkTextField.isUserInteractionEnabled = segment.interaction
    }
    
    @IBAction func button(_ sender: UIButton) {
        if let segment = Segment(rawValue: segmentedControl.selectedSegmentIndex), segment == .login {
            loginCheck()
        } else {
            signupCheck()
        }
        accountTextField.text = ""
        passwordTextField.text = ""
        checkTextField.text = ""
    }
    
    func loginCheck() {
        if accountTextField.text == "appwork_school@gmail.com", passwordTextField.text == "1234" {
            print("success")
        } else {
            showAlertWith(title: "Error", message: "Login fail")
        }
    }
    
    func signupCheck() {
        guard accountTextField.text != "" else {
            showAlertWith(title: "Error", message: "Account should not be empty.")
            return
        }
        guard passwordTextField.text != "" else {
            showAlertWith(title: "Error", message: "Password should not be empty.")
            return
        }
        guard checkTextField.text != "" else {
            showAlertWith(title: "Error", message: "Check Password should not be empty.")
            return
        }
        guard passwordTextField.text == checkTextField.text else {
            showAlertWith(title: "Error", message: "Signup fail")
            return
        }
        
        print("success")
    }
    
    func showAlertWith(title: String, message: String, style: UIAlertController.Style = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

