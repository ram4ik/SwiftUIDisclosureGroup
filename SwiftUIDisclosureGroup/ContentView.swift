//
//  ContentView.swift
//  SwiftUIDisclosureGroup
//
//  Created by Ramill Ibragimov on 24.06.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggleOne = false
    @State private var isToggleTwo = false
    @State private var isExpanded = false
    
    var body: some View {
        NavigationView {
            List {
                DisclosureGroup("Items", isExpanded: $isExpanded) {
                    Toggle("One", isOn: $isToggleOne)
                    Toggle("Two", isOn: $isToggleTwo)
                }
                
                if isToggleOne {
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Navigate")
                        })
                }
            }.listStyle(InsetGroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
