//
//  WatermelonView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct WatermelonView: View {
    
    @Environment(\.fruitsCoordinator) var fruitsCoordinator: FruitsCoordinator
    
    var body: some View {
        List {
            Button {
                fruitsCoordinator.popCover()
            } label: {
                Text("Pop")
            }
            .navigationTitle("Watermelon")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
