//
//  YellowView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct YellowView: View {
    
    @Environment(\.colorsCoordinator) var colorsCoordinator: ColorsCoordinator
    
    var body: some View {
        VStack {
            List {
                Button {
                    colorsCoordinator.popCover()
                } label: {
                    Text("Pop")
                }
                .navigationTitle("Yellow")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
