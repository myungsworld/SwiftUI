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
            
            InfoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("내 정보")
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
        Text("Main View")
        
    }
}

struct StoreView : View {
    var body : some View {
        Text("Store View")
    }
}

struct InfoView : View {
    
    @EnvironmentObject var user : User
    
    var body : some View {
        Text("\(user.name)")
    }
}
