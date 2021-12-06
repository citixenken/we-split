//
//  ContentView.swift
//  WeSplit
//
//  Created by Ken Muyesu on 30/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    //    Example Code snippets
    
    //    @State private var tapCount = 0
    //    @State private var name = ""
    //
    //    let progLanguages = ["Bash", "Java", "Kotlin", "Swift", "Java", "R"]
    //    @State private var selectedLanguage = "Swift"
    //
    //    var body: some View {
    //        NavigationView {
    //            Form {
    //                Section {
    //                    Text("We Split").padding()
    //                    Text("We Split").padding()
    //                    Text("We Split").padding()
    //                    Text("We Split").padding()
    //                    Text("We Split").padding()
    //
    //                }
    //                Section {
    //                    Text("We Splot").padding()
    //                    Text("We Splot").padding()
    //                    Text("We Splot").padding()
    //
    //                }
    //                Section {
    //                    Button ("Tap Count: \(tapCount)") {
    //                        self.tapCount += 2
    //                    }
    //                }
    //                Section {
    //                    TextField("Enter your name: ", text: $name)
    //                    Text("Hello \(name); Hope you're enjoying iOS development")
    //                }
    //
    //                Section {
    ////                    ForEach(1..<6) { number in
    ////                        Text("We're at count: \(number)")
    ////                    }
    //                    ForEach(1..<6) {
    //                        Text("We're at count number: \($0)")
    //                    }
    //                }
    //
    //                Section {
    //                    Picker("Select your favourite language: ", selection: $selectedLanguage) {
    //                        ForEach(progLanguages, id: \.self) {
    //                            Text($0)
    //                        }
    //                    }
    //                }
    //            }
    //            .navigationTitle("We Split")
    //            .navigationBarTitleDisplayMode(.inline)
    //        }
    //    }
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 7
    
    let tipPercentages = [1, 5, 10, 15, 20, 0]
    
    @FocusState private var amountIsFocused: Bool
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
        
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    //TextField("Enter total cost", value: $totalAmount, format: .currency(code: "KSH"))
                    TextField("Total cost", value: $checkAmount, format:
                                    .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach (tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                } header: {
                    Text("Amount Per Person")
                }
                
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
