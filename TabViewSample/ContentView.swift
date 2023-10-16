//
//  ContentView.swift
//  TabViewSample
//
//  Created by Yusuke Hasegawa on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Int = 0
    
    var body: some View {
        VStack {
            
            TabView(selection: $currentTab) {
                PageView(index: 1).tag(0)
                PageView(index: 2).tag(1)
                PageView(index: 3).tag(2)
            }
            .frame(maxHeight: .infinity)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: currentTab)
            
            HStack(spacing: 32) {
                Button("Page.1") {
                    currentTab = 0
                }
                .padding()
                .background {
                    if currentTab == 0 {
                        Color.init(white: 0.8)
                    } else {
                        Color.clear
                    }
                }
                Button("Page.2") {
                    currentTab = 1
                }
                .padding()
                .background {
                    if currentTab == 1 {
                        Color.init(white: 0.8)
                    } else {
                        Color.clear
                    }
                }
                
                Button("Page.3") {
                    currentTab = 2
                }
                .padding()
                .background {
                    if currentTab == 2 {
                        Color.init(white: 0.8)
                    } else {
                        Color.clear
                    }
                }
            }
            
        }
        .padding()
    }
}

struct PageView: View {
    
    var index: Int
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Page.\(index)")
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
