//
//  ContentView.swift
//  BombGame
//
//  Created by 赤荻大輝 on 2023/02/15.
//

import SwiftUI

struct ContentView: View {
    let grids = [ GridItem(.adaptive(minimum: 102, maximum: .infinity))]
        
    var body: some View {
        LazyVGrid(columns: grids, alignment: .center, spacing: 40) {
            ForEach(1...18, id: \.self) { num in
                Ball(str: String(num))
                    .frame(width: 80, height:80)}
            }
            .padding()
        }
    }

struct Ball: View {
    @State var str: String

    var body: some View {
        ZStack {
            
            Button(action:{  Circle()
                .fill(Color.red)}) { Text(str)
                    .font(.title)
                    .foregroundColor(.white)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
