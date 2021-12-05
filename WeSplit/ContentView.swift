//
//  ContentView.swift
//  WeSplit
//
//  Created by Ken Muyesu on 30/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
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
                
                Button ("Tap Count: \(tapCount)") {
                    self.tapCount += 1
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
