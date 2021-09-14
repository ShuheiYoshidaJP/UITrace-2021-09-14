//
//  ContentView.swift
//  UITrace-2021-09-14
//
//  Created by 吉田周平 on 2021/09/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedSymbol = 0
    
    var symbolList = [
        "sun.min",
        "sunrise",
        "moon",
        "cloud",
        "wind",
        "tornado"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "chevron.down")
                })
                VStack(alignment: .leading) {
                    Text("Pick Up from")
                        .foregroundColor(.secondary)
                    Text("3023 HollyWood (cross.....")
                        .fontWeight(.bold)
                }
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "slider.horizontal.3")
                })
            }
            .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: true, content: {
                HStack {
                    ForEach(symbolList, id: \.self) { symbol in
                        Image(systemName: symbol)
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                }
                
            })
            .padding(.horizontal)
            Text("Burgers")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                .font(.callout)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            Card()
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("mac")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text("AAAAAAAAAAA")
                    .font(.title)
                    .fontWeight(.bold)
                Text("BBBBBBBBBBBBBBBB")
                    .foregroundColor(.secondary)
                Spacer()
                    .frame(height: 24)
                Text("Fee")
                    .fontWeight(.bold)
                Text("col")
            }
            .padding(.leading)
        }
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.secondary, lineWidth: 1)
        )
    }
}
