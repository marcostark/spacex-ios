//
//  NetworkManager.swift
//  Space-X-IOS
//
//  Created by Marcos on 01/03/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var launchers = [LatestLaunch]()
    
    func fectData() {
        if let url = URL(string: "https://api.spacexdata.com/v3/launches/past") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            var results = try decoder.decode(Array<LatestLaunch>.self, from: safeData)
                            //print(results)
                            DispatchQueue.main.async {
                                self.launchers = results
                                print(self.launchers)
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
