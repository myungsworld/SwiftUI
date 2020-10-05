//
//  ShwoingAndHidingViews.swift
//  Tutorials
//
//  Created by myungsworld on 2020/10/05.
//

import SwiftUI

struct SecondView : View {
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body : some View {
        Button("Dismiss") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct PresentationView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet){
            SecondView()
        }
    }
}

struct PresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationView()
    }
}
