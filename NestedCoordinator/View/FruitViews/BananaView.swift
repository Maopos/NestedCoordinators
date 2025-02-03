//
//  BananaView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct BananaView: View {
    
    @Environment(\.fruitsCoordinator) var fruitsCoordinator: FruitsCoordinator
    
    var body: some View {
        List {
            Button {
                fruitsCoordinator.pop()
            } label: {
                Text("Pop")
            }
            .navigationTitle("Banana")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
