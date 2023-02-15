//
//  ContentView.swift
//  お題
//
//  Created by 松尾健司 on 2023/02/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var odai = "odai"
        let shuffle = shuffle()
        VStack{
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("お題")
                .font(.system(size: 100,weight:.black,design: .default))
            Spacer()
            Text(odai)
                .font(.system(size: 200,weight:.black,design: .default))
            Spacer()
            Button("START", action:{
//                odai = "b"
//                print(odai)
                //????次回ここから上手く入らない
                self.odai = shuffle.random()
                
            })
                .frame(width: 200,height: 100)
                .font(.system(size: 50))
        }
        .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
