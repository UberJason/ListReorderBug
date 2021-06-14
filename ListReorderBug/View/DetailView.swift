//
//  DetailView.swift
//  Questlog
//
//  Created by Jason Ji on 5/5/20.
//  Copyright © 2020 Jason Ji. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Binding var item: Item
    let onUpdate: () -> ()
    
    var body: some View {
        Button("Change It") {
            item.status = .waiting
            onUpdate()
        }
    }
}


struct QuestDetailView_Previews: PreviewProvider {
    @State static var item = Item(title: "Receipt Handoff", status: .idle)
    
    static var previews: some View {
        DetailView(item: Binding.constant(item)) { }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
