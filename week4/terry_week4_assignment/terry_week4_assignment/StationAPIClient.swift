//
//  StationAPIClient.swift
//  terry_week4_assignment
//
//  Created by 黃偉勛 Terry on 2019/1/28.
//  Copyright © 2019 Terry. All rights reserved.
//

import Foundation

class StationAPIClient {
    
    let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
    
    let decoder = JSONDecoder()
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func getStation(completionHandler completion: @escaping (Station?, Error?) -> Void) {
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, StationError.requestFailed)
                        return
                    }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let station = try self.decoder.decode(Station.self, from: data)
                            completion(station, nil)
                        } catch {
                            completion(nil, StationError.parsingFailure)
                        }
                    } else {
                        completion(nil, StationError.responseUnsuccessful(statusCode: httpResponse.statusCode))
                    }
                    
                } else {
                    completion(nil, error)
                }
                
                
            }
        }
        
        
        task.resume()
    }
    
    
}
