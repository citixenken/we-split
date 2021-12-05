//
//  ContentView.swift
//  WeSplit
//
//  Created by Ken Muyesu on 30/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("We Split").padding()
                    Text("We Split").padding()
                    Text("We Split").padding()
                    Text("We Split").padding()
                    Text("We Split").padding()
                   
                }
                Section {
                    Text("We Splot").padding()
                    Text("We Splot").padding()
                    Text("We Splot").padding()
                    
                }
            }
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
