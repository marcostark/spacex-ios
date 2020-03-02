//
//  ContentView.swift
//  Space-X-IOS
//
//  Created by Marcos on 01/03/20.
//  Copyright © 2020 Marcos Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.launchers) { launch in
                NavigationLink(destination: Text(launch.mission_name)) {
                    HStack {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .cornerRadius(40)
                        VStack(alignment: .leading) {
                            Text(launch.mission_name)
                            Text(launch.rocket.rocket_name)
                        }
                    }
                }
            }
            .navigationBarTitle("Space X - APP")
        }
        .onAppear{
            self.networkManager.fectData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//extension UIImageView {
//    func load(url: URL) {
//        DispatchQueue.global().async { [weak self] in
//            if let image = UIImage(data: data) {
//                DispatchQueue.main.async {
//                    self?.image = image
//                }
//            }
//        }
//    }
//}
