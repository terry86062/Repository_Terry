//
//  ViewController.swift
//  FunFacts
//
//  Created by 黃偉勳 Terry on 2019/1/11.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var assignmentLabel: UILabel!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    let assignmentTextProvider = AssignmentTextProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
        assignmentLabel.text = assignmentTextProvider.randomText()
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
        assignmentLabel.text = assignmentTextProvider.randomText()
    }
    
}

