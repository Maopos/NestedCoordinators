//
//  GreenView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct GreenView: View {
    
    @Environment(\.colorsCoordinator) var colorsCoordinator: ColorsCoordinator
    
    var body: some View {
        VStack {
            List {
                Button {
                    colorsCoordinator.pop()
                } label: {
                    Text("Pop")
                }
                .navigationTitle("Green")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
