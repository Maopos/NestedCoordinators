//
//  ColorsCoordinator.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

enum ColorsCoordinatorPage: Hashable, View {
    case red
    case green
    
    var body: some View {
        switch self {
        case .red:
            RedView()
        case .green:
            GreenView()
        }
    }
}

enum ColorsCoordinatorSheet: String, Identifiable, View {
    var id: String { self.rawValue }
    
    case blue
    
    var body: some View {
        switch self {
        case .blue:
            BlueView()
        }
    }
}

enum ColorsCoordinatorCover: String, Identifiable, View {
    var id: String { self.rawValue }
    
    case yellow
    
    var body: some View {
        switch self {
        case .yellow:
            YellowView()
        }
    }
}

extension EnvironmentValues {
    @Entry var colorsCoordinator = ColorsCoordinator()
}

@Observable
class ColorsCoordinator {
    
    var path: NavigationPath = NavigationPath()
    var sheet: ColorsCoordinatorSheet?
    var cover: ColorsCoordinatorCover?
    
    func push(page: ColorsCoordinatorPage) {
        path.append(page)
    }
    
    func pop(last: Int = 1) {
        path.removeLast(last)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func present(sheet: ColorsCoordinatorSheet) {
        self.sheet = sheet
    }
    
    func present(cover: ColorsCoordinatorCover) {
        self.cover = cover
    }
    
    func popSheet() {
        self.sheet = nil
    }
    
    func popCover() {
        self.cover = nil
    }
}
