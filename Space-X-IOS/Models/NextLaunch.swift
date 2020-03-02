//
//  NextLaunch.swift
//  Space-X-IOS
//
//  Created by Marcos on 01/03/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import Foundation

struct LatestLaunch: Decodable, Identifiable {
    var id: String {
        return flight_number
    }
    let flight_number: String
    let mission_name: String
    let launch_year: String
    let links: Links
}

struct Links: Decodable {
    let video_link: String
}
