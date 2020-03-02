//
//  LatestLaunch.swift
//  Space-X-IOS
//
//  Created by Marcos on 01/03/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import Foundation

struct LatestLaunch: Decodable, Identifiable {
    var id: Int {
        return flight_number
    }
    let flight_number: Int
    let mission_name: String
    let launch_year: String
    let links: Links
    let rocket: Rocket
}

struct Links: Decodable {
    let video_link: String
    let mission_patch_small: String
}

struct Rocket: Decodable {
    let rocket_id: String
    let rocket_name: String
    let rocket_type: String
}

struct Details: Decodable {
    let details: String
}
