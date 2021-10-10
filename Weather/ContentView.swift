//
//  ContentView.swift
//  Weather
//
//  Created by Saury Pande on 02.10.21.
//

import SwiftUI
//import XCTest

struct ContentView: View {
    @StateObject var model = ContentViewModel()
    let newYork = City(name: "New York", lat: 30, lon: 30)
    
    var body: some View {
        //foreground layer
        NavigationView{
            CityOverview(city: newYork)
                .navigationBarHidden(true)
                .background(
                    Color.blue
                        .opacity(0.2)
                        .ignoresSafeArea())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
