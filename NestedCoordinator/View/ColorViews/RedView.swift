//
//  RedView.swift
//  NestedCoordinator
//
//  Created by Mauricio Posada Murillo on 2/02/25.
//

import SwiftUI

struct RedView: View {
    
    @Environment(\.colorsCoordinator) var colorsCoordinator: ColorsCoordinator
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            List {
                Button {
                    colorsCoordinator.push(page: .green)
                } label: {
                    Text("Page")
                }
                Button {
                    colorsCoordinator.present(sheet: .blue)
                } label: {
                    Text("Sheet")
                }
                Button {
                    colorsCoordinator.present(cover: .yellow)
                } label: {
                    Text("Cover")
                }
                Button {
                    dismiss()
                } label: {
                    Text("Pop")
                }
                .navigationTitle("Red")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
