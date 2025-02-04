//
//  ColorsCoordinatorView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 4/02/25.
//


import SwiftUI

struct ColorsCoordinatorView: View {
    
    @State private var coordinator = ColorsCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            ColorsCoordinatorPage.red
                .navigationDestination(for: ColorsCoordinatorPage.self) { $0 }
                .sheet(item: $coordinator.sheet) { $0 }
                .fullScreenCover(item: $coordinator.cover) { $0 }
        }
        .environment(\.colorsCoordinator, coordinator)
    }
}
