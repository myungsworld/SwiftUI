//
//  TabBar2.swift
//  Tutorials
//
//  Created by myungsworld on 2020/09/26.
//

import SwiftUI

struct TabBar2: View {
    var body: some View {
        TabView{
            
 
            
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            
            StoreView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("상점 만들기")
                }
            
            SplitView()
                .tabItem {
                    Image(systemName: "person")
                    Text("더치페이")
                }

        }//TabView
        
        
    }
}

struct TabBar2_Previews: PreviewProvider {
    static var previews: some View {
        TabBar2()
    }
}

struct HomeView : View {
    var body : some View {
        VStack() {
            Text("com on")
            Text("two on")
        }
        
    }
}

struct StoreView : View {
    var body : some View {
        Text("Store View")
    }
}

struct SplitView : View {
    
    @State private var amount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    let tipPercentages = [0 , 10 , 15 ,20 ,25]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let ordererAmount = Double(amount) ?? 0
        let tipValue = ordererAmount / 100 * tipSelection
        let grandTotal = ordererAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var body : some View {
        NavigationView{
            Form {
                Section {
                    TextField("amount", text : $amount)
                    
                    Picker("Number of People", selection : $numberOfPeople) {
                        ForEach( 2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }//Section1
                
                Section(header: Text("How much tips do you want leave")){
                    Picker("Tip percentages", selection : $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section {
                    Text("\(totalPerPerson, specifier: "%.2f")$")
                }
            }
            .navigationBarTitle("WeSplit")
        }//NavigationView
        
    }
}
