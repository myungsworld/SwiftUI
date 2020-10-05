//
//  PopUp.swift
//  Tutorials
//
//  Created by myungsworld on 2020/10/05.
//

import SwiftUI

struct PopUp: View {
    
    @State var disableAlert = false
    @State var password = ""
    
    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                Button(action: {
                        alertView()
                    
                }) {
                    Text("disableAlert")
                }
                Text(password)
            }
        }
    }
    
    func alertView() {
        let alert = UIAlertController(title: "Login", message: "password", preferredStyle: .alert)
        
        alert.addTextField{ (pass) in
            
            pass.isSecureTextEntry = true
            pass.placeholder = "password"
        }
        
        let login = UIAlertAction(title: "Login", style: .default) { (_) in
            
            password = alert.textFields![0].text!
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive) { (_) in}
        
        alert.addAction(cancel)
        alert.addAction(login)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {})
    }
}

struct PopUp_Previews: PreviewProvider {
    static var previews: some View {
        PopUp()
    }
}
