//
//  ContentView.swift
//  PassOrder_Clone
//
//  Created by ChoiKwangWoo on 2023/10/10.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("검색어를 입력하세요.", text: $name)
            }
            .padding([.leading, .bottom], 30.0)
            
            HStack(spacing: 50) {
                VStack {
                    Image(systemName: "sun.min")
                    Text("쿠폰함")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("aaaa")
                }
                VStack {
                    Image(systemName: "p.circle")
                    Text("포인트/스탬프")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("aaaa")
                }
                VStack {
                    Image(systemName: "bell")
                    Text("알림")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("aaaa")
                }
                VStack {
                    Image(systemName: "house")
                    Text("적립마켓")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("aaaa")
                }
                VStack {
                    Image(systemName: "gift")
                    Text("선물하기")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("aaaa")
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
