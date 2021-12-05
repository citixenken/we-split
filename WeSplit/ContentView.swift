//
//  ContentView.swift
//  WeSplit
//
//  Created by Ken Muyesu on 30/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    @State private var name = ""
    
    let progLanguages = ["Bash", "Java", "Kotlin", "Swift", "Java", "R"]
    @State private var selectedLanguage = "Swift"
    
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
                Section {
                    Button ("Tap Count: \(tapCount)") {
                        self.tapCount += 2
                    }
                }
                Section {
                    TextField("Enter your name: ", text: $name)
                    Text("Hello \(name); Hope you're enjoying iOS development")
                }
                
                Section {
//                    ForEach(1..<6) { number in
//                        Text("We're at count: \(number)")
//                    }
                    ForEach(1..<6) {
                        Text("We're at count number: \($0)")
                    }
                }
                
                Section {
                    Picker("Select your favourite language: ", selection: $selectedLanguage) {
                        ForEach(progLanguages, id: \.self) {
                            Text($0)
                        }
                    }
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
