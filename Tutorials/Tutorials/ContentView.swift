//
//  ContentView.swift
//  Tutorials
//
//  Created by myungsworld on 2020/09/23.
//

import SwiftUI

//class User : ObservableObject {
//    @Published var name = ""
//}



struct ContentView: View {
    
    
    @State private var name = ""
    @State private var tapCount = 0
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    //읽기만 할때는 \(), 읽고 쓸때는 $
                    TextField("Write your name", text: $name )
                    Text("Hello, \(name)")

                }
                Section {
                    TextField("Amount ",
                        text : $checkAmount)
                        .keyboardType(.decimalPad)
                }
                Section {
                    Text("\(checkAmount)")
                        
                }
                Button("Count \(tapCount)"){
                    self.tapCount += 1
                }
                NavigationLink(destination: TabBar2()){
                    Text("button")
                }
            }
            .navigationBarTitle(Text("KNU COIN"), displayMode: .inline)
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }

