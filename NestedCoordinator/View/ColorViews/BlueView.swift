//
//  BlueView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct BlueView: View {
    
    @Environment(\.colorsCoordinator) var colorsCoordinator: ColorsCoordinator
    
    var body: some View {
        VStack {
            List {
                Button {
                    colorsCoordinator.popSheet()
                } label: {
                    Text("Pop")
                }
                .navigationTitle("Blue")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
