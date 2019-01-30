//
//  ViewController.swift
//  terry_week4_assignment
//
//  Created by 黃偉勛 Terry on 2019/1/28.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    let client = StationAPIClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStation()
    }
    
    func displayStation(station: Station) {
        self.stationIDLabel.text = station.stationID
        self.stationNameLabel.text = station.stationName
        self.addressLabel.text = station.stationAddress
    }
    
    func getStation() {
        client.getStation() { [unowned self] station, error in
            if let station = station {
                self.displayStation(station: station)
            } else if let error = error {
                switch error {
                case StationError.requestFailed:
                    print(StationError.requestFailed)
                    return self.showAlertWith(title: "Connect failed")
                case StationError.responseUnsuccessful(let statusCode):
                    print("Response Unsuccessful: \(statusCode)")
                    return self.showAlertWith(title: "Connect failed")
                case StationError.parsingFailure:
                    print(StationError.parsingFailure)
                    return self.showAlertWith(title: "Connect failed")
                default:
                    print(error)
                    return self.showAlertWith(title: "Connect failed")
                }
            }
            
        }
    }
    
    func showAlertWith(title: String, message: String = "", style: UIAlertController.Style = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

