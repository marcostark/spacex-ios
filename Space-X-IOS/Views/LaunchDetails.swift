//
//  LaunchDetails.swift
//  Space-X-IOS
//
//  Created by Marcos on 01/03/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import SwiftUI

struct LaunchDetails: View {
    
    let details: String
    
    var body: some View {
        Text(details)
    }
}

struct LaunchDetails_Previews: PreviewProvider {
    static var previews: some View {
        LaunchDetails(details: "Hello world!")
    }
}
