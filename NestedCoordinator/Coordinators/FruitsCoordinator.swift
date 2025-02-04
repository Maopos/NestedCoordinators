//
//  FruitsCoordinator.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

enum FruitsCoordinatorPage: Hashable, View {
    case apple
    case banana
    
    var body: some View {
        switch self {
        case .apple:
            AppleView()
        case .banana:
            BananaView()
        }
    }
}

enum FruitsCoordinatorSheet: String, Identifiable, View {
    var id: String { self.rawValue }
    
    case pear
    case colorsCoordinator
    
    var body: some View {
        switch self {
        case .pear:
            PearView()
        case .colorsCoordinator:
            ColorsCoordinatorView()
        }
    }
}

enum FruitsCoordinatorCover: String, Identifiable, View {
    var id: String { self.rawValue }
    
    case watermelon
    
    var body: some View {
        switch self {
        case .watermelon:
            WatermelonView()
        }
    }
}

extension EnvironmentValues {
    @Entry var fruitsCoordinator = FruitsCoordinator()
}

@Observable
class FruitsCoordinator {
    
    var path: NavigationPath = NavigationPath()
    var sheet: FruitsCoordinatorSheet?
    var cover: FruitsCoordinatorCover?
    
    func push(page: FruitsCoordinatorPage) {
        path.append(page)
    }
    
    func pop(last: Int = 1) {
        path.removeLast(last)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func present(sheet: FruitsCoordinatorSheet) {
        self.sheet = sheet
    }
    
    func present(cover: FruitsCoordinatorCover) {
        self.cover = cover
    }
    
    func popSheet() {
        self.sheet = nil
    }
    
    func popCover() {
        self.cover = nil
    }
}
