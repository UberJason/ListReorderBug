//
//  ContentView.swift
//  Questlog
//
//  Created by Jason Ji on 5/3/20.
//  Copyright © 2020 Jason Ji. All rights reserved.
//

import SwiftUI

class Model: ObservableObject {
    @Published var items: [Item]
    
    init(items: [Item]) {
        self.items = items
        updateQuestStatuses()
    }
    
    func updateQuestStatuses() {
        items = items.sorted(by: { $0.status.rank > $1.status.rank })
    }
}

struct ListView: View {
    @StateObject var model: Model
    @State var selectedQuest: Item?
    
    var body: some View {
        NavigationView {
            List {
                ForEach($model.items, id: \.id) { $item in
                    NavigationLink(destination: DetailView(item: $item, onUpdate: { [unowned model] in model.updateQuestStatuses() })) {
                        HStack {
                            Circle()
                                .foregroundColor(item.status.color)
                                .frame(width: 8, height: 8)

                            Text(item.title)
                        }
                    }
                }
            }
            .frame(width: 350)
        }
        .background(Color(NSColor.textBackgroundColor))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

}

struct QuestListView_Previews: PreviewProvider {
    static let items = [
           Item(title: "Someone Review Our Artifacts", status: .active)
       ]
    static var previews: some View {
        ListView(model: Model(items: items))
    }
}
