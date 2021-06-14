//
//  ContentView.swift
//  ListReorderBug
//
//  Created by Jason Ji on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    let items = [
           Item(title: "Someone Review Our Artifacts", status: .active),
           Item(title: "Update Code Ownership of Files", status: .active),
           Item(title: "Regression 3.12.4", status: .active),
           Item(title: "Analysis Handoff", status: .idle),
           Item(title: "Benefits Analysis", status: .complete)
       ]
    
    var body: some View {
        ListView(model: Model(items: items))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
