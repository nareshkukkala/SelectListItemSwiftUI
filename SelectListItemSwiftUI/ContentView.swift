//
//  ContentView.swift
//  SelectListItemSwiftUI
//
//  Created by naresh kukkala on 01/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex: Int?
    
    var body: some View {
        
        VStack {
            List {
                ForEach(1...10, id: \.self) { index in
                    HStack {
                        Text("\(index)")
                        Spacer()
                    }
                    .contentShape(Rectangle())
                    .onTapGesture(perform: {
                        selectedIndex = index
                    })
                }
            }
            
            selectedIndex.map {
                Text("\($0)")
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
