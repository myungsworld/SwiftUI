//
//  TabBar.swift
//  Tutorials
//
//  Created by myungsworld on 2020/09/26.
//

import SwiftUI

struct TabBar : View {
    var body : some View {
        
        Home()
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

struct Home: View {
    
    @State  var selectedTab = "Home"
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        VStack(spacing : 0) {
            GeometryReader{_ in
                ZStack{
                    //...Tabs
                    
                }//ZStack
                
            }//GeometryReader
            
            HStack(spacing : 0) {
                ForEach(tabs,id: \.self){tab in
                    TabButton(title: tab, selectedTab: $selectedTab)
                    
                    if tab != tabs.last{
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal,30)
            // 아이폰 8 이나 SE 를 위한 설정
            .padding(.bottom,edges!.bottom == 0 ? 15 : edges!.bottom)
        }//VStack
        .ignoresSafeArea(.all,edges: .bottom)
        .background(Color.black.opacity(0.06).ignoresSafeArea(.all, edges: .all))
    }
}

struct TabButton : View {
    
    var title : String
    @Binding var selectedTab : String
    var body : some View {
        Button(action: {
            withAnimation{selectedTab = title}
        }) {
            VStack(spacing : 6){
                
                // Top indicator
                
                // 탭을 눌렀을때 보여지는 표시
                CustomShape()
                    .fill(Color("tint").opacity(selectedTab == title ? 1 : 0))
                    .frame(width: 45, height: 6)
                    .padding()
                
                Image(title)
                    .renderingMode(.template)
                    .resizable()
                    .foregroundColor(selectedTab == title ? Color("tint") : Color.black.opacity(0.2))
                    .frame(width: 24, height: 24)
                Text(title)
                    .font(.caption)
                    .foregroundColor(Color.black.opacity(selectedTab == title ? 0.6 : 0.2))
            }
        }
    }
}


//탭 눌렀을때 위에 선으로 표시

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 10, height: 10))
        return Path(path.cgPath)
    }
}

var tabs = ["Home","Jumak","Menu","Coupon"]


