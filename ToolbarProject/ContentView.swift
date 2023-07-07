//
//  ContentView.swift
//  ToolbarProject
//
//  Created by AS on 7/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresenting: Bool = false
    
    var body: some View {
        NavigationView {
            Text("Initial View")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            isPresenting = true
                        } label: {
                            Image(systemName: "gear")
                        }

                    }
                }
        }
        .sheet(isPresented: $isPresenting) {
            NavigationView {
                Text("Settings Page")
                    .toolbar {
                        ToolbarItem {
                            Button("Save") {}
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
