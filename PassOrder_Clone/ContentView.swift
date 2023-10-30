//
//  ContentView.swift
//  PassOrder_Clone
//
//  Created by ChoiKwangWoo on 2023/10/10.

import SwiftUI

struct ContentView: View {
    @State var searchName: String = ""
    @State var showGaOpenShop: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("검색어를 입력하세요.", text: $searchName)
                // searchName의 value -> $searchName.wrappedValue
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
            HStack {
                VStack {
                    Text("패스머니 기능 OPEN")
                    Text("빠르게 혜택을 쌓는법 패스머니")
                }
                Spacer()
                Image(systemName: "flame")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }.padding(.horizontal, 15.0)
            .background(Color.blue).scrollContentBackground(.hidden)
            
            Spacer()
            
            VStack {
                HStack {
                    VStack {
                        Text("XXX 님과")
                        Text("가까이 있는 매장이에요!")
                    }
                    Spacer()
                    Text("패스 뱃지")
                }
                HStack {
                    Toggle(isOn: $showGaOpenShop) {
                        Text("가오픈 매장 보기")
                    }
                    
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
