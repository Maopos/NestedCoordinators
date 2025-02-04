//
//  AppleView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct AppleView: View {
    
    @Environment(\.fruitsCoordinator) var fruitsCoordinator: FruitsCoordinator
    
    var body: some View {
        List {
            Button {
                fruitsCoordinator.push(page: .banana)
            } label: {
                Text("Page")
            }
            Button {
                fruitsCoordinator.present(sheet: .pear)
            } label: {
                Text("Sheet")
            }
            Button {
                fruitsCoordinator.present(cover: .watermelon)
            } label: {
                Text("Cover")
            }
            Button {
                fruitsCoordinator.present(sheet: .colorsCoordinator)
            } label: {
                Text("Colors")
            }
            .navigationTitle("Apple")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
