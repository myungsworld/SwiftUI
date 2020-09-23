//
//  tutorials2.swift
//  Tutorials
//
//  Created by myungsworld on 2020/09/23.
//

import SwiftUI

struct Loop: View {
    
    let students = ["Harry","Hermione", "Ron"]
    @State private var selectedStudent = "Ron"
    
    var body: some View {

        Picker("Select your student",selection: $selectedStudent) {
                ForEach( 0 ..< students.count){
                        Text(self.students[$0])
            }
        }
        
        Form {
            ForEach( 0 ..< 5) {
                Text("Row \($0)")
            }
            
        }
        
    }
}
struct Loop_previews: PreviewProvider {
    static var previews: some View {
        Loop()
        }
    }

