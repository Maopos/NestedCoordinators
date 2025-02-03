//
//  PearView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct PearView: View {
    
    @Environment(\.fruitsCoordinator) var fruitsCoordinator: FruitsCoordinator
    
    var body: some View {
        List {
            Button {
                fruitsCoordinator.popSheet()
            } label: {
                Text("Pop")
            }
            .navigationTitle("Pear")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
