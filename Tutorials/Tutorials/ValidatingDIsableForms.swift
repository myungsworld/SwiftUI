//
//  ValidatingDIsableForms.swift
//  Tutorials
//
//  Created by myungsworld on 2020/10/05.
//

import SwiftUI

struct ValidatingDIsableForms: View {
    
    @State var username = ""
    @State var email = ""

    var disableForm : Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        
        Form {
            Section {
                TextField("username", text : $username  )
                TextField("email", text : $email)
            }
            Section {
                Button("Create account") {
                    print("Creating account...")
                }
            }
            .disabled(disableForm)
        }
        
    }
}

struct ValidatingDIsableForms_Previews: PreviewProvider {
    static var previews: some View {
        ValidatingDIsableForms()
    }
}
