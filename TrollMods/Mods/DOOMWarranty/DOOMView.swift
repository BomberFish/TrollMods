//
//  DOOMView.swift
//  TrollMods
//
//  Created by Hariz Shirazi on 2023-01-08.
//

import SwiftUI

struct DOOMView: View {
    @State private var showInfo = false;
    var body: some View {
        VStack {
            Button("Replace the warranty page!", action: OverwriteWarranty)
                .controlSize(.large)
                .tint(.red)
                .buttonStyle(.bordered)
        }
        .navigationTitle("DOOMWarranty")
        .toolbar {
            Button(action: { showInfo = true }) {
                Image(systemName: "info.circle")
            }
            .alert(isPresented: $showInfo) {
                Alert(
                    title: Text("DOOMWarranty"),
                    message: Text("Developed by BomberFish. Thanks to iSource#3334 for documenting the warranty page.")
                )
            }
        }
    }
}

struct DOOMView_Previews: PreviewProvider {
    static var previews: some View {
        DOOMView()
    }
}
