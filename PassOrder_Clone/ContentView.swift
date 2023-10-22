//
//  ContentView.swift
//  PassOrder_Clone
//
//  Created by ChoiKwangWoo on 2023/10/10.

import SwiftUI

struct ContentView: View {
    @State var searchName: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("검색어를 입력하세요.", text: $searchName)
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
                    print("쿠폰함 Tab")
                }
                VStack {
                    Image(systemName: "p.circle")
                    Text("포인트/스탬프")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("포인트 Tab")
                }
                VStack {
                    Image(systemName: "bell")
                    Text("알림")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("알림 Tab")
                }
                VStack {
                    Image(systemName: "house")
                    Text("적립마켓")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("적립마켓 Tab")
                }
                VStack {
                    Image(systemName: "gift")
                    Text("선물하기")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                }
                .onTapGesture {
                    print("선물하기 Tab")
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
