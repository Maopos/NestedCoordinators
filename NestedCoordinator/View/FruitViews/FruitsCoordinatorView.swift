//
//  FruitsCoordinatorView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct FruitsCoordinatorView: View {
    
    @State private var coordinator = FruitsCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            FruitsCoordinatorPage.apple
                .navigationDestination(for: FruitsCoordinatorPage.self) { $0 }
                .sheet(item: $coordinator.sheet) { $0 }
                .fullScreenCover(item: $coordinator.cover) { $0 }
        }
        .environment(\.fruitsCoordinator, coordinator)
    }
}

#Preview {
    FruitsCoordinatorView()
}
