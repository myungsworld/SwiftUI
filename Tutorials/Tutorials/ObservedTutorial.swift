//
//  ObservedTutorial.swift
//  Tutorials
//
//  Created by myungsworld on 2020/10/05.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ObservedTutorial: View {
    
    @ObservedObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName).")
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
    }
}

struct ObservedTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ObservedTutorial()
    }
}
