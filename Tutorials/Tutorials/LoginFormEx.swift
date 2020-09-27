//
//  LoginFormEx.swift
//  Tutorials
//
//  Created by myungsworld on 2020/09/25.
//

import SwiftUI

struct LoginFormEx: View {
    
    
    @State private var id = ""
    @State private var name = ""
    @State private var password1 = ""
    @State private var password2 = ""
    @State private var phoneNum = ""
    @State private var hidden = false
    var song = "song"
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section {
                        
                    TextField("ID", text : self.$id )
                        .padding()
                        
                    SecureField("Passwoord", text : self.$password1)
                        .padding()
                        
                    SecureField("Check your password", text : self.$password2)
                        .padding()
                        
                    }//Section1
                    Section {
                        
                        TextField("Write your Name", text : self.$name)
                            .padding()
                        
                        TextField("Phone number", text : self.$phoneNum)
                            .padding()
                        
                    }//Section2

                }//Form
                
                NavigationLink(destination: Loop()) {
                    Text("Sign In")
                      .font(.headline)
                      .foregroundColor(.white)
                      .padding()
                      .frame(width: 300, height: 50)
                      .background(Color.green)
                      .cornerRadius(15.0)
                  }.padding([.leading, .trailing], 27.5)
                
                .navigationBarTitle(Text("Sign In"),displayMode: .inline)
                
            }//VStack
            
        }//NavigationView
    }
}




struct LoginFormEx_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormEx()
    }
}
